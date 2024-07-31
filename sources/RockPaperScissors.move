module metaschool::RockPaperScissors_01 {
    const toggleActiveState = async () => {
    setIsActive(!isActive);
    if (!account) return;
    if (!isActive) {
      console.log("Toggling active state: " + isActive);
      const payload: InputTransactionData = {
        data: {
          function: `${moduleAddress}::${moduleName}::createGame`,
          functionArguments: [],
        },
      };
      const response = await signAndSubmitTransaction(payload);
      console.log(response);
    }
    setInput("");
    setResult("");
    setComputerSelection("");
  }; 
}
