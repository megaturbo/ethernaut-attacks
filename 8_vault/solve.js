// private doesn't mean hided from public view
// private variables are still stored in clear in the contract
// web3 helps us retrieving storage by index position of the storage

web3.eth.getStorageAt(instance, 1, function(e,r){ console.log(r)});
// 0x412076657279207374726f6e67207365637265742070617373776f7264203a29
web3.toAscii('0x412076657279207374726f6e67207365637265742070617373776f7264203a29')
// A very strong secret password :)
