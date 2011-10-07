class exports.MainRouter extends Backbone.Router
  routes :
    "": "tweet"

  tweet: ->
    app.views.tweet.render()
