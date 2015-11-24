jsonp = require('./jsonp')
providers = {
  facebook: require('./providers/facebook')  
  vk: require('./providers/vk')
  ok: require('./providers/ok')
}
social_count =
  list: -> Object.keys(providers)
  get: (provider_name, url, cb) ->
    count_provider = providers[provider_name]
    if count_provider
      [jsonp_url, callback_name] = count_provider.url(url)
      jsonp(jsonp_url, ((data) -> cb(count_provider.extract(data))), callback_name)
    else
      cb(0)

module.exports = social_count
