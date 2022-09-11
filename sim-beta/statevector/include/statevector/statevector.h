#ifndef __SV_STATEVECTOR_H__
#define __SV_STATEVECTOR_H__

#include "statevector/chunk.h"

namespace sv {


// A StateVector is a manager to control chunks and circuits.
// Chunks may be stored in secondary storage
// TODO: Should have a storage manager providing save/load 
// The StateVector should only operate on one chunk in primary storage
// TODO: We should have a `Super Logical` qubits.
//       E.g., Consider an op on qubits 3,6,7,20, when it maps to 
//       primary storage, the qubits looks like: 0,1,2,3 
// 
class StateVector {
public:
    void print();

    StateVector();
    ~StateVector();

    uint_t num_local_sub_chunks() const;

    // Set some private member values, maybe used for test only
    void set_local_qubits(uint_t num_local_qubits);

    // TODO:
    // 1. Set three numbers of qubits (see private members)
    void initialize();

    // Load/store based on current cluster and local qubits
    // E.g. (Local qubits = 2)
    //  chunks: 00000 ~ 00011
    //          00100 ~ 00111
    //          01000 ~ 01011
    //          ...
    //  When we have a qubit operating on q0, q1, q3, then chunk in 
    //  primary storage is:
    //          00000 ~ 00011
    //          01000 ~ 01011
    //  So the index mapping from primary to secondary is
    //          0 : 0
    //          1 : 2
    //  Which is actually 1ULL << (q - local_qubits)
    void load();
    void store(const std::vector<uint_t>& org_qubits);

    // TODO: 
    // 1. At cluster level we perform logical qubit <-> hyper logical qubit conversion
    // 2. Maintain a map from logical to hyperlogical
    void apply_cluster();

    // TODO:
    // 1. Only see the chunk in primary storage
    // 2. 
    void apply_op();
    
    // Apply a multi-controlled single-qubit unitary gate
    void apply_mcu();
private:
    Chunk _chunk; 

    uint_t _num_qubits;         // Number of qubits in total

    uint_t _num_primary;        // Number of qubits in primary storage (memory)
    
    uint_t _num_local;          // Number of qubits per micro-chunk in storage (both primary and secondary)
};

} // namespace sv

#endif
