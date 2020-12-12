var apples = Vue.extend({
  template: '<li>{{fruit.name}}</li>',
  props: ['fruit'],
});

new Vue({
  el: '#fruits-component',
  components: {
    'apple-list': apples
  },
  data: {
    fruits: [
      {name: '梨'},
      {name: 'イチゴ'}
    ]
  }
});
