# Meteor.subscribe 'tasks'

# counter starts at 0
Session.setDefault('counter', 0)

Template.hello.helpers
  tasks: ->
    Tasks.find()

  counter: ->
    Session.get('counter')


Template.hello.events
  'click button': ->
    # increment the counter when button is clicked
    Session.set('counter', Session.get('counter') + 1)

Accounts.ui.config
  passwordSignupFields: 'EMAIL_ONLY'
