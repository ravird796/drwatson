// This will trigger the Semgrep rule
let userPassword = 'superSecret123'; // Hardcoded password

// Some additional logic
console.log("User password set successfully.");

const crypto = require('crypto');

const buffer = crypto.pseudoRandomBytes(size);
console.log(buffer.toString('hex'));  // Outputs random bytes in hexadecimal format
