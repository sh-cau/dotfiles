let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/work/projects/mvm-dpe/gitlab/maritime/control
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +44 README.md
badd +37 test/FeedforwardUnitTests.m
badd +46 src/+base/@Controller/Controller.m
badd +7 src/+base/@Controller/setReference.m
badd +17 src/feedforward/model-free/@SimpleFeedforwardController/SimpleFeedforwardController.m
badd +32 src/feedforward/model-free/@SimpleFeedforwardController/update.m
badd +7 src/feedforward/model-based/@CourseChangeAssistant/CourseChangeAssistant.m
badd +33 src/feedforward/model-based/@CourseChangeAssistant/update.m
badd +11 examples/nomoto_cca.m
badd +2 src/feedback/model-free/@PIDController/update.m
badd +1 src/feedback/model-free/@PIDController/setTypes.m
badd +20 src/feedback/model-free/@PIDController/PIDController.m
badd +10 src/+interface/IModelBased.m
badd +1 src/+base/FeedbackController.m
badd +6 src/+base/FeedforwardController.m
badd +1 test/runTestsControl.m
badd +1 test/ExampleUnitTests.m
badd +5 src/feedforward/@CourseChangeAssistant/update.m
badd +1 src/feedforward/@SimpleFeedforwardController/SimpleFeedforwardController.m
badd +18 src/feedback/model-based/@OptimalController/OptimalController.m
badd +12 src/feedback/model-based/@OptimalController/update.m
badd +25 src/feedback/model-based/feedbackLinearization/@NonlinearFeedbackLinearizationController/NonlinearFeedbackLinearizationController.m
badd +2 src/feedback/model-based/@OptimalController/clean.m
badd +5 ~/work/projects/mvm-dpe/gitlab/maritime/control/src/feedforward/model-based/@CourseChangeAssistant/calculateInputTrajectory.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/control/examples/climatePIDMIMO.m
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit src/feedback/model-based/@OptimalController/OptimalController.m
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 5 + 12) / 24)
exe 'vert 1resize ' . ((&columns * 73 + 40) / 80)
exe '2resize ' . ((&lines * 5 + 12) / 24)
exe 'vert 2resize ' . ((&columns * 6 + 40) / 80)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 2) / 5)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("src/feedback/model-based/@OptimalController/OptimalController.m", ":p")) | buffer src/feedback/model-based/@OptimalController/OptimalController.m | else | edit src/feedback/model-based/@OptimalController/OptimalController.m | endif
if &buftype ==# 'terminal'
  silent file src/feedback/model-based/@OptimalController/OptimalController.m
endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 2) / 5)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 5 + 12) / 24)
exe 'vert 1resize ' . ((&columns * 73 + 40) / 80)
exe '2resize ' . ((&lines * 5 + 12) / 24)
exe 'vert 2resize ' . ((&columns * 6 + 40) / 80)
tabnext
edit ~/work/projects/mvm-dpe/gitlab/maritime/control/examples/climatePIDMIMO.m
argglobal
balt src/+base/FeedbackController.m
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
tabnext 2
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
