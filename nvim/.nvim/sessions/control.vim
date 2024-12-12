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
badd +14 src/+base/@Controller/Controller.m
badd +6 src/+base/@Controller/setReference.m
badd +17 src/feedforward/model-free/@SimpleFeedforwardController/SimpleFeedforwardController.m
badd +32 src/feedforward/model-free/@SimpleFeedforwardController/update.m
badd +7 src/feedforward/model-based/@CourseChangeAssistant/CourseChangeAssistant.m
badd +33 src/feedforward/model-based/@CourseChangeAssistant/update.m
badd +6 src/feedback/model-free/@PIDController/update.m
badd +1 src/feedback/model-free/@PIDController/setTypes.m
badd +24 src/feedback/model-free/@PIDController/PIDController.m
badd +10 src/+interface/IModelBased.m
badd +10 src/+base/FeedbackController.m
badd +6 src/+base/FeedforwardController.m
badd +1 test/runTestsControl.m
badd +1 test/ExampleUnitTests.m
badd +5 src/feedforward/@CourseChangeAssistant/update.m
badd +1 src/feedforward/@SimpleFeedforwardController/SimpleFeedforwardController.m
badd +8 src/feedback/model-based/@OptimalController/OptimalController.m
badd +12 src/feedback/model-based/@OptimalController/update.m
badd +25 src/feedback/model-based/feedbackLinearization/@NonlinearFeedbackLinearizationController/NonlinearFeedbackLinearizationController.m
badd +2 src/feedback/model-based/@OptimalController/clean.m
badd +5 src/feedforward/model-based/@CourseChangeAssistant/calculateInputTrajectory.m
badd +1 examples/climatePIDMIMO.m
badd +1 src/feedback/model-free/@PIDController/clean.m
argglobal
%argdel
edit src/feedback/model-free/@PIDController/update.m
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
tabnext 1
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
