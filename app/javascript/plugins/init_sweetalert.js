// app/javascript/plugins/init_sweetalert.js
import swal from 'sweetalert';

const initSweetalert = (options = {}, callback = () => {}) => {
  const urlParams = new URLSearchParams(window.location.search);
  if (urlParams.get('created')) {
    swal(options).then(callback); // <-- add the `.then(callback)`
  }
};

export { initSweetalert };
