import "bootstrap";

import flatpickr from 'flatpickr'
import 'flatpickr/dist/flatpickr.min.css'

flatpickr(".datepicker", {
  altInput: true
});

import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert({
  title: "You successfully booked a granny!",
  text: "",
  icon: "success"
}, (value) => {
  console.log(value);
});
