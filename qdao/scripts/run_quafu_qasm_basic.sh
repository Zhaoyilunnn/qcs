ll qdao/benchmarks/qasm/*.qasm | grep -v fusion | grep -v random | awk -F'/' '{print $NF}' | awk -F '-' '{print $1"\t"$2}' | awk -F'.' '{print $1}' | while read bench nq; do pytest -s -k test_run_quafu_qasm_basic tst/qdao/engine.py --bench $bench --nq $nq; done
