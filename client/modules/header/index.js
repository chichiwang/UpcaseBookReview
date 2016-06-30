import El from 'util/elements';

import classes from './index.styl';
import world from './world';

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

function create() {
  const $hello = El.createElement('h1', helloOptions);
  const $subHello = El.createElement('p', subHelloOptions);
  return El.frag($hello, $subHello);
}

export default {
  create,
};
