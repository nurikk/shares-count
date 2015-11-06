cb_prefix = 'vk_callback_'
current_cb_index = 0
window.VK ?= {}
window.VK.Share =
  count: (index, shares_count) ->
    if window["#{cb_prefix}_#{index}"]
      window["#{cb_prefix}_#{index}"](shares_count)
vk =
  url: (url) ->
    "https://vk.com/share.php?act=count&url=#{encodeURIComponent url}&index=#{current_cb_index}"
  extract: (data) ->
    data
  cb_name: ->
    name = "#{cb_prefix}_#{current_cb_index++}"
    name
