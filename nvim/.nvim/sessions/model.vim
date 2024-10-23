let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/work/projects/mvm-dpe/gitlab/maritime/model
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +17 src/+base/@Model/Model.m
badd +2 src/FirstOrderNomoto.m
badd +21 src/propulsion/actuators/Impeller.m
badd +2 src/propulsion/actuators/Propeller.m
badd +50 src/propulsion/Actuator.m
badd +1 src/+base/@Model/simulate.m
badd +1 src/MWE/SinglePendulumCartNN.m
badd +1 src/MWE/SinglePendulumCartGPR.m
badd +27 src/MWE/@DoublePendulumCart/DoublePendulumCart.m
badd +1 src/MWE/@DoublePendulumCart/double_pendulum_cart_rhs.m
badd +15 src/MWE/PointMass.m
badd +5 src/+interface/ICasadiModel.m
badd +12 src/+interface/ICasadiOptimization.m
badd +17 test/DatabasedModelUnitTests.m
badd +17 src/databased/GPRWrapper.m
badd +1 src/+slsystems/Cybership.m
badd +55 src/+base/@DatabasedModel/DatabasedModel.m
badd +10 src/+base/@DatabasedModel/rhs.m
badd +61 src/+base/@GaussianProcess/GaussianProcess.m
badd +24 src/+base/@LagrangianNeuralNetwork/LagrangianNeuralNetwork.m
badd +61 ~/work/projects/mvm-dpe/gitlab/maritime/model/src/+base/@NeuralNetwork/NeuralNetwork.m
badd +2 ~/work/projects/mvm-dpe/gitlab/maritime/model/src/+base/@GaussianProcess/diffSquaredExponentialKernel.m
argglobal
%argdel
edit src/+base/@GaussianProcess/GaussianProcess.m
argglobal
balt ~/work/projects/mvm-dpe/gitlab/maritime/model/src/+base/@GaussianProcess/diffSquaredExponentialKernel.m
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
let s:l = 65 - ((16 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 65
normal! 018|
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
