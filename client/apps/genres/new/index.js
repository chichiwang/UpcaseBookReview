import El from 'util/elements';
import fieldText from 'modules/form/field';

const $pageContent = window.document.querySelector('.page-content');

const $form = El.createElement('form');
const $nameField = fieldText.create();
const $descriptionField = fieldText.create();

El.appendTo($form, $nameField, $descriptionField);

El.renderInto($pageContent, $form);
