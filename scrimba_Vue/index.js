var app = new Vue({
  el: '#app',
  data: {
    message: 'Hello Vue!',
    seen: true
  }
});

app.message = 'i have changed the data!';
app.seen = false;