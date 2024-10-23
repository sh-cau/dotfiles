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
badd +1 README.md
badd +74 src/@DynamicOptimizationProblem/DynamicOptimizationProblem.m
badd +161 src/@DynamicOptimizationProblem/construct.m
badd +17 examples/example_dop_cybership.m
badd +1 .git/hooks/pre-push.sample
badd +32 .git/hooks/pre-push
badd +5 test/ExampleUnitTests.m
badd +4 ~/work/projects/mvm-dpe/gitlab/maritime/control/test/ExampleUnitTests.m
badd +16 examples/example_dop_goddard.m
badd +23 data/enums/ParameterizationType.m
badd +1 data/enums/TranscriptionType.m
badd +14 src/@DynamicOptimizationProblem/solve.m
badd +1 test/DynamicOptimizationProblemUnitTests.m
badd +1 src/@DynamicOptimizationProblem/getInputWeightsInStage.m
badd +5 man://import-im6.q16(1)
badd +1 test/runTestsDynamicOptimization.m
badd +21 src/@DynamicOptimizationProblem/reconstruct.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/types/data/enums/InterpolationType.m
badd +1 dependencies/types/src/+base/@ValueBase/isState.m
badd +1 dependencies/types/src/+base/@ValueBase/isAbstract.m
badd +1 dependencies/types/src/+base/@ValueBase/renew.m
badd +1 dependencies/types/src/+base/@ValueBase/toStruct.m
badd +1 dependencies/types/src/+base/@ValueBase/hasSubset.m
badd +1 dependencies/types/src/+base/@ValueBase/toCell.m
badd +1 dependencies/types/src/+base/@ValueBase/ValueBase.m
badd +1 dependencies/types/src/+base/@ValueBase/isInput.m
badd +1 dependencies/types/src/+base/@ValueBase/subset.m
badd +1 dependencies/types/src/assertion/mustBeInputTypeOrNone.m
badd +1 dependencies/types/src/assertion/mustHaveSameNumberOfRows.m
badd +1 dependencies/types/src/assertion/mustHaveSameNumberOfColumns.m
badd +1 dependencies/types/src/assertion/mustBeAOrEmpty.m
badd +1 dependencies/types/src/assertion/mustBeStateOrAbstract.m
badd +1 dependencies/types/src/assertion/mustBeInput.m
badd +1 dependencies/types/src/assertion/mustBeStateType.m
badd +1 dependencies/types/src/assertion/mustBeSquare.m
badd +1 dependencies/types/src/assertion/mustBePositiveOrMinusOne.m
badd +1 dependencies/types/src/assertion/mustBeStateTypeOrNone.m
badd +1 dependencies/types/src/assertion/mustBePositiveDefinite.m
badd +1 dependencies/types/src/assertion/mustBeInputType.m
badd +1 dependencies/types/src/assertion/mustBeInputTrajectory.m
badd +1 dependencies/types/src/assertion/mustBeState.m
badd +1 dependencies/types/src/@Coordinate/Coordinate.m
badd +1 dependencies/types/src/@Value/Value.m
badd +1 dependencies/types/src/+aux/pathParameter.m
badd +1 dependencies/types/src/+aux/lla2flat.m
badd +1 dependencies/types/src/+aux/angleDiff.m
badd +1 dependencies/types/src/+aux/crossTrackError.m
badd +1 dependencies/types/src/+aux/rgb2hex.m
badd +1 dependencies/types/src/+aux/m2nm.m
badd +1 dependencies/types/src/+aux/flat2lla.m
badd +1 dependencies/types/src/+aux/R3.m
badd +1 dependencies/types/src/+aux/nm2m.m
badd +1 dependencies/types/src/+aux/latlondeg2flat.m
badd +1 dependencies/types/src/+aux/kn2ms.m
badd +1 dependencies/types/src/+aux/angleDiffWGS.m
badd +1 dependencies/types/src/+aux/lineOfSightAngle.m
badd +1 dependencies/types/src/+aux/latlondeg2dec.m
badd +1 dependencies/types/src/+aux/ms2kn.m
badd +1 dependencies/types/src/+rrt/@BaseTree/BaseTree.m
badd +1 dependencies/types/src/+rrt/@BaseTree/toTikz.m
badd +1 dependencies/types/src/+rrt/@BaseTree/plot.m
badd +1 dependencies/types/src/+rrt/@ListTree/ListTree.m
badd +1 dependencies/types/src/+rrt/@BaseNode/BaseNode.m
badd +1 dependencies/types/src/+rrt/@BaseNode/plot.m
badd +1 dependencies/types/src/+rrt/@Dataset/Dataset.m
badd +1 dependencies/types/src/+rrt/@KDTree/plotRecursive.m
badd +1 dependencies/types/src/+rrt/@KDTree/KDTree.m
badd +1 dependencies/types/src/+rrt/@MotionPrimitive/MotionPrimitive.m
badd +1 dependencies/types/src/+rrt/@MotionPrimitive/toTikz.m
badd +1 dependencies/types/src/+rrt/@MotionPrimitive/toStruct.m
badd +1 dependencies/types/src/+rrt/@MotionPrimitive/plot.m
badd +1 dependencies/types/src/+enum/isState.m
badd +1 dependencies/types/src/+enum/isExtrapolating.m
badd +1 dependencies/types/src/+enum/getValueName.m
badd +1 dependencies/types/src/+enum/isVariableStep.m
badd +1 dependencies/types/src/+enum/interpolationToChar.m
badd +1 dependencies/types/src/+enum/getDefaultStateType.m
badd +1 dependencies/types/src/+enum/getDefaultInputType.m
badd +1 dependencies/types/src/+enum/interpolate.m
badd +1 dependencies/types/src/+enum/getNumberOfValues.m
badd +1 dependencies/types/src/+enum/getVesselInfo.m
badd +1 dependencies/types/src/+enum/isFixedStep.m
badd +1 dependencies/types/src/+enum/getIntegratorFunctionHandle.m
badd +1 dependencies/types/src/+enum/isConstant.m
badd +1 dependencies/types/src/+enum/getAtomicValues.m
badd +1 dependencies/types/src/+enum/getInterpolationName.m
badd +1 dependencies/types/src/+enum/isInput.m
badd +1 dependencies/types/src/+enum/getUnit.m
badd +1 dependencies/types/src/+enum/getIntegratorName.m
badd +1 dependencies/types/src/+enum/getDisplayNames.m
badd +1 dependencies/types/src/+enum/isExplicit.m
badd +1 dependencies/types/src/@Trajectory/toTikz.m
badd +1 dependencies/types/src/@Trajectory/NEDplot.m
badd +1 dependencies/types/src/@Trajectory/NEDcross.m
badd +1 dependencies/types/src/@Trajectory/atTime.m
badd +1 dependencies/types/src/@Trajectory/resample.m
badd +1 dependencies/types/src/@Trajectory/Trajectory.m
badd +1 dependencies/types/src/@Trajectory/plot.m
badd +1 dependencies/types/test/trajectoryClassTests.m
badd +1 dependencies/types/test/CoordinateUnitTests.m
badd +1 dependencies/types/test/runValueTests.m
badd +1 dependencies/types/test/TrajectoryUnitTests.m
badd +1 dependencies/types/test/ValueUnitTests.m
badd +1 dependencies/types/test/runTestsTypes.m
badd +1 dependencies/types/test/EnumUnitTests.m
badd +1 dependencies/types/test/valueClassTests.m
badd +1 dependencies/types/test/AuxiliaryUnitTests.m
badd +1 dependencies/types/data/enums/IntegratorType.m
badd +1 dependencies/types/data/enums/ValueType.m
badd +1 dependencies/types/data/enums/ReferenceFrame.m
badd +1 dependencies/types/data/enums/SimulationMode.m
badd +1 dependencies/types/data/enums/VesselType.m
badd +1 dependencies/types/data/enums/SimulationType.m
badd +1 dependencies/types/data/enums/StaticObstacleType.m
badd +1 dependencies/types/data/enums/SigmaCalculationType.m
badd +1 dependencies/types/data/enums/ConstraintMode.m
badd +1 dependencies/types/data/enums/ReferenceGenerationType.m
badd +1 dependencies/types/data/enums/QCalculationType.m
badd +1 dependencies/types/data/enums/AllocationMode.m
badd +1 dependencies/types/data/enums/InterpolationType.m
badd +1 dependencies/types/data/enums/+rrt/TreeType.m
badd +1 dependencies/types/data/enums/RCalculationType.m
badd +1 dependencies/numericIntegration/src/euler/euler1e.m
badd +1 dependencies/numericIntegration/src/euler/euler1ix.m
badd +1 dependencies/numericIntegration/src/euler/examples/hoRhsFun.m
badd +1 dependencies/numericIntegration/src/euler/examples/hoMain.m
badd +1 dependencies/numericIntegration/src/euler/euler1ex.m
badd +1 dependencies/numericIntegration/src/euler/euler1ej.m
badd +1 dependencies/numericIntegration/src/ruku4/ruku4ix.m
badd +1 dependencies/numericIntegration/src/ruku4/ruku4e.m
badd +1 dependencies/numericIntegration/src/ruku4/ruku4ex.m
badd +1 dependencies/numericIntegration/test/runTestsNumericIntegration.m
badd +1 dependencies/model/src/+base/@Nomoto/Nomoto.m
badd +1 dependencies/model/src/+base/@Nomoto/getLinearSubsystem.m
badd +1 dependencies/model/src/+base/@Nomoto/rhs.m
badd +1 dependencies/model/src/+base/@GaussianProcess/squaredExponentialKernel.m
badd +1 dependencies/model/src/+base/@GaussianProcess/fit.m
badd +1 dependencies/model/src/+base/@GaussianProcess/diffSquaredExponentialKernel.m
badd +1 dependencies/model/src/+base/@GaussianProcess/predict.m
badd +1 dependencies/model/src/+base/@GaussianProcess/GaussianProcess.m
badd +1 dependencies/model/src/+base/@LagrangianNeuralNetwork/LagrangianNeuralNetwork.m
badd +1 dependencies/model/src/+base/@LagrangianNeuralNetwork/predict.m
badd +1 dependencies/model/src/+base/@Model/simulate.m
badd +1 dependencies/model/src/+base/@Model/clean.m
badd +1 dependencies/model/src/+base/@Model/Model.m
badd +1 dependencies/model/src/+base/@Model/stepf.m
badd +1 dependencies/model/src/+base/@Model/measState.m
badd +1 dependencies/model/src/+base/@Model/initialize.m
badd +1 dependencies/model/src/+base/@DatabasedModel/DatabasedModel.m
badd +1 dependencies/model/src/+base/@DatabasedModel/rhs.m
badd +1 dependencies/model/src/+base/@NeuralNetwork/NeuralNetwork.m
badd +1 dependencies/model/src/+base/@NeuralNetwork/predict.m
badd +1 dependencies/model/src/+base/@LinearSystem/LinearSystem.m
badd +1 dependencies/model/src/+base/@ThreeDof/nonlinearDampingMatrix.m
badd +1 dependencies/model/src/+base/@ThreeDof/setSysMatrices.m
badd +1 dependencies/model/src/+base/@ThreeDof/coriolisMatrix.m
badd +1 dependencies/model/src/+base/@ThreeDof/ThreeDof.m
badd +1 dependencies/model/src/+base/@ThreeDof/Rz.m
badd +1 dependencies/model/src/+base/@ThreeDof/rhs.m
badd +1 dependencies/model/src/+slsystems/IECFastFerry.m
badd +1 dependencies/model/src/+slsystems/IECTanker.m
badd +1 dependencies/model/src/+slsystems/Cybership.m
badd +1 dependencies/model/src/+slsystems/IECContainer.m
badd +1 dependencies/model/src/korsfjord/Korsfjord.m
badd +1 dependencies/model/src/korsfjord/KorsfjordSym.m
badd +1 dependencies/model/src/KinematicSym.m
badd +1 dependencies/model/src/propulsion/ActuatorConfiguration.m
badd +1 dependencies/model/src/propulsion/Actuator.m
badd +1 dependencies/model/src/propulsion/actuators/Impeller.m
badd +1 dependencies/model/src/propulsion/actuators/Propeller.m
badd +1 dependencies/model/src/propulsion/actuators/Rudder.m
badd +1 dependencies/model/src/propulsion/actuators/PropellerRudder.m
badd +1 dependencies/model/src/propulsion/actuators/AzimuthThruster.m
badd +1 dependencies/model/src/FirstOrderNomoto.m
badd +1 dependencies/model/src/databased/GPRWrapper.m
badd +1 dependencies/model/src/MWE/HarmonicOscillator.m
badd +1 dependencies/model/src/MWE/SinglePendulumCartNN.m
badd +1 dependencies/model/src/MWE/@SinglePendulumCart/single_pendulum_cart_rhs.m
badd +1 dependencies/model/src/MWE/@SinglePendulumCart/SinglePendulumCart.m
badd +1 dependencies/model/src/MWE/SinglePendulumCartGPR.m
badd +1 dependencies/model/src/MWE/PointMass.m
badd +1 dependencies/model/src/MWE/GoddardRocket.m
badd +2 dependencies/model/src/MWE/@SinglePendulum/single_pendulum_lagrangian.m
badd +1 dependencies/model/src/MWE/@SinglePendulum/single_pendulum_rhs.m
badd +1 dependencies/model/src/MWE/@SinglePendulum/SinglePendulum.m
badd +1 dependencies/model/src/MWE/@DoublePendulumCart/DoublePendulumCart.m
badd +1 dependencies/model/src/MWE/@DoublePendulumCart/double_pendulum_cart_rhs.m
badd +1 dependencies/model/src/MWE/SinglePendulumCartLNN.m
badd +1 dependencies/model/src/+interface/IFlatParameterization.m
badd +1 dependencies/model/src/+interface/IFeedbackLinearization.m
badd +1 dependencies/model/src/+interface/@SLThreeDof/stepImpl.m
badd +1 dependencies/model/src/+interface/@SLThreeDof/SLThreeDof.m
badd +1 dependencies/model/src/+interface/@SLModel/SLModel.m
badd +1 dependencies/model/src/+interface/@SLNomoto/stepImpl.m
badd +1 dependencies/model/src/+interface/@SLNomoto/SLNomoto.m
badd +1 dependencies/model/src/cybership/CybershipFPPose.m
badd +1 dependencies/model/src/cybership/CybershipFBLFPPose.m
badd +1 dependencies/model/src/cybership/CybershipFBLPose.m
badd +1 dependencies/model/src/cybership/Cybership.m
badd +1 dependencies/model/src/cybership/CybershipSym.m
badd +1 dependencies/model/src/cybership/CybershipPropulsion.m
badd +1 dependencies/model/src/Kinematic.m
badd +1 dependencies/model/src/estimation/LumpedDisturbance.m
badd +1 dependencies/model/src/estimation/codegen/generateJacobiansForCombinedLumpedAndWindDisturbanceModel.m
badd +1 dependencies/model/src/estimation/CombinedLumpedAndWindDisturbanceSym.m
badd +1 dependencies/model/src/estimation/CombinedLumpedAndWindDisturbance.m
badd +1 dependencies/model/src/estimation/HarmonicOscillatorDampingEstimationModel.m
badd +1 dependencies/model/src/iec/IECContainerSym.m
badd +1 dependencies/model/src/iec/IECTankerSym.m
badd +1 dependencies/model/src/iec/IECFastFerry.m
badd +1 dependencies/model/src/iec/IECTanker.m
badd +1 dependencies/model/src/iec/IECFastFerrySym.m
badd +1 dependencies/model/src/iec/IECContainer.m
badd +1 dependencies/model/test/cybershipPropulsionFeasibleCheck.m
badd +1 dependencies/model/test/ThreeDOFUnitTests.m
badd +1 dependencies/model/test/NomotoUnitTests.m
badd +1 dependencies/model/test/DatabasedModelUnitTests.m
badd +1 dependencies/model/test/cybershipPropulsionTests.m
badd +1 dependencies/model/test/runTestsModel.m
badd +1 dependencies/model/test/CybershipUnitTests.m
badd +1 dependencies/model/test/propulsionTests.m
badd +1 dependencies/model/test/ModelUnitTests.m
badd +1 dependencies/model/examples/databasedModels.m
badd +1 dependencies/environment/src/@Seastate/Seastate.m
badd +1 dependencies/environment/src/@PathCurve/switchWaypoint.m
badd +1 dependencies/environment/src/@PathCurve/getLOSReference.m
badd +1 dependencies/environment/src/@PathCurve/toTikz.m
badd +1 dependencies/environment/src/@PathCurve/getBoundingBox.m
badd +1 dependencies/environment/src/@PathCurve/toStruct.m
badd +1 dependencies/environment/src/@PathCurve/PathCurve.m
badd +1 dependencies/environment/src/@PathCurve/getLength.m
badd +1 dependencies/environment/src/@PathCurve/transform.m
badd +1 dependencies/environment/src/@PathCurve/plot.m
badd +1 dependencies/environment/src/+base/@Track/Track.m
badd +1 dependencies/environment/src/@GeoJSONAPI/extractChartObjects.m
badd +1 dependencies/environment/src/@GeoJSONAPI/extractTargets.m
badd +1 dependencies/environment/src/@GeoJSONAPI/GeoJSONAPI.m
badd +1 dependencies/environment/src/@GeoJSONAPI/readJSON.m
badd +1 dependencies/environment/src/@GeoJSONAPI/extractWaypoints.m
badd +1 dependencies/environment/src/@GeoJSONAPI/extractOwnship.m
badd +1 dependencies/environment/src/@Point/Point.m
badd +1 dependencies/environment/src/@Obstacle/Obstacle.m
badd +1 dependencies/environment/src/@Obstacle/plot.m
badd +1 dependencies/environment/src/@Environment/configureTrack.m
badd +1 dependencies/environment/src/@Environment/update.m
badd +1 dependencies/environment/src/@Environment/configureOwnship.m
badd +1 dependencies/environment/src/@Environment/configureTSS.m
badd +1 dependencies/environment/src/@Environment/configureTargets.m
badd +1 dependencies/environment/src/@Environment/Environment.m
badd +1 dependencies/environment/src/@Environment/configureObstacles.m
badd +1 dependencies/environment/src/@Environment/save2Tikz.m
badd +1 dependencies/environment/src/@Environment/types2cell.m
badd +1 dependencies/environment/src/@Environment/updateColregSituation.m
badd +1 dependencies/environment/src/@Environment/updateTrack.m
badd +1 dependencies/environment/src/@Environment/plot.m
badd +1 dependencies/environment/src/@Polygon/intersectionSutherlandHodgman.m
badd +1 dependencies/environment/src/@Polygon/getConvexHull.m
badd +1 dependencies/environment/src/@Polygon/Polygon.m
badd +1 dependencies/environment/src/@Polygon/intersect.m
badd +1 dependencies/environment/src/@Polygon/findHalfspaces.m
badd +1 dependencies/environment/src/@Polygon/findCircle.m
badd +1 dependencies/environment/src/@Polygon/findVertices.m
badd +1 dependencies/environment/src/@Polygon/fromVertices.m
badd +1 dependencies/environment/src/@Polygon/toTikz.m
badd +1 dependencies/environment/src/@Polygon/localCopy.m
badd +1 dependencies/environment/src/@Polygon/isPointInPoly.m
badd +1 dependencies/environment/src/@Polygon/reduce.m
badd +1 dependencies/environment/src/@Polygon/scale.m
badd +1 dependencies/environment/src/@Polygon/move.m
badd +1 dependencies/environment/src/@Polygon/reduceDouglasPeucker.m
badd +1 dependencies/environment/src/@Polygon/plot.m
badd +1 dependencies/environment/src/@Waypoints/switchWaypoint.m
badd +1 dependencies/environment/src/@Waypoints/Waypoints.m
badd +1 dependencies/environment/src/@Waypoints/getLOSReference.m
badd +1 dependencies/environment/src/@Waypoints/toTikz.m
badd +1 dependencies/environment/src/@Waypoints/getBoundingBox.m
badd +1 dependencies/environment/src/@Waypoints/toStruct.m
badd +1 dependencies/environment/src/@Waypoints/getLegInfo.m
badd +1 dependencies/environment/src/@Waypoints/addWaypoints.m
badd +1 dependencies/environment/src/@Waypoints/getInterpolation.m
badd +1 dependencies/environment/src/@Waypoints/fromStruct.m
badd +1 dependencies/environment/src/@Waypoints/plot.m
badd +1 dependencies/environment/src/Boundary.m
badd +1 dependencies/environment/src/@Vessel/toStruct.m
badd +1 dependencies/environment/src/@Vessel/linearPrediction.m
badd +1 dependencies/environment/src/@Vessel/Vessel.m
badd +1 dependencies/environment/src/@Vessel/setTrajectory.m
badd +1 dependencies/environment/src/@Vessel/fromStruct.m
badd +1 dependencies/environment/src/@Vessel/plot.m
badd +1 dependencies/environment/src/@TSS/TSS.m
badd +1 dependencies/environment/src/@TSS/plot.m
badd +1 dependencies/environment/src/@VelocityObstacle/getCollisionCone.m
badd +1 dependencies/environment/src/@VelocityObstacle/getTCPA.m
badd +1 dependencies/environment/src/@VelocityObstacle/getDCPA.m
badd +1 dependencies/environment/src/@VelocityObstacle/toTikz.m
badd +1 dependencies/environment/src/@VelocityObstacle/VelocityObstacle.m
badd +1 dependencies/environment/src/@VelocityObstacle/initialize.m
badd +1 dependencies/environment/src/@VelocityObstacle/mapTarget.m
badd +1 dependencies/environment/src/@VelocityObstacle/plot.m
badd +1 dependencies/environment/src/auxiliaries/@GJK/GJK.m
badd +1 dependencies/environment/src/auxiliaries/@GJK/getSupportingPoint.m
badd +1 dependencies/environment/src/auxiliaries/@GJK/findClosestPointOnLine.m
badd +1 dependencies/environment/src/auxiliaries/@GJK/modifySimplex.m
badd +1 dependencies/environment/src/auxiliaries/@GJK/findClosestPointOnTriangle.m
badd +1 dependencies/environment/test/GeoJSONAPIUnitTests.m
badd +21 dependencies/environment/test/obstacleTests.m
badd +1 dependencies/environment/test/@PathCurveUnitTests/test_getBoundingBox.m
badd +1 dependencies/environment/test/@PathCurveUnitTests/test_toStruct.m
badd +1 dependencies/environment/test/@PathCurveUnitTests/PathCurveUnitTests.m
badd +1 dependencies/environment/test/@PathCurveUnitTests/test_getLOSReference.m
badd +1 dependencies/environment/test/@PathCurveUnitTests/test_plot.m
badd +1 dependencies/environment/test/@PathCurveUnitTests/test_toTikz.m
badd +1 dependencies/environment/test/@PathCurveUnitTests/test_transform.m
badd +1 dependencies/environment/test/runTestsEnvironment.m
badd +1 dependencies/environment/test/VesselUnitTests.m
badd +1 dependencies/environment/test/ObstacleUnitTests.m
badd +1 dependencies/environment/test/exampleScenario.m
badd +1 dependencies/environment/test/velocityObstacleTests.m
badd +1 dependencies/environment/test/@WaypointsUnitTests/test_structs.m
badd +1 dependencies/environment/test/@WaypointsUnitTests/test_addWaypoints.m
badd +1 dependencies/environment/test/@WaypointsUnitTests/test_getLOSReference.m
badd +1 dependencies/environment/test/@WaypointsUnitTests/test_whichWaypoints.m
badd +1 dependencies/environment/test/@WaypointsUnitTests/WaypointsUnitTests.m
badd +1 dependencies/environment/test/@WaypointsUnitTests/test_createNED.m
badd +1 dependencies/environment/test/@WaypointsUnitTests/test_createGeo.m
badd +1 dependencies/environment/test/@WaypointsUnitTests/test_transform.m
badd +1 dependencies/environment/test/PolygonUnitTests.m
badd +1 dependencies/environment/test/targetTests.m
badd +1 dependencies/environment/examples/paths/din_scenario_4.m
badd +1 dependencies/environment/examples/paths/din_scenario_1.m
badd +1 dependencies/environment/examples/paths/din_scenario_2.m
badd +1 dependencies/environment/examples/paths/din_scenario_3.m
badd +1 dependencies/environment/examples/simpleExample.m
badd +1 dependencies/environment/data/enums/LOSMode.m
badd +1 dependencies/environment/data/enums/PathType.m
badd +1 dependencies/environment/data/enums/+polygon/IntersectionMethod.m
badd +1 dependencies/environment/data/enums/+polygon/ReductionMethod.m
badd +1 ~/work/projects/mvm-dpe/gitlab/maritime/types/src/assertion/mustHaveSameNumberOfColumns.m
badd +6 src/@DynamicOptimizationProblem/setInputReference.m
badd +6 src/@DynamicOptimizationProblem/setStateReference.m
badd +7 src/@DynamicOptimizationProblem/setReference.m
badd +1 src/@DynamicOptimizationProblem/getReference.m
badd +9 src/@DynamicOptimizationProblem/plot.m
badd +1 health://
badd +1 data/enums/CallSignatureType.m
badd +8 dependencies.yaml
badd +0 src/+enum/isReferenceBased.m
badd +0 src/+enum/isStateReferenceType.m
badd +1 src/+enum/isInputReferenceType.m
badd +0 data/enums/ReferenceType.m
badd +102 ~/.config/tmuxinator/maritimeLab.yml
argglobal
%argdel
$argadd src/@DynamicOptimizationProblem/construct.m
$argadd src/@DynamicOptimizationProblem/DynamicOptimizationProblem.m
$argadd src/@DynamicOptimizationProblem/setReference.m
$argadd src/@DynamicOptimizationProblem/getReference.m
$argadd src/@DynamicOptimizationProblem/solve.m
$argadd src/@DynamicOptimizationProblem/reconstruct.m
$argadd src/@DynamicOptimizationProblem/getInputWeightsInStage.m
$argadd src/@DynamicOptimizationProblem/setStateReference.m
$argadd src/@DynamicOptimizationProblem/plot.m
$argadd src/@DynamicOptimizationProblem/setInputReference.m
$argadd src/+enum/isReferenceBased.m
$argadd src/+enum/isStateReferenceType.m
$argadd src/+enum/isInputReferenceType.m
$argadd test/runTestsDynamicOptimization.m
$argadd test/ExampleUnitTests.m
$argadd test/DynamicOptimizationProblemUnitTests.m
$argadd examples/example_dop_cybership.m
$argadd examples/example_dop_goddard.m
$argadd data/enums/TranscriptionType.m
$argadd data/enums/ReferenceType.m
$argadd data/enums/ParameterizationType.m
edit test/DynamicOptimizationProblemUnitTests.m
argglobal
13argu
if bufexists(fnamemodify("test/DynamicOptimizationProblemUnitTests.m", ":p")) | buffer test/DynamicOptimizationProblemUnitTests.m | else | edit test/DynamicOptimizationProblemUnitTests.m | endif
if &buftype ==# 'terminal'
  silent file test/DynamicOptimizationProblemUnitTests.m
endif
balt src/@DynamicOptimizationProblem/solve.m
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
let s:l = 57 - ((49 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 57
normal! 07|
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
