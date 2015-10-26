# Meteor.subscribe 'tasks'

# counter starts at 0
Session.setDefault('counter', 0)

Template.body.helpers
  log: ->  # usage: {{log}}
    console.log this

Template.hello.helpers
  tasks: ->
    Tasks.find()

  counter: ->
    Session.get('counter')


Template.hello.events
  'click button': ->
    # increment the counter when button is clicked
    Session.set('counter', Session.get('counter') + 1)

