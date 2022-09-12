#include "framework/circuit.h"

namespace circ {

Circuit::Circuit() {}

// Circuit::Circuit(const std::vector<op::Op>& ops) : Circuit() {
// 
// }
//
//

void Circuit::initialize() {
    init_q_map();
    set_ops_super_qubits();
}

// TODO: Maybe we can replace std::map and std::set
//      and use a more elegant way
void Circuit::init_q_map() {
    if (ops.empty()) {
        return;
    }
    if (!q_map.empty()) {
        q_map.clear();
    }
    if (!org_qubits.empty()) {
        org_qubits.clear();
    }
    // std::unordered_set<uint_t> q_set;
    std::set<uint_t> q_set;
    for (const auto& op : ops) {
        for (auto& q : op.qubits) {
            q_set.insert(q);
        }
    }    

    uint_t super_index = 0;
    for (auto it = q_set.begin(); it != q_set.end(); ++it) {
        org_qubits.push_back(*it);
        q_map.insert(std::make_pair(*it, super_index++));
    }
}

void Circuit::print_q_map() const {
    if (q_map.empty()) {
        return;
    }
    for (auto it = q_map.begin(); it != q_map.end(); ++it) {
        std::cout << it->first << ": " << it->second << std::endl; 
    }
}

void Circuit::set_ops_super_qubits() {
    if (q_map.empty()) {
        // TODO: log warning
        return;
    }
    for (auto& op : ops) {
        op.set_super_qubits(q_map);
    }
}

uint_t Circuit::get_super_qubit(uint_t q) const {
    if (q_map.empty()) {
        return -1;
    }
    auto it = q_map.find(q);
    if (it == q_map.end()) {
        // TODO: log warning
        return -1;
    }
    return it->second;
}

//std::map<uint_t, uint_t>& Circuit::get_q_map() {
//    return q_map;
//}
//
//std::vector<uint_t> Circuit::get_org_qubits() const {
//    return org_qubits;
//}

// TODO
void to_json() {

}

void from_json(const json& js, Circuit& circ) {
    if (js.find("instructions") != js.end()) {
        circ.ops = js["instructions"].get<std::vector<op::Op>>();
    }

    // Currently circ must be inited here
    circ.initialize();
}

void print_circ(Circuit& circ) {
    for (auto& op: circ.ops) {
        json js;
        op::to_json(op, js);
        std::cout << js.dump() << std::endl;
        //std::cout << op.name << std::endl;
    }
}


}

