angular.module 'twitterMicroFront'
  .controller 'MainController', ($timeout, $http, toastr) ->
    'ngInject'
    vm = this

    vm.loading = true
    vm.currentSubject = null

    vm.hashtags = ["Healthcare", "NASA", "Open Source"]


    vm.getTweets = (subject)->
      vm.loading = false

      $http.post("http://54.175.217.198", { tweet: subject }).success((response) ->
        vm.currentSubject = subject
        vm.loading = true
        vm.tweets = response.tweets

      ).error (data, status, headers, config) ->
        vm.loading = true
        console.log "failure"


    return
