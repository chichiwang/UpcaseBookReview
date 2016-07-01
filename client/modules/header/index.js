import El from 'util/elements';

import classes from './index.styl';
import world from './world';

const headerOptions = {
  attributes: {
    "class": classes.headerNavigation,
  },
};

const titleOptions = {
  text: "Upcase: Book Review",
  attributes: {
    "class": "title",
  },
};


function create() {
  const $header = El.createElement('header', headerOptions);
  const $title = El.createElement('h1', titleOptions);
  const $link = El.createElement('a');
  El.setAttribute($link, "href", "/")

  El.appendTo($link, $title);
  El.appendTo($header, $link);

  return $header;
}

export default {
  create,
};
