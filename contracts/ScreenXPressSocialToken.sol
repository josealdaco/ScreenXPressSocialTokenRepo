// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ScreenXPressSocialToken is ERC20 {
    constructor() ERC20("ScreenXPressSocialToken", "SCXT") {
        _mint(msg.sender, 1000); //// Owner sets token amount o 1000
    }


    function decimals() public view virtual override returns (uint8) {
        return 0; // we will ONLY support whole number amount of tokens
    }


    function mintUserReward(address user, uint256 amount) public {
        /// Reward the user for sharing us on social media!
        _mint(user, amount);
    }




}
