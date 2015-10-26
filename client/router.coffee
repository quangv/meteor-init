FlowRouter.route '/',
  action: ->
    BlazeLayout.render 'mainLayout',
       template: 'home'
