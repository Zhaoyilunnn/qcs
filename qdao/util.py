
BITS = [
    1, 2, 4, 8,
    16, 32, 64, 128,
    256, 512, 1024, 2048,
    4096, 8192, 16384, 32768,
    65536, 131072, 262144, 524288,
    1048576, 2097152, 4194304, 8388608,
    16777216, 33554432, 67108864, 134217728,
    268435456, 536870912, 1073741824, 2147483648,
    4294967296, 8589934592, 17179869184, 34359738368,
    68719476736, 137438953472, 274877906944, 549755813888,
    1099511627776, 2199023255552, 4398046511104, 8796093022208,
    17592186044416, 35184372088832, 70368744177664, 140737488355328,
    281474976710656, 562949953421312, 1125899906842624, 2251799813685248,
    4503599627370496, 9007199254740992, 18014398509481984, 36028797018963968,
    72057594037927936, 144115188075855872, 288230376151711744, 576460752303423488,
    1152921504606846976, 2305843009213693952, 4611686018427387904, 9223372036854775808
]

MASKS = [
    0, 1, 3, 7,
    15, 31, 63, 127,
    255, 511, 1023, 2047,
    4095, 8191, 16383, 32767,
    65535, 131071, 262143, 524287,
    1048575, 2097151, 4194303, 8388607,
    16777215, 33554431, 67108863, 134217727,
    268435455, 536870911, 1073741823, 2147483647,
    4294967295, 8589934591, 17179869183, 34359738367,
    68719476735, 137438953471, 274877906943, 549755813887,
    1099511627775, 2199023255551, 4398046511103, 8796093022207,
    17592186044415, 35184372088831, 70368744177663, 140737488355327,
    281474976710655, 562949953421311, 1125899906842623, 2251799813685247,
    4503599627370495, 9007199254740991, 18014398509481983, 36028797018963967,
    72057594037927935, 144115188075855871, 288230376151711743, 576460752303423487,
    1152921504606846975, 2305843009213693951, 4611686018427387903, 9223372036854775807
]


def index0(qubits, k):
    """
    Used to find the start entry of an single matrix-vector multiplication
    E.g., an op is operating on qubit 0 and 2
     The indexes of states are as follows
     00000
     00001
     00010
     00011
     00100
     00101
     00110
     00111
     So the frist group is 00000,00001,00100,00101, we can see that the start
     is 00000, which is inserting 0 at index 0 and 2. Similarly the second group's 
     start is 00010, which is inserting 0 at index 0 and 2 to 1 
    Therefore, find the kth group's start is inserting 0 to k based on qubits.
    The algorithm works as follows
     1. A binary abcde, we want to add 0 to position 1, then it becomes abcd0e
     2. First, get e (i.e., the lowbits)
     3. Second, get abcd00 (i.e., abcde >>= 1 (abcd) and then <<= 2 (abcd00))
     4. Third, add lowbits using | (i.e., abcd00 | e = abcd0e)
    Reference:
     https://github.com/Qiskit/qiskit-aer/blob/main/src/simulators/statevector/indexes.hpp#L121

    Args:
        qubits (List): the qubits that are acted on
        k (int): the k-th group of state vectors that are operated on
    
    Returns:
        int: the first index of the k-th group of elements

    """
    lowbits = 0
    retval = k

    for j in range(len(qubits)):
        lowbits = retval & MASKS[qubits[j]]
        # Start: insert zero and make all lowbits zero
        retval >>= qubits[j]
        retval <<= (qubits[j]+1)
        # End
        retval |= lowbits

        return retval


def indexes(qubits, k):
    """
    Get the indexes that an op operate on
    E.g., qubits = [1, 3], k = 0, ==> [00000,00010,01000,01010]
                           k = 1, ==> [00001,00011,01001,01011]
    Explanation: TODO: Add doc link 

    Args:
        qubits (List): the qubits that are acted on
        k (int): the k-th group of state vectors that are operated on
    
    Returns:
        list[int]: List of indexes of k-th state group
    """
    num_qubits = len(qubits)
    num_indexes = BITS[num_qubits]
    ret = list()
    for i in range(num_indexes):
        if i == 0:
            ret.append(index0(qubits, k))
        else:
            ret.append(0)

    for i in range(num_qubits):
        # `n`: number of states
        # that can be deduced from previous half
        n = BITS[i]
        # `bias`: index pattern repeat from bias + start
        bias = BITS[qubits[i]];
        for j in range(n):
            ret[n+j] = ret[j] | bias
    
    return ret
