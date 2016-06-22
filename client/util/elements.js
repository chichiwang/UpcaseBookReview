/* createElement(tag, options)
  * tag: (string) default 'div'
  * options: (object) optional
  *   attributes: (object) list of attributes to set
  *   text: (string) text within the textnode of the tag
 */
function createElement(tag = 'div', options = {}) {
  const el = window.document.createElement(tag);

  if (options.attributes) {
    Object.keys(options.attributes).forEach((key) => {
      el.setAttribute(key, options.attributes[key]);
    });
  }

  if (!!options.text) {
    const textNode = window.document.createTextNode(options.text);
    el.appendChild(textNode);
  }

  return el;
}

export default {
  createElement,
}
