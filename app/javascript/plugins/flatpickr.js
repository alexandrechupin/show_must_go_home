import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {
  enableTime: false,
  format: "d-m-Y",
  altFormat: "d-m-Y",
  altInput: true})
