let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/work/projects/mvm-dpe/gitlab/maritime/types
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +14 README.md
badd +19 src/@Value/Value.m
badd +37 src/@Trajectory/plot.m
badd +2 src/assertion/mustBeSquare.m
badd +4 test/runTestsTypes.m
badd +122 src/+base/@ValueBase/ValueBase.m
badd +1 src/+aux/R2.m
badd +1 src/+aux/R3.m
badd +2 src/+aux/angleDiff.m
badd +1 src/+aux/angleDiffWGS.m
badd +1 src/+aux/crossTrackError.m
badd +1 src/+aux/kn2ms.m
badd +1 src/+aux/latlondeg2dec.m
badd +1 src/+aux/lineOfSightAngle.m
badd +1 src/+aux/m2nm.m
badd +1 src/+aux/ms2kn.m
badd +1 src/+aux/nm2m.m
badd +1 src/+aux/pathParameter.m
badd +1 src/+aux/rgb2hex.m
badd +13 src/+base/@ValueBase/hasSubset.m
badd +1 src/+base/@ValueBase/isAbstract.m
badd +2 src/+base/@ValueBase/isInput.m
badd +2 src/+base/@ValueBase/isState.m
badd +4 src/+base/@ValueBase/renew.m
badd +11 src/+base/@ValueBase/subset.m
badd +6 src/+base/@ValueBase/toCell.m
badd +2 src/+base/@ValueBase/toStruct.m
badd +50 src/+rrt/@MotionPrimitive/toTikz.m
badd +2 src/@Coordinate/Coordinate.m
badd +1 src/@Trajectory/NEDplot.m
badd +105 src/@Trajectory/Trajectory.m
badd +16 src/@Trajectory/atTime.m
badd +7 src/@Trajectory/resample.m
badd +79 src/@Trajectory/toTikz.m
badd +1 src/assertion/mustBeAOrEmpty.m
badd +5 src/assertion/mustBeInput.m
badd +5 src/assertion/mustBeInputTrajectory.m
badd +5 src/assertion/mustBeInputType.m
badd +5 src/assertion/mustBeInputTypeOrNone.m
badd +1 src/assertion/mustBePositiveDefinite.m
badd +1 src/assertion/mustBePositiveOrMinusOne.m
badd +5 src/assertion/mustBeStateOrAbstract.m
badd +5 src/assertion/mustBeStateType.m
badd +5 src/assertion/mustBeStateTypeOrNone.m
badd +1 test/AuxiliaryUnitTests.m
badd +15 test/TrajectoryUnitTests.m
badd +1 test/trajectoryClassTests.m
badd +41 src/+rrt/@BaseNode/BaseNode.m
badd +1 src/+rrt/@BaseNode/plot.m
badd +1 src/+rrt/@BaseTree/plot.m
badd +1 src/+rrt/@BaseTree/toTikz.m
badd +1 src/+rrt/@Dataset/Dataset.m
badd +1 src/+rrt/@KDTree/KDTree.m
badd +1 src/+rrt/@KDTree/plotRecursive.m
badd +1 src/+rrt/@ListTree/ListTree.m
badd +111 src/+rrt/@MotionPrimitive/MotionPrimitive.m
badd +1 src/+rrt/@MotionPrimitive/plot.m
badd +1 src/+rrt/@MotionPrimitive/toStruct.m
badd +5 src/assertion/mustBeState.m
badd +4 data/enums/IntegratorType.m
badd +1 data/enums/+rrt/TreeType.m
badd +3 data/enums/AllocationMode.m
badd +1 data/enums/ConstraintMode.m
badd +8 data/enums/InterpolationType.m
badd +1 data/enums/NumericIntegrationType.m
badd +1 data/enums/ParameterizationType.m
badd +1 data/enums/QCalculationType.m
badd +1 data/enums/RCalculationType.m
badd +10 data/enums/ReferenceFrame.m
badd +1 data/enums/ReferenceGenerationType.m
badd +1 data/enums/SigmaCalculationType.m
badd +1 data/enums/SimulationMode.m
badd +1 data/enums/SimulationType.m
badd +1 data/enums/StaticObstacleType.m
badd +1 data/enums/TranscriptionMethod.m
badd +5 data/enums/ValueType.m
badd +10 data/enums/VesselType.m
badd +1 examples/example_dop_cybership.m
badd +1 examples/example_dop_goddard.m
badd +11 src/+enum/getDefaultInputType.m
badd +6 src/+enum/getDisplayNames.m
badd +28 src/+enum/getInterpolationName.m
badd +7 src/+enum/getNumberOfValues.m
badd +1 src/@DynamicOptimizationProblem/DynamicOptimizationProblem.m
badd +1 src/@DynamicOptimizationProblem/construct.m
badd +1 src/@DynamicOptimizationProblem/plot.m
badd +1 src/@DynamicOptimizationProblem/solve.m
badd +1 src/assertion/mustHaveSameNumberOfColumns.m
badd +1 src/assertion/mustHaveSameNumberOfRows.m
badd +1 test/CoordinateUnitTests.m
badd +1 test/DynamicOptimizationProblemUnitTests.m
badd +2 test/EnumUnitTests.m
badd +62 test/ValueUnitTests.m
badd +1 src/+enum/interpolation/isConstant.m
badd +12 test.m
badd +1 test/valueClassTests.m
badd +3 src/+enum/interpolationToChar.m
badd +5 src/+enum/isVariableStep.m
badd +1 man://end(3)
badd +6 src/+enum/isExtrapolating.m
badd +1 src/@Trajectory/NEDcross.m
badd +1 src/+enum/interpolate.m
badd +1 src/+enum/getInterpolatedValue.m
badd +1 src/+enum/isConstant.m
badd +19 data/enums/AtomicType.m
badd +2 src/compounds/PositionTwoDOF.m
badd +2 src/compounds/test.m
badd +5 data/enums/CompoundType.m
badd +1 src/+aux/lla2flat.m
badd +1 src/+aux/flat2lla.m
badd +1 src/+aux/latlondeg2flat.m
badd +1 src/+rrt/@BaseTree/BaseTree.m
badd +15 src/+enum/getDefaultStateType.m
badd +18 health://
badd +8 CHANGELOG.md
badd +1 src/compounds/Position2DOF.m
badd +1 src/compounds/Pose.m
badd +6 src/compounds/Heading.m
badd +1 src/Compound.m
badd +15 src/CompoundValue.m
badd +1 src/compounds/PoseThreeDOF.m
badd +6 src/+base/@ValueBase/getAtomicSubsetByType.m
badd +27 src/compounds/PositionThreeDOF.m
badd +10 src/compounds/FullStateThreeDOF.m
badd +1 src/+enum/getCompoundAtomics.m
badd +6 src/+enum/getCompoundUnits.m
badd +1 src/+enum/getAtomicUnits.m
badd +4 src/+enum/getCompoundName.m
badd +9 src/+enum/getAtomicNames.m
badd +7 src/+enum/getCompoundAtomicNames.m
badd +3 src/+enum/isState.m
badd +1 src/+enum/getValueName.m
badd +1 src/+enum/getVesselInfo.m
badd +4 src/+enum/isExplicit.m
badd +8 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/getIntegratorName.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/getFunctionalRelation.m
badd +13 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/getButcherTableau.m
badd +17 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/Integrator.m
badd +13 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/ruku4/ruku4ex.m
badd +27 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/ruku4/ruku4e.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/euler/euler1ej.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/euler/euler1ex.m
badd +1 src/+enum/isFixedStep.m
badd +1 src/+enum/getAtomicValues.m
badd +1 src/+enum/isInput.m
badd +1 src/+enum/getUnit.m
badd +1 src/+enum/getIntegratorFunctionHandle.m
badd +1 src/+enum/getIntegratorName.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/getIntegratorFunctionHandle.m
badd +1 undotree_2
badd +6 ~/dotfiles/nvim/.config/nvim/lua/plugins/git.lua
badd +1 src/codegenTest/testme.m
badd +37 man://git-log(1)
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/getNumberOfValues.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/getUnit.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/interpolate.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/interpolationToChar.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/isConstant.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/isExplicit.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/isExtrapolating.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/isFixedStep.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/isInput.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/isVariableStep.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/getInterpolationName.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/data/enum/IntegratorType.m
badd +1 test/runValueTests.m
badd +6 ~/work/projects/mvm-dpe/gitlab/maritime/model/src/MWE/DoubleIntegrator.m
badd +9 ~/work/projects/mvm-dpe/gitlab/maritime/model/dependencies/types/src/+base/@ValueBase/renew.m
badd +6 ~/work/projects/mvm-dpe/gitlab/maritime/model/dependencies/types/src/@Trajectory/plot.m
badd +3 ~/work/projects/mvm-dpe/gitlab/maritime/model/dependencies/types/src/@Trajectory/resample.m
badd +2 ~/work/projects/mvm-dpe/gitlab/maritime/model/dependencies/types/src/@Trajectory/atTime.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/model/dependencies/types/src/@Trajectory/interpolate.m
badd +7 ~/work/projects/mvm-dpe/gitlab/maritime/model/dependencies/types/src/+enum/interpolate.m
badd +26 ~/work/projects/mvm-dpe/gitlab/maritime/model/dependencies/types/src/@Trajectory/Trajectory.m
badd +1 src/@Trajectory/interpolate.m
badd +2 src/assertion/mustBeStrictlyLowerTriangular.m
badd +1 ~/programs/MATLAB/R2023a/toolbox/matlab/matfun/istril.m
argglobal
%argdel
$argadd src/+base/@ValueBase/isState.m
$argadd src/+base/@ValueBase/isAbstract.m
$argadd src/+base/@ValueBase/renew.m
$argadd src/+base/@ValueBase/toStruct.m
$argadd src/+base/@ValueBase/hasSubset.m
$argadd src/+base/@ValueBase/toCell.m
$argadd src/+base/@ValueBase/ValueBase.m
$argadd src/+base/@ValueBase/isInput.m
$argadd src/+base/@ValueBase/subset.m
$argadd src/assertion/mustBeInputTypeOrNone.m
$argadd src/assertion/mustHaveSameNumberOfRows.m
$argadd src/assertion/mustHaveSameNumberOfColumns.m
$argadd src/assertion/mustBeAOrEmpty.m
$argadd src/assertion/mustBeStateOrAbstract.m
$argadd src/assertion/mustBeInput.m
$argadd src/assertion/mustBeStateType.m
$argadd src/assertion/mustBeSquare.m
$argadd src/assertion/mustBePositiveOrMinusOne.m
$argadd src/assertion/mustBeStateTypeOrNone.m
$argadd src/assertion/mustBePositiveDefinite.m
$argadd src/assertion/mustBeInputType.m
$argadd src/assertion/mustBeInputTrajectory.m
$argadd src/assertion/mustBeState.m
$argadd src/compounds/PoseThreeDOF.m
$argadd src/@Coordinate/Coordinate.m
$argadd src/@Value/Value.m
$argadd src/codegenTest/testme.m
$argadd src/+aux/pathParameter.m
$argadd src/+aux/lla2flat.m
$argadd src/+aux/angleDiff.m
$argadd src/+aux/crossTrackError.m
$argadd src/+aux/R2.m
$argadd src/+aux/rgb2hex.m
$argadd src/+aux/m2nm.m
$argadd src/+aux/flat2lla.m
$argadd src/+aux/R3.m
$argadd src/+aux/nm2m.m
$argadd src/+aux/latlondeg2flat.m
$argadd src/+aux/kn2ms.m
$argadd src/+aux/angleDiffWGS.m
$argadd src/+aux/lineOfSightAngle.m
$argadd src/+aux/latlondeg2dec.m
$argadd src/+aux/ms2kn.m
$argadd src/+rrt/@BaseTree/BaseTree.m
$argadd src/+rrt/@BaseTree/toTikz.m
$argadd src/+rrt/@BaseTree/plot.m
$argadd src/+rrt/@ListTree/ListTree.m
$argadd src/+rrt/@BaseNode/BaseNode.m
$argadd src/+rrt/@BaseNode/plot.m
$argadd src/+rrt/@Dataset/Dataset.m
$argadd src/+rrt/@KDTree/plotRecursive.m
$argadd src/+rrt/@KDTree/KDTree.m
$argadd src/+rrt/@MotionPrimitive/MotionPrimitive.m
$argadd src/+rrt/@MotionPrimitive/toTikz.m
$argadd src/+rrt/@MotionPrimitive/toStruct.m
$argadd src/+rrt/@MotionPrimitive/plot.m
$argadd src/+enum/isState.m
$argadd src/+enum/isExtrapolating.m
$argadd src/+enum/getValueName.m
$argadd src/+enum/isVariableStep.m
$argadd src/+enum/interpolationToChar.m
$argadd src/+enum/getDefaultStateType.m
$argadd src/+enum/getDefaultInputType.m
$argadd src/+enum/interpolate.m
$argadd src/+enum/getNumberOfValues.m
$argadd src/+enum/getVesselInfo.m
$argadd src/+enum/isFixedStep.m
$argadd ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/getIntegratorFunctionHandle.m
$argadd src/+enum/isConstant.m
$argadd src/+enum/getAtomicValues.m
$argadd src/+enum/getInterpolationName.m
$argadd src/+enum/isInput.m
$argadd src/+enum/getUnit.m
$argadd ~/work/projects/mvm-dpe/gitlab/maritime/numericIntegration/src/+enum/getIntegratorName.m
$argadd src/+enum/getDisplayNames.m
$argadd src/+enum/isExplicit.m
$argadd src/@Trajectory/toTikz.m
$argadd src/@Trajectory/NEDplot.m
$argadd src/@Trajectory/NEDcross.m
$argadd src/@Trajectory/atTime.m
$argadd src/@Trajectory/resample.m
$argadd src/@Trajectory/Trajectory.m
$argadd src/@Trajectory/plot.m
$argadd test/trajectoryClassTests.m
$argadd test/CoordinateUnitTests.m
$argadd test/runValueTests.m
$argadd test/TrajectoryUnitTests.m
$argadd test/ValueUnitTests.m
$argadd test/runTestsTypes.m
$argadd test/EnumUnitTests.m
$argadd test/valueClassTests.m
$argadd test/AuxiliaryUnitTests.m
$argadd data/enums/IntegratorType.m
$argadd data/enums/ValueType.m
$argadd data/enums/ReferenceFrame.m
$argadd data/enums/SimulationMode.m
$argadd data/enums/VesselType.m
$argadd data/enums/SimulationType.m
$argadd data/enums/StaticObstacleType.m
$argadd data/enums/SigmaCalculationType.m
$argadd data/enums/CompoundType.m
$argadd data/enums/ConstraintMode.m
$argadd data/enums/ReferenceGenerationType.m
$argadd data/enums/QCalculationType.m
$argadd data/enums/AllocationMode.m
$argadd data/enums/InterpolationType.m
$argadd data/enums/+rrt/TreeType.m
$argadd data/enums/AtomicType.m
$argadd data/enums/RCalculationType.m
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit src/+enum/interpolate.m
argglobal
105argu
if bufexists(fnamemodify("src/+enum/interpolate.m", ":p")) | buffer src/+enum/interpolate.m | else | edit src/+enum/interpolate.m | endif
if &buftype ==# 'terminal'
  silent file src/+enum/interpolate.m
endif
balt src/@Trajectory/Trajectory.m
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
let s:l = 5 - ((1 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 0
tabnext
edit src/assertion/mustBeAOrEmpty.m
argglobal
1argu
if bufexists(fnamemodify("src/assertion/mustBeAOrEmpty.m", ":p")) | buffer src/assertion/mustBeAOrEmpty.m | else | edit src/assertion/mustBeAOrEmpty.m | endif
if &buftype ==# 'terminal'
  silent file src/assertion/mustBeAOrEmpty.m
endif
balt ~/programs/MATLAB/R2023a/toolbox/matlab/matfun/istril.m
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
lcd ~/work/projects/mvm-dpe/gitlab/maritime/types
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
