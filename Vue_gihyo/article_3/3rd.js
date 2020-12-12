var auth = {
  login: function(id, pass){
    window.alert("login id:" + id + "\n" + "password:" + pass);
  }
};

var loginTemplate = `
  <div>
    <input type="text" placeholder="ログインID" v-model="userid">
    <input type="password" placeholder="パスワード" v-model="password">
    <button v-on:click="login">ログイン</button>
  </div>
`;

Vue.component('user-login', {
  template: loginTemplate,
  data: function(){
    return {
      userid: '',
      password: ''
    }
  },
  methods: {
    login: function(){
      auth.login(this.userid, this.password);
    }
  }
});

new Vue({
  el: "#login-example"
});
