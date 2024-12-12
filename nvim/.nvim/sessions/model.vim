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
badd +25 src/+base/@Model/Model.m
badd +2 src/FirstOrderNomoto.m
badd +21 src/propulsion/actuators/Impeller.m
badd +2 src/propulsion/actuators/Propeller.m
badd +50 src/propulsion/Actuator.m
badd +62 src/+base/@Model/simulate.m
badd +1 src/MWE/SinglePendulumCartNN.m
badd +1 src/MWE/SinglePendulumCartGPR.m
badd +27 src/MWE/@DoublePendulumCart/DoublePendulumCart.m
badd +1 src/MWE/@DoublePendulumCart/double_pendulum_cart_rhs.m
badd +15 src/MWE/PointMass.m
badd +5 src/+interface/ICasadiModel.m
badd +12 src/+interface/ICasadiOptimization.m
badd +2 test/DatabasedModelUnitTests.m
badd +17 src/databased/GPRWrapper.m
badd +1 src/+slsystems/Cybership.m
badd +55 src/+base/@DatabasedModel/DatabasedModel.m
badd +10 src/+base/@DatabasedModel/rhs.m
badd +65 src/+base/@GaussianProcess/GaussianProcess.m
badd +24 src/+base/@LagrangianNeuralNetwork/LagrangianNeuralNetwork.m
badd +61 src/+base/@NeuralNetwork/NeuralNetwork.m
badd +2 src/+base/@GaussianProcess/diffSquaredExponentialKernel.m
badd +4 src/+interface/@SLModel/SLModel.m
badd +1 src/+interface/ICasadi.m
badd +1 src/+interface/IFeedbackLinearization.m
badd +1 src/+slsystems/IECContainer.m
badd +1 src/+interface/@SLNomoto/SLNomoto.m
badd +1 src/+interface/@SLThreeDof/SLThreeDof.m
badd +1 src/+interface/@SLThreeDof/stepImpl.m
badd +17 src/MWE/GoddardRocket.m
badd +9 src/MWE/DoubleIntegrator.m
badd +1 src/+base/@LinearSystem/LinearSystem.m
badd +1 src/MWE/HarmonicOscillator.m
badd +17 src/+base/@Model/initialize.m
badd +3 src/cybership/Cybership.m
badd +25 src/+base/@ThreeDof/rhs.m
badd +1 src/+base/@ThreeDof/setSysMatrices.m
badd +57 src/+base/@ThreeDof/ThreeDof.m
badd +2 test/ModelUnitTests.m
badd +10 dependencies.yaml
badd +49 README.md
badd +12 src/+base/@Model/stepf.m
badd +2 examples/databasedModels.m
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit src/+base/@Model/simulate.m
argglobal
balt src/+base/@ThreeDof/rhs.m
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
let s:l = 4 - ((1 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 013|
tabnext
edit src/MWE/GoddardRocket.m
argglobal
balt src/+base/@Model/simulate.m
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
let s:l = 17 - ((5 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 17
normal! 08|
tabnext
edit src/+base/@Model/stepf.m
argglobal
balt src/+base/@Model/Model.m
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
let s:l = 12 - ((5 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 09|
tabnext
edit src/+base/@Model/stepf.m
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
let s:l = 12 - ((5 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 09|
lcd ~/work/projects/mvm-dpe/gitlab/maritime/model
tabnext
edit ~/work/projects/mvm-dpe/gitlab/maritime/model/src/+base/@Model/stepf.m
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
let s:l = 13 - ((5 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 13
normal! 08|
lcd ~/work/projects/mvm-dpe/gitlab/maritime/model
tabnext
edit ~/work/projects/mvm-dpe/gitlab/maritime/model/test/DatabasedModelUnitTests.m
argglobal
balt ~/work/projects/mvm-dpe/gitlab/maritime/model/examples/databasedModels.m
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
let s:l = 3 - ((1 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 010|
lcd ~/work/projects/mvm-dpe/gitlab/maritime/model
tabnext 6
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
