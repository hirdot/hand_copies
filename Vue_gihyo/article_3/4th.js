var headerTemplate = `
<div style="background: white;">
<slot name="header"></slot>
</div>
`;

Vue.component('page-header', {
  template: headerTemplate
});

var pageTemplate = `
  <div>
    <page-header>
    	<h1 slot="header">冬の果物</h1>
    </page-header>
    <ul>
  		<li>りんご</li>
  		<li>イチゴ</li>
		</ul>
  </div>
`;

Vue.component('page', {
  template: pageTemplate
});

new Vue({
  el: "#header-example"
});
