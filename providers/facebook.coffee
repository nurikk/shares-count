facebook =
  url: (url) ->
    fql = "select share_count from link_stat where url ='#{url}'"
    "https://api.facebook.com/method/fql.query?format=json&callback=@&query=#{encodeURIComponent fql}"
  extract: (data) ->
    return if data[0] then data[0].share_count else 0
module.exports = facebook
