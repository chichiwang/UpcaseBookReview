const path = require('path');
const modulesDir = path.join(__dirname, '../modules');

const moduleEntries = [
  'core',
];

const entries = moduleEntries.reduce((memo, entry) => {
  memo[entry] = path.join(modulesDir, entry);
  return memo;
}, {});

module.exports = entries;
