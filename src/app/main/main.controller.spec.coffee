describe 'controllers', () ->
  vm = undefined

  beforeEach module 'twitterMicroFront'

  beforeEach inject ($controller, toastr) ->
    spyOn(toastr, 'info').and.callThrough()
    vm = $controller 'MainController'

  it 'vm.loading should default to false', () ->
    expect(vm.loading).toBeTruthy()

  it 'vm.currentSubject should default to null', () ->
    expect(vm.currentSubject).toEqual null

