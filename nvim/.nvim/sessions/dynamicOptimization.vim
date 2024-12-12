let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/work/projects/mvm-dpe/gitlab/maritime/dynamicOptimization
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +9 src/@DynamicOptimizationProblem/DynamicOptimizationProblem.m
badd +154 src/@DynamicOptimizationProblem/construct.m
badd +21 examples/example_dop_cybership.m
badd +1 .git/hooks/pre-push.sample
badd +19 examples/example_dop_goddard.m
badd +50 data/enums/ParameterizationType.m
badd +26 src/@DynamicOptimizationProblem/solve.m
badd +1 src/@DynamicOptimizationProblem/getInputWeightsInStage.m
badd +1 test/runTestsDynamicOptimization.m
badd +23 src/@DynamicOptimizationProblem/reconstruct.m
badd +1 src/@DynamicOptimizationProblem/plot.m
badd +6 data/enums/CallSignatureType.m
badd +1 src/+enum/isReferenceBased.m
badd +1 src/+enum/isStateReferenceType.m
badd +1 src/+enum/isInputReferenceType.m
badd +1 data/enums/ReferenceType.m
badd +6 src/+enum/dependsOnInput.m
badd +6 src/@DynamicOptimizationProblem/setReferenceDOP.m
badd +1 src/+enum/dependsOnState.m
badd +9 src/@DynamicOptimizationProblem/setInitialGuess.m
badd +1 src/@DynamicOptimizationProblem/getInitialGuess.m
badd +14 examples/example_dop_doubleIntegrator.m
badd +19 src/@DynamicOptimizationProblem/setInitialGuessInput.m
badd +1 src/@DynamicOptimizationProblem/setReferenceInput.m
badd +1 src/@DynamicOptimizationProblem/setInitialGuessState.m
badd +1 src/@DynamicOptimizationProblem/setInputInitialGuess.m
badd +1 src/@DynamicOptimizationProblem/setStateInitialGuess.m
badd +1 src/@DynamicOptimizationProblem/setStateReference.m
badd +1 src/@DynamicOptimizationProblem/setInputReference.m
badd +13 dependencies.yaml
badd +13 health://
badd +1 src/@DynamicOptimizationProblem/getReference.m
badd +18 test/ExampleUnitTests.m
badd +114 test/DynamicOptimizationProblemUnitTests.m
badd +1 src/@DynamicOptimizationProblem/setReferenceState.m
badd +6 data/enums/StateDecisionVariableType.m
badd +1 data/enums/TranscriptionType.m
badd +77 src/@DynamicOptimizationProblem/printInfo.m
badd +177 README.md
badd +1 data/enums/SegmentBoundaryType.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/dynamicOptimization/src/@DynamicOptimizationProblem/plotConstraintJacobianSparsity.m
argglobal
%argdel
$argadd src/@DynamicOptimizationProblem/setReferenceDOP.m
$argadd src/@DynamicOptimizationProblem/construct.m
$argadd src/@DynamicOptimizationProblem/DynamicOptimizationProblem.m
$argadd src/@DynamicOptimizationProblem/getReference.m
$argadd src/@DynamicOptimizationProblem/solve.m
$argadd src/@DynamicOptimizationProblem/reconstruct.m
$argadd src/@DynamicOptimizationProblem/setInitialGuess.m
$argadd src/@DynamicOptimizationProblem/printInfo.m
$argadd src/@DynamicOptimizationProblem/plot.m
$argadd src/+enum/dependsOnInput.m
$argadd src/+enum/dependsOnState.m
$argadd test/runTestsDynamicOptimization.m
$argadd test/ExampleUnitTests.m
$argadd test/DynamicOptimizationProblemUnitTests.m
$argadd examples/example_dop_cybership.m
$argadd examples/example_dop_goddard.m
$argadd examples/example_dop_doubleIntegrator.m
$argadd data/enums/SegmentBoundaryType.m
$argadd data/enums/StateDecisionVariableType.m
$argadd data/enums/ParameterizationType.m
$argadd data/enums/CallSignatureType.m
edit src/@DynamicOptimizationProblem/DynamicOptimizationProblem.m
argglobal
21argu
if bufexists(fnamemodify("src/@DynamicOptimizationProblem/DynamicOptimizationProblem.m", ":p")) | buffer src/@DynamicOptimizationProblem/DynamicOptimizationProblem.m | else | edit src/@DynamicOptimizationProblem/DynamicOptimizationProblem.m | endif
if &buftype ==# 'terminal'
  silent file src/@DynamicOptimizationProblem/DynamicOptimizationProblem.m
endif
balt dependencies.yaml
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
let s:l = 9 - ((8 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 9
normal! 09|
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
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
