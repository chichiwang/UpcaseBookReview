/* createElement(tag, options)
  * tag: (string) default 'div'
  * options: (object) optional
  *   attributes: (object) list of attributes to set
  *   text: (string) text within the textnode of the tag
 */
function createElement(tag = 'div', options = {}) {
  const $el = window.document.createElement(tag);
  setAttributes($el, options.attributes);
  if (!!options.text) text($el, options.text);
  return $el;
}

function setAttribute($el, attr, val) {
  $el.setAttribute(attr, val);
}

function setAttributes($el, attributes = {}) {
  const keys = Object.keys(attributes);
  if (!!keys.length) {
    keys.forEach(function(key) {
      $el.setAttribute(key, attributes[key]);
    });
  }
}

function text($el, textVal) {
  const textNode = window.document.createTextNode(textVal);
  $el.appendChild(textNode);
}

function appendTo($target, ...$elsToPrepend) {
  $elsToPrepend.forEach(function($el) {
    $target.appendChild($el);
  });
}

function prependTo($target, ...$elsToPrepend) {
  $elsToPrepend.forEach(function($el) {
    $target.insertBefore($el, $target.childNodes[0]);
  });
}

function frag(...$els) {
  const $frag = window.document.createDocumentFragment();
  $els.forEach(function($el) {
    $frag.appendChild($el);
  });
  return $frag;
}

export default {
  createElement,
  setAttribute,
  setAttributes,
  text,
  appendTo,
  prependTo,
  frag,
}
