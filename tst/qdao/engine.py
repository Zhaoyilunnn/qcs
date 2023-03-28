import copy
from time import time
import numpy as np

from qiskit.compiler import transpile
from qiskit.quantum_info import Statevector

from qdao.test import QdaoBaseTest
from qdao.engine import Engine
from qdao.util import retrieve_sv


class TestEngine(QdaoBaseTest):


    def test_pre_postprocessing(self):
        circ = self.get_small_bench_circ("random", num_qubits=8, depth=20, measure=False)
        circ = transpile(circ, self._sv_sim)

        engine = Engine(circuit = circ, num_primary=6, num_local=2)

        sub_circs = engine._part.run(engine._circ)

        res = engine._sim.run(sub_circs[0].circ).result()
        sv = res.get_statevector()
        engine._postprocess(sub_circs[0], 0, sv)

        sv_load, _ = engine._preprocess(sub_circs[0], 0)
        print(sub_circs[0].circ)

        assert sv == sv_load

    def test_run(self, nq):
        NQ = int(nq)
        NP = NQ - 2
        NL = NQ - 10

        circ = self.get_small_bench_circ("random", num_qubits=NQ, depth=9, measure=False)
        circ = transpile(circ, self._sv_sim)
        #circ.global_phase = 0

        engine = Engine(circuit=circ, num_primary=NP, num_local=NL, is_parallel=True)
        st = time()
        engine.run()
        print("Qdao runs: {}".format(time() - st))
        sv = retrieve_sv(NQ, num_local=NL)
        engine.print_statistics()
        engine._manager.print_statistics()

        circ.save_state()
        st = time()
        sv_org = self._sv_sim.run(circ).result().get_statevector().data
        print("Qiskit runs: {}".format(time() - st))
        assert Statevector(sv).equiv(Statevector(sv_org))
