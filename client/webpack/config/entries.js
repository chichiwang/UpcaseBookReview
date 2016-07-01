const path = require('path');
const appsDir = path.join(__dirname, '../../apps');

const coreEntry = {
  core: [
    path.join(appsDir, 'core'),
    'babel-polyfill',
  ],
};

const appsEntries = [
  'genres/new',
];

const entries = appsEntries.reduce((memo, entry) => {
  memo[entry] = path.join(appsDir, entry);
  return memo;
}, {});

module.exports = Object.assign({}, coreEntry, entries);
