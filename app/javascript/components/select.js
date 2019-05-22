import $ from 'jquery';
import select2 from 'select2';

const multipleSelect = () => {
  $(document).ready(function() {
    $('.multiple-select').select2({
      placeholder: "Select tags"
    });
  });
}

export { multipleSelect };
