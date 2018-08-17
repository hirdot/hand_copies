Vue.component("todo-template", {
  props: ["t"],
  data: function () {
    return { doing: false }
  },
  template: "#todo-template",
  methods: {
    begin: function () {
      console.log("before:" + this.task);
      this.task = !this.task;
      /* this.task は当初 undefined
         一度、!this.task とすることで、boolean のパラメータに変換された！
         これで、task_count に引数として渡すことで、T/F が渡され、
         クリック毎に値が反転する。
       */

      console.log("after:" + this.task);
      this.$emit("intermediary", this.task);
      /* 子component -> 親VMへのメソッド連携の仕組み
        "intermediary" > intermediary(HTML)
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
    doing_count: 0
  },
  methods: {
    add: function() {
      this.todos.push({
        name: this.todo
        // done: false
      });
      this.todo = ""
    },
    task_count: function(task) {
      this.doing_count += task ? 1 : -1;
    }
  }
});
