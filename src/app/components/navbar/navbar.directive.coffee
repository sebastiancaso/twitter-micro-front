angular.module 'twitterMicroFront'
  .directive 'acmeNavbar', ->

    NavbarController = (moment) ->
      'ngInject'
      vm = this

      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/navbar/navbar.html'
      scope: creationDate: '='
      controller: NavbarController
      controllerAs: 'vm'
      bindToController: true
