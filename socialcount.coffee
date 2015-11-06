providers = {}
social_count =
  get: (provider_name, url, cb) ->
    count_provider = providers[provider_name]
    callback_name = if count_provider.cb_name then count_provider.cb_name() else false
    if count_provider
      jsonp(count_provider.url(url), ((data) -> cb(count_provider.extract(data))), callback_name)
    else
      cb(0)

module.exports = social_count
