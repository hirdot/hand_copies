Vue.component('apple-list', {
  props: ['fruitsItem'],
  template: '<li>{{fruitsItem.name}}</li>'
});

new Vue({
  el: '#fruits-component',
  data: {
    fruitsItems: [
      {name: '梨'},
      {name: 'イチゴ'}
    ]
  }
});