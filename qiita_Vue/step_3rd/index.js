Vue.component("todo-template", {
  props: ["t"],
  data: function(){
    return { doing: false }
  },
  template: "#todo-template",
  methods: {
    begin: function () {
      this.doing = !this.doing;
      this.$emit("todochanged", this.doing);
    }
  }
});

var app = new Vue({
  el: '#todoApp',
  data: {
    todo: "",
    todos: [],
    doings: 0
  },
  methods: {
    addTodo: function() {
      this.todos.push({
        name: this.todo,
        done: false
      });
      this.todo = ""
    },
    count: function(doing){
      this.doings += doing ? 1 : -1;
    }
  }
});
