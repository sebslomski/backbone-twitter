window.app = {}
app.routers = {}
app.models = {}
app.collections = {}
app.views = {}

{MainRouter} = require('routers/main')
{TweetView} = require('views/tweet')
{TweetCollection} = require('collections/tweets')

# app bootstrapping on document ready
$(document).ready ->

  app.initialize = ->
    app.routers.main = new MainRouter()
    app.views.tweet = new TweetView()
    Backbone.history.start()

    setInterval((->
      if not locked
        locked = true
        app.collections.tweets.fetch(
          dataType: 'jsonp'
          success: ->
            locked = false
        )
    ), 5000)


  app.collections.tweets = new TweetCollection()
  app.collections.tweets.fetch(
    dataType: 'jsonp'
    success: ->
      app.initialize()
  )

