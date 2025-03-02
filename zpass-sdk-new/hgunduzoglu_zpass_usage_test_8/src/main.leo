import hgunduzoglu_zpass_merkle_8.aleo;
// The 'hgunduzoglu_zpass_usage_test_8' program.
program hgunduzoglu_zpass_usage_test_8.aleo {
    transition verify_zpass[
        zpass: hgunduzoglu_zpass_merkle_8.aleo/ZPass,
        proof: [field; 3],
        input: u128,
        public min: u128
    ] -> bool {
        assert(input > min);
        let leaf_hash: field = Poseidon2::hash_to_field(input);
        let is_valid: bool = hgunduzoglu_zpass_merkle_8.aleo/verify(zpass, leaf_hash, proof);
        return is_valid;
    }
}
