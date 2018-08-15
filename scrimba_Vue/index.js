var app = new Vue({
  el: '#app',
  data: {
    message: 'Hello Vue!',
    seen: true,
    todos:[
      {text: 'Learn JavaScript'},
      {text: 'Learn Vue'},
      {text: 'Build something awesome'}
    ]
  }
});

app.message = 'i have changed the data!';
app.seen = false;
app.todos.push({text: 'new Item'});