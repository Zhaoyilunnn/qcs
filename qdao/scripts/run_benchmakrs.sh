bench_list=(\
    head_1000_circuit_n28_m14_s5_e6_pEFGH.qasm
    head_1000_circuit_n30_m14_s7_e6_pEFGH.qasm
    random_28_25_max_operands_2_gen.qasm
    random_30_27_max_operands_2_gen.qasm
    qnn_n31.qasm
    qnn_n29.qasm
    graph_state-30.qasm
    hidden_linear_function-30.qasm
    qft-30.qasm
    iqp-30.qasm
    vqe_n28.qasm
    vqe_n30.qasm\
)

n_list=(\
    28
    30
    28
    30
    31
    29
    30
    30
    30
    30
    28
    30\
)

N=${#n_list[@]}


if [ $# -ne 2 ]; then
    mode=no_parallel # no_parallel or parallel
    version=qiskit
else
    mode=$1
    version=$2
fi

res_dir=logs/qdao/shuguang/${mode}/${version}/$(date +%s)
mkdir -p $res_dir

for i in $(seq 0 $((N-1))); do
    NQ=${n_list[${i}]}
    NP=$((NQ-2))
    NL=22
    bench_name=${bench_list[$i]}
    pytest -s -k test_run_${version}_any_qasm \
        tst/qdao/engine.py \
        --nq $NQ --np $NP --nl $NL --qasm ${bench_name} |
        tee ${res_dir}/${bench_name}.log
done
