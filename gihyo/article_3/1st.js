Vue.component('apple-list', {
  props: ['fruit'],
  template: '<li>{{fruit.name}}</li>'
});

new Vue({
  el: '#fruits-component',
  data: {
    fruits: [
      {name: '梨'},
      {name: 'イチゴ'}
    ]
  }
});
