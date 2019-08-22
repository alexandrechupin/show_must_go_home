import "bootstrap";
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
flatpickr(".datepicker", {enableTime: false,
    dateFormat: "Y-m-d",})

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

initMapbox();
initAutocomplete();
