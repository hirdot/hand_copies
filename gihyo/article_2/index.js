var vm = new Vue({
  el: '#example', // document.getElementById('example'), $('#example')[0] も可
  computed: {
    c_priceWithTax: function() {
      return this.price * 1.08;
    }
  },
  methods: {
    m_priceWithTax: function() {
      return this.price * 1.08;
    }
  },
  data: {
    name: 'みかん',
    price: 100
  }
});

// jsfiddle の環境で Console から vm を参照できるようにするため
window.vm = vm;