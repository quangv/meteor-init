# Meteor.subscribe 'tasks'

# counter starts at 0
Session.setDefault('counter', 0)

Template.addTask.events
  'keypress input': (event)->
    if event.which is 13  # enter key
      name = event.target.value
      Meteor.call 'addTask', name
      event.target.value = ''

Template.tasksList.helpers
  tasks: ->
    Tasks.find()

Template.hello.helpers
  counter: ->
    Session.get('counter')


Template.hello.events
  'click button': ->
    # increment the counter when button is clicked
    Session.set('counter', Session.get('counter') + 1)
    # Meteor.call 'addTask', text

