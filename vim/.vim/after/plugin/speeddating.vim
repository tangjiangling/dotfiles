if exists("g:loaded_custom_speeddating") || &cp || v:version < 700
  finish
endif
let g:loaded_custom_speeddating = 1

SpeedDatingFormat %Y%m%d
