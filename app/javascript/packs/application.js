import "bootstrap";
import flatpickr from 'flatpickr';
import 'flatpickr/dist/themes/airbnb.css';
import rangePlugin from 'flatpickr/dist/plugins/rangePlugin';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

const fp = flatpickr("#start_date", {
  altInput: true,
  "plugins": [new rangePlugin({ input: "#end_date"})],
  onChange: function(dateObj, dateStr) {
    const arr = dateStr.split(" to ");
    const startDate = Math.floor(Date.parse(arr[0]) / (1000 * 60 * 60 * 24));
    const endDate = Math.floor(Date.parse(arr[1]) / (1000 * 60 * 60 * 24));
    const daysTotal = endDate - startDate;
    const daysHtml = document.getElementById('days');
    const totalPriceHtml = document.getElementById('total-price');
    const pricePerDay = parseInt(document.getElementById('price').innerText);
    if (isNaN(daysTotal)) {
      daysHtml.innerText = 1;
      totalPriceHtml.innerText = pricePerDay;
    } else {
      daysHtml.innerText = daysTotal;
      totalPriceHtml.innerText = pricePerDay * daysTotal;
    }
  }
});
