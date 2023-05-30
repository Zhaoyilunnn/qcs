from qiskit.circuit import QuantumCircuit
from constants import QDAO_QASM_DIR
from qdao.circuit import BasePartitioner, BaselinePartitioner, StaticPartitioner
from test.qdao import QdaoBaseTest


class TestBasePartitioner(QdaoBaseTest):

    _part = BasePartitioner()

    def test_gen_sub_circ(self):
        """Testing generation of sub-circuits"""
        circ = self.get_qiskit_circ("random")
        print(circ)
        sub_instrs = circ.data[0:4]
        sub_circ = self._part._gen_sub_circ(circ, sub_instrs)
        print(sub_circ.circ, sub_circ.real_qubits)


class TestBaselinePartitioner(QdaoBaseTest):

    _part = BaselinePartitioner(np=6, nl=2)

    def test_run(self):
        circ = self.get_qiskit_circ("random",
                num_qubits=8, depth=20, measure=False)
        print(circ)

        sub_circs = self._part.run(circ)
        print("Number of sub-circuits: {}".format(len(sub_circs)))
        print("Number operations in original circuit: {}".format(len(circ)))

        assert len(circ) == len(sub_circs)

        sum_ops_sub_circs = sum([len(s.circ) for s in sub_circs])
        assert sum_ops_sub_circs == len(circ) + len(sub_circs)


class TestStaticPartitioner(QdaoBaseTest):

    _part = StaticPartitioner(np=6, nl=2)


    def test_run(self):

        circ = self.get_qiskit_circ("random",
                num_qubits=8, depth=20, measure=False)
        print(circ)

        sub_circs = self._part.run(circ)
        print("Number of sub-circuits: {}".format(len(sub_circs)))
        print("Number operations in original circuit: {}".format(len(circ)))

        sum_ops_sub_circs = sum([len(s.circ) for s in sub_circs])
        assert sum_ops_sub_circs == len(circ) + len(sub_circs)

    def test_run_any_qasm(self, nq, np, nl, qasm):
        """Run for given qasm"""

        NQ = int(nq)
        NP = int(np)
        NL = int(nl)

        try:
            circ = QuantumCircuit.from_qasm_file(QDAO_QASM_DIR + qasm)
        except Exception as e:
            print(f"Load from qasm file failed for {qasm}, error: {e}")
            return
        self._part = StaticPartitioner(np=NP, nl=NL)
        sub_circs = self._part.run(circ)
        print("Number of sub-circuits: {}".format(len(sub_circs)))
        print("Number operations in original circuit: {}".format(len(circ)))

        sum_ops_sub_circs = sum([len(s.circ) for s in sub_circs])
        assert sum_ops_sub_circs == len(circ) + len(sub_circs)

    def test_run_same(self):
        """Testing when circuit size is equal to sub-circ size"""
        circ = self.get_qiskit_circ("random",
                num_qubits=6, depth=20, measure=False)
        print(circ)

        sub_circs = self._part.run(circ)
        print(sub_circs[0].circ)
        circ.save_state()
        print(circ)
        assert sub_circs[0].circ == circ
