# usage {{log}}
Template.registerHelper 'log', ->
  console.log this

# usage {{session 'key'}} {{#each session 'list'}}{{/#each}}
Template.registerHelper 'session', (key)->
  Session.get key

