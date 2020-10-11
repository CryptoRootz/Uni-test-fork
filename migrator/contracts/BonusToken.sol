pragma solidity =0.6.6;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract BonusToken is ERC20 {
    address public admin;
    address public Liquidator;
    constructor() ERC20('Bonus Token', 'BTK') public {
        admin = msg.sender;
    }

    function setLiquidator(address _liquidator) external {
        require(msg.sender == admin, 'only admin');
        liquidator = _liquidator;
    }

    function mint(address to, unit amount) external {
        require(msg.sender == liquidator, 'only liqudator');
        _mint(to, amount);
    }
}