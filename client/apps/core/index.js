import El from 'util/elements';
import $header from 'modules/header';

const $body = window.document.body;
El.prependTo($body, $header.create());
