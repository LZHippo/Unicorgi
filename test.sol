contract Test {
    function tokenAllowAll(address asset, address allowee) public {
        EIP20Interface token = EIP20Interface(asset);

        if (token.allowance(address(this), allowee) != uint(-1)) {
            token.approve(allowee, uint(-1));
        }
            
    }
}



