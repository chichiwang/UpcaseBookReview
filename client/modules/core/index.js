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

const subHelloOptions = {
  text: "From the world of javascript",
  attributes: {
    "class": classes.subHello,
  },
};

const $hello = El.createElement('h1', helloOptions);
const $subHello = El.createElement('p', subHelloOptions);
El.prependTo($body, $hello, $subHello);
