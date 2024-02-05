# Beats
In my project , i have used openzeppelin library to create a ERC20 smart contract. Refer to loom video 

## Description
This project contains a Beats.sol file which has the solidity code which has imported openzeppelin library code and has created an ERC20 token called Beats and symbol 'BTS' . This token can perform all the ERC20 functions which has been demonstrated in the loom video. The modifier onlyOwner has been added to mint funciton so that only the owner can mint. The user can also check the balance of each address.


## Executing Program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Beats.sol). Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";
import "@openzeppelin/contracts@5.0.1/token/ERC20/extensions/ERC20Permit.sol";

contract Beats is ERC20, ERC20Burnable, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("Beats", "BTS")
        Ownable(initialOwner)
        ERC20Permit("Beats")
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amt_to_burn) public override {
        _burn(msg.sender,amt_to_burn);
    }   
    function transfer(uint256 amt_to_transfer, address addr_to_transfer) public {
        _transfer(msg.sender, addr_to_transfer, amt_to_transfer);
    }    
}


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.20" (or another compatible version), and then click on the "Compile Beats.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Beats" contract from the dropdown menu, and then click on the "Deploy" button.





## Authors

Pranav S Devang

[@pranavssdevang@gmail.com]

## License

This project is licensed under [MIT] License
