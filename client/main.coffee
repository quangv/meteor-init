# Meteor.subscribe 'tasks'

# counter starts at 0
Session.setDefault('counter', 0)

Template.body.helpers
  log: ->  # usage: {{log}}
    console.log this

Template.addTask.events
  'keypress input': (event)->
    if event.which is 13  # enter key
      name = event.target.value
      Meteor.call 'addTask', name
      event.target.value = ''

Template.hello.helpers
  tasks: ->
    Tasks.find()

  counter: ->
    Session.get('counter')


Template.hello.events
  'click button': ->
    # increment the counter when button is clicked
    Session.set('counter', Session.get('counter') + 1)
    # Meteor.call 'addTask', text

