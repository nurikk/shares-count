cb_prefix = 'odklcnt'
current_cb_index = 0
window.ODKL ?= {}
window.ODKL.updateCount = (index, shares_count) ->
  if window["#{cb_prefix}_#{index}"]
    window["#{cb_prefix}_#{index}"](shares_count)
ok =
  url: (url) ->
    current_cb_index++
    ["https://connect.ok.ru/dk?st.cmd=extLike&uid=#{current_cb_index}&ref=#{url}", "#{cb_prefix}_#{current_cb_index}"]
  extract: (data) ->
    data

module.exports = ok
