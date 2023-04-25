from typing import Optional
import numpy as np

from qiskit_aer import Aer
from mqt import ddsim


class QiskitSimulator:

    def __init__(
            self,
            provider: Optional[str]=None,
            fusion: Optional[bool]=False
        ) -> None:
        if provider:
            if provider == 'ddsim':
                self._sim = ddsim.DDSIMProvider().get_backend('qasm_simulator')
        else:
            self._sim = Aer.get_backend("aer_simulator")

        self._sim.set_options(fusion_enable=fusion)

    def run(self, simobj) -> np.ndarray:

        res = self._sim.run(simobj.circ).result()
        return res.get_statevector().data

