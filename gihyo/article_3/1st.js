Vue.component('apple-list', {
  props: ['fruitsItem'],
  template: '<li>{{fruitsItem.name}}</li>'
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
