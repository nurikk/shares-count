jsonp = (url, cb, cb_name) ->
  now = +new Date
  script = document.createElement('script')
  callback = if cb_name then cb_name else 'jsonp_' + now + '_' + Math.floor(Math.random() * 1000)
  query = url.replace('@', callback)
  window[callback] = cb
  script.setAttribute('type', 'text/javascript')
  script.setAttribute('src', query)
  document.body.appendChild script

module.exports = jsonp
