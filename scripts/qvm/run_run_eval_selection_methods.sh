for q in $(seq 3 10); do for i in $(seq 1 20); do bash scripts/qvm/run_eval_selection_methods.sh /root/projects/QASMBench/small/ $q FakeBrooklyn 4; done | tee logs/qvm/integration/frp/eval_selection/${q}-q_20_times.log; done
