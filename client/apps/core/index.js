import El from 'util/elements';
import $header from 'modules/header';

const $body = window.document.body;
El.setAttribute($body, "style", "margin: 0;");

const $wrapper = window.document.querySelector(".page-wrapper");
El.prependTo($wrapper, $header.create());
