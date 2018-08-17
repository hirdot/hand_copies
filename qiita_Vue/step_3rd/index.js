Vue.component("todo-template", {
  props: ["t"],
  data: function () {
    return { doing: false }
  },
  template: "#todo-template",
  methods: {
    begin: function () {
      // this.task = !this.task;

      this.$emit("intermediary", this.task);
      /*  "intermediary" > intermediary(HTML)
                           > "task_count"
                              > app.task_count(this.task)
       */
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
    add: function() {
      this.todos.push({
        name: this.todo,
        done: false
      });
      this.todo = ""
    },
    task_count: function(task) {
      this.doings += task ? 1 : -1;
    }
  }
});
