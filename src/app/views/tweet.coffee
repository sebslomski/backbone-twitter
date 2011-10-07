tweetTemplate = require('templates/tweet')

class exports.TweetView extends Backbone.View
  id: 'tweet-view'

  initialize: ->
    app.collections.tweets.bind('add', @render)

  render: =>
    $('body').html(
      $(@el).html(tweetTemplate(
        tweets: app.collections.tweets.models
      ))
    )
