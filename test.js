const shell = require('node-powershell');

let ps = new shell({
  executionPolicy: 'Bypass',
  noProfile: true,
  nonInteractive: true
});
console.log("Shell ProcessId [PID] : " + ps.pid);

ps.addCommand("echo 'hello world.'")
  ps.invoke()
  .then(output => {
    console.log(output);
    
  })
  .catch(err => {
    console.log(err);
    ps.dispose();
  });