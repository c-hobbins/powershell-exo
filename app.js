const shell = require('node-powershell');

let ps = new shell({
  executionPolicy: 'Bypass',
  noProfile: true,
  nonInteractive: true
});
console.log("Shell ProcessId [PID] : " + ps.pid);

console.log("Connecting to EXO using client certificate...")
ps.addCommand("./connect.ps1")
ps.invoke()
.then(output => {
  console.log("Connected!");
})
.catch(err => {
  console.log(err);
  ps.dispose();
});
/*
ps.addCommand("Get-EXORecipient chad")
  ps.invoke()
  .then(output => {
    console.log(output);
  })
  .catch(err => {
    console.log(err);
    ps.dispose();
  });
*/
console.log("Disconneting from EXO...")
ps.addCommand("./disconnect.ps1")
ps.invoke()
.then(output => {
  console.log(output);
})
.catch(err => {
  console.log(err);
  ps.dispose();
});


