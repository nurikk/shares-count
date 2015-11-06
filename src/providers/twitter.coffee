twitter =
  url: (url) ->
    ["https://cdn.api.twitter.com/1/urls/count.json?callback=@&url=#{encodeURIComponent url}"]
  extract: (data) ->
    data.count or 0

module.exports = twitter
