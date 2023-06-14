from test.qvm import QvmBaseTest

from qvm.util.quafu_helper import to_qiskit_backend_v1


class TestQuafuHelper(QvmBaseTest):

    def test_to_qiskit_backend_v1(self):
        from quafu.users.userapi import User


        user = User()
        user.get_backends_info()
        backends = user.get_available_backends()
        chip_info = backends['ScQ-P10'].get_chip_info()

        backend = to_qiskit_backend_v1(chip_info["full_info"])
