Vue.component('todo-item',{
  template: '<li>this is a todo</li>'
});
Vue.component('hoge-item',{
  template: '<li>this is a hoge</li>'
});

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
  },
  methods: {
    reverseMessage: function () {
      this.message = this.message.split('').reverse().join('')
    }
  }
});

app.message = 'i have changed the data!';
app.seen = false;
app.todos.push({text: 'new Item'});