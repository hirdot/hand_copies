var addButton = Vue.extend({
  template: '<span>{{counter}}個<button v-on:click="addToCart">追加</button></span>',
  data: function () {
    return {
      counter: 0
    }
  },
  methods: {
    addToCart: function () {
      this.counter += 1
      this.$emit('reflect')
    }
  },
});

new Vue({
  el: '#fruits-counter',
  components: {
    'counter-button': addButton
  },
  data: {
    total: 0,
    fruits: [
      {name: '梨'},
      {name: 'イチゴ'}
    ]
  },
  methods: {
    inc: function () {
      this.total += 1
    }
  }
});
