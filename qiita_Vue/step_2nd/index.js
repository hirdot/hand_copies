(function(){
  var ISSUES = "https://api.github.com/repos/[R]/issues?state=open"
  var app = new Vue({
    el: "#issues",
    data: {
      repository: "vuejs/vue",
      // repository: "hirdot/hand_copies_vue",
      searchText: "",
      issues: []
    },
    created: function () {
      this.fetchData()
    },
    watch: {
      repository: "fetchData"
    },
    filters: {
      formatDate: function (v) {
        return v.replace(/T|Z/g, ' ')
      }
    },
    computed: {
      hasIssue: function(){
        return this.issues.length > 0 ? true : false;
      },
      filtered_issues: function(){
        var query = this.searchText;
        return this.issues.filter(function(issue){
          return issue.title.indexOf(query) > -1
        })
      }
    },
    methods: {
      fetchData: function () {
        var xhr = new XMLHttpRequest();
        var self = this;
        xhr.open("GET", ISSUES.replace("[R]", this.repository));
        xhr.onload = function () {
          self.issues = JSON.parse(xhr.responseText);
        };
        xhr.send()
      }
    }
  })
})();
