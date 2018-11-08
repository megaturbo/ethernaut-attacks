// more or less the same as 8_vault, meaning we need to access storage through
// web3.eth.getStorageAt(...) i.e.
// The small difference here is to show that some variables aren't stored in
// the storage like constants, and hardcoded/readonly variables
//
// hence, the `locked` variable will take the index 0, then 1,2,3 for the 3 bytes32
// from `data`
// And we just take the first 16bytes of the last bytes32
web3.eth.getStorageAt(instance, 3, function(e,r){ console.log(r.slice(0,34))});
