ll -d ~/projects/QASMBench/medium/*/*.qasm | grep -v transpiled | grep -v vqe | grep -v bwt | awk '{print $NF}' | while read qasm; do python bench.py --mode qasm --qasm-file ${qasm} --run 0 --backend fake; done | tee logs/qvm/observation/compile_vs_runtime/result.txt
