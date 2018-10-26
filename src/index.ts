import * as messages from './generated/main_pb';

const assert = (value) => { if (!value) throw new Error('Assertion failed') };

assert(messages.MeowRequest);
assert(messages.HissRequest);  // <-- tsc outputs "Property 'HissRequest' does not exist..." even though assert passes.

console.log('Ok!');
