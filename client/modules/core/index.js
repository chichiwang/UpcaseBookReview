import El from 'util/elements';

import classes from './index.styl';
import world from './world';

const $body = window.document.body;
const helloOptions = {
  text: `Hello ${world}!`,
  attributes: {
    "class": classes.helloWorld,
  },
};
const $hello = El.createElement('h1', helloOptions);

$body.insertBefore($hello, $body.childNodes[0]);
