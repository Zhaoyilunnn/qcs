for q in 16 18 20 22 24; do ./bin/simulator -qobj_file ../test/data/unitary_random_28_26_${q}_inst.json -nq 28 -np 26 -nl $q -io_only true | tee ../exp/random_breakdown_new/io.random.28.26.${q}.log; done
