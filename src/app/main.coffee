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
    app.collections.tweets = new TweetCollection([
      {
        avatar: '<a href="http://twitter.com/sebslomski" class="tweet_avatar"><img width="45" height="45" border="0" title="sebslomski\'s avatar" alt="sebslomski\'s avatar" src="http://a2.twimg.com/profile_images/1538758760/305960_2178471074791_1637330090_2296788_5402620_n_normal.jpg"></a>'
        join: ''
        text: '<span class="tweet_text">@<a href="http://twitter.com/m_strehl">m_strehl</a> @<a href="http://twitter.com/munichjs">munichjs</a> Stimmt. In google groups wusste keiner, dass du in Wirklichkeit ein Esel bist :)</span>'
        time: '<span class="tweet_time"><a title="view tweet on twitter" href="http://twitter.com/sebslomski/status/122381293114757121">about 21 minutes ago</a></span>'
      }, {
        avatar: '<a href="http://twitter.com/sebslomski" class="tweet_avatar"><img width="45" height="45" border="0" title="sebslomski\'s avatar" alt="sebslomski\'s avatar" src="http://a2.twimg.com/profile_images/1538758760/305960_2178471074791_1637330090_2296788_5402620_n_normal.jpg"></a>'
        join: ''
        text: '<span class="tweet_text">Test Test Test</span>'
        time: '<span class="tweet_time"><a title="view tweet on twitter" href="http://twitter.com/sebslomski/status/122381293114757121">about 21 minutes ago</a></span>'
    }])
    app.routers.main = new MainRouter()
    app.views.tweet = new TweetView()
  app.initialize()
  Backbone.history.start()

