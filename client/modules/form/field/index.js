import El from 'util/elements';
import classes from './index.styl';





function create() {
  const $fieldContainer = El.createElement();
  El.setAttribute($fieldContainer, 'class', classes.fieldText);

  return $fieldContainer;
}

export default {
  create,
};

