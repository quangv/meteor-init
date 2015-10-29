# usage {{log}}, {{log 'label'}}
Template.registerHelper 'log', (label)->
  if label then console.log(label, this) else console.log this

# usage {{session 'key'}} {{#each session 'list'}}{{/#each}}
Template.registerHelper 'session', (key)->
  Session.get key

