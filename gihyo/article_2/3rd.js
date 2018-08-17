var vm = new Vue({
  el: '#example',
  data: {
    name: '',
  },
  computed: {
    isExist: function () {
      return this.name.length > 0;
    }
  }
});
window.vm = vm;