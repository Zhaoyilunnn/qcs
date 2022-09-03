#ifndef __SV_STATEVECTOR_H__
#define __SV_STATEVECTOR_H__

#include "statevector/chunk.h"

namespace sv {

/*
 * A StateVector is a manager to control chunks and circuits.
 * Chunks may be stored in secondary storage
 * TODO: Should have a storage manager providing save/load 
 * The StateVector should only operate on one chunk in primary storage
 * TODO: We should have a `Hyper Logical` qubits.
 *       E.g., Consider an op on qubits 3,6,7,20, when it maps to 
 *       primary storage, the qubits looks like: 0,1,2,3 
 *
 * */
class StateVector {
public:
    void print();

    // TODO: 
    // 1. At cluster level we perform logical qubit <-> hyper logical qubit conversion
    // 2. Maintain a map from logical to hyperlogical
    void apply_cluster();

    // TODO:
    // 1. Only see the chunk in primary storage
    // 2. 
    void apply_op();

private:
    Chunk _chunk; 

};

} // namespace sv

#endif
