function updateTotalForm(start_date, end_date){
  const hour_price = document.querySelector('.price-hour');
  if (hour_price) {
    console.log(start_date.value);
    const start = new Date(start_date.value);
    const end = new Date(end_date.value);
    const hours = Math.abs(end - start);
    const total_price = ((hours / 60000) / 60) * parseInt(hour_price.dataset.price);
    if (total_price) {
    document.querySelector('#total_price').innerHTML = Math.round(total_price);
    }
  }
  console.log('updated total');
}

function addEventListenerToBookingDates(){
  const start_date = document.querySelector('#booking_start_date');
  const end_date = document.querySelector('#booking_end_date');
  if (start_date) {
    start_date.addEventListener('change', function() {
      updateTotalForm(start_date, end_date);
    })
  }
  if (end_date) {
    end_date.addEventListener('change', function() {
      updateTotalForm(start_date, end_date);
    })
  }
}


export {addEventListenerToBookingDates};
