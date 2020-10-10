
function! Record()
  let record_command='ffmpeg -loglevel quiet -f pulse -y -i alsa_input.usb-C-Media_Electronics_Inc._Microsoft_LifeChat_LX-3000-00.analog-mono  -acodec libmp3lame -map 0:0 '
  let fname = substitute(expand('%:p'), '#', '\\#','')
  execute "!" . record_command. " '" . fname . ".mp3'" 
endfunction

map <C-A-r> :call Record()<cr>

"execute "!" . 'ffmpeg -f pulse -i alsa_input.usb-C-Media_Electronics_Inc._Microsoft_LifeChat_LX-3000-00.analog-mono  -acodec libmp3lame -map 0:0 '. " " . expand('%:p'). ".mp3" 
