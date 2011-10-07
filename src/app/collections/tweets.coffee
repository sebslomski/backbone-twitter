{TweetModel} = require('models/tweet')

class exports.TweetCollection extends Backbone.Collection
  model: TweetModel
  search: 'Y U SO FIT'

  url: ->
    "http://search.twitter.com/search.json?q=#{ encodeURI(@search) }&include_entities=true&with_twitter_user_id=true"

  parse: (resp) ->
    resp.results
