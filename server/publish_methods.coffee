Meteor.publish 'tasks', ->
  Tasks.find()

Meteor.methods
  addTask: (text)->
    check text, String

    if not Meteor.userId()
      throw new Meteor.Error 'not-authorized'

    Tasks.insert
      createdAt: new Date()
      updatedAt: new Date()
      owner: Meteor.userId()

      content: text
