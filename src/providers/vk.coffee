cb_prefix = 'vk_callback_'
current_cb_index = 0
window.VK ?= {}
window.VK.Share =
  count: (index, shares_count) ->
    if window["#{cb_prefix}_#{index}"]
      window["#{cb_prefix}_#{index}"](shares_count)
vk =
  url: (url) ->
    current_cb_index++
    ["https://vk.com/share.php?act=count&url=#{encodeURIComponent url}&index=#{current_cb_index}", "#{cb_prefix}_#{current_cb_index}"]
  extract: (data) ->
    data

module.exports = vk
