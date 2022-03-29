import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/alwaysStoppedAnimation.dart'
    as _9a0b;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/animatable.dart'
    as _cacb;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/animation.dart'
    as _e83d;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/animationController.dart'
    as _e79f;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/animationEagerListenerMixin.dart'
    as _4b5e;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/animationLazyListenerMixin.dart'
    as _e2bf;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/animationLocalListenersMixin.dart'
    as _1134;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/animationLocalStatusListenersMixin.dart'
    as _aa5c;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/animationMax.dart'
    as _2250;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/animationMean.dart'
    as _3a88;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/animationMin.dart'
    as _71e9;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/animationWithParentMixin.dart'
    as _7b77;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/catmullRomCurve.dart'
    as _ece5;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/catmullRomSpline.dart'
    as _f65c;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/colorTween.dart'
    as _b2e9;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/compoundAnimation.dart'
    as _0224;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/constantTween.dart'
    as _15d1;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/cubic.dart'
    as _c59e;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/curve.dart'
    as _39b6;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/curve2D.dart'
    as _ed45;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/curve2DSample.dart'
    as _acdc;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/curveTween.dart'
    as _c0a3;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/curvedAnimation.dart'
    as _be45;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/elasticInCurve.dart'
    as _f88b;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/elasticInOutCurve.dart'
    as _6ef9;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/elasticOutCurve.dart'
    as _d4d0;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/flippedCurve.dart'
    as _9e4f;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/flippedTweenSequence.dart'
    as _bd6d;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/intTween.dart'
    as _40f7;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/interval.dart'
    as _f36b;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/parametricCurve.dart'
    as _7a7a;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/proxyAnimation.dart'
    as _bf53;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/rectTween.dart'
    as _a479;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/reverseAnimation.dart'
    as _9b89;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/reverseTween.dart'
    as _b2e2;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/sawTooth.dart'
    as _d137;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/sizeTween.dart'
    as _43b5;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/stepTween.dart'
    as _972a;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/threePointCubic.dart'
    as _8ab0;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/threshold.dart'
    as _0c80;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/trainHoppingAnimation.dart'
    as _c494;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/tween.dart'
    as _2daa;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/tweenSequence.dart'
    as _701f;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/tweenSequenceItem.dart'
    as _3f63;
import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

void loadanimation(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  final loadanimation = _36c2.HydroTable();
  table['loadanimation'] = loadanimation;
  _cacb.loadAnimatable(table: loadanimation, hydroState: hydroState);
  _2daa.loadTween(table: loadanimation, hydroState: hydroState);
  _b2e2.loadReverseTween(table: loadanimation, hydroState: hydroState);
  _b2e9.loadColorTween(table: loadanimation, hydroState: hydroState);
  _43b5.loadSizeTween(table: loadanimation, hydroState: hydroState);
  _a479.loadRectTween(table: loadanimation, hydroState: hydroState);
  _40f7.loadIntTween(table: loadanimation, hydroState: hydroState);
  _972a.loadStepTween(table: loadanimation, hydroState: hydroState);
  _15d1.loadConstantTween(table: loadanimation, hydroState: hydroState);
  _c0a3.loadCurveTween(table: loadanimation, hydroState: hydroState);
  _e2bf.loadAnimationLazyListenerMixin(
      table: loadanimation, hydroState: hydroState);
  _4b5e.loadAnimationEagerListenerMixin(
      table: loadanimation, hydroState: hydroState);
  _1134.loadAnimationLocalListenersMixin(
      table: loadanimation, hydroState: hydroState);
  _aa5c.loadAnimationLocalStatusListenersMixin(
      table: loadanimation, hydroState: hydroState);
  _701f.loadTweenSequence(table: loadanimation, hydroState: hydroState);
  _bd6d.loadFlippedTweenSequence(table: loadanimation, hydroState: hydroState);
  _3f63.loadTweenSequenceItem(table: loadanimation, hydroState: hydroState);
  _e79f.loadAnimationController(table: loadanimation, hydroState: hydroState);
  _e83d.loadAnimation(table: loadanimation, hydroState: hydroState);
  _7a7a.loadParametricCurve(table: loadanimation, hydroState: hydroState);
  _39b6.loadCurve(table: loadanimation, hydroState: hydroState);
  _d137.loadSawTooth(table: loadanimation, hydroState: hydroState);
  _f36b.loadInterval(table: loadanimation, hydroState: hydroState);
  _0c80.loadThreshold(table: loadanimation, hydroState: hydroState);
  _c59e.loadCubic(table: loadanimation, hydroState: hydroState);
  _8ab0.loadThreePointCubic(table: loadanimation, hydroState: hydroState);
  _ed45.loadCurve2D(table: loadanimation, hydroState: hydroState);
  _acdc.loadCurve2DSample(table: loadanimation, hydroState: hydroState);
  _f65c.loadCatmullRomSpline(table: loadanimation, hydroState: hydroState);
  _ece5.loadCatmullRomCurve(table: loadanimation, hydroState: hydroState);
  _9e4f.loadFlippedCurve(table: loadanimation, hydroState: hydroState);
  _f88b.loadElasticInCurve(table: loadanimation, hydroState: hydroState);
  _d4d0.loadElasticOutCurve(table: loadanimation, hydroState: hydroState);
  _6ef9.loadElasticInOutCurve(table: loadanimation, hydroState: hydroState);
  _9a0b.loadAlwaysStoppedAnimation(
      table: loadanimation, hydroState: hydroState);
  _7b77.loadAnimationWithParentMixin(
      table: loadanimation, hydroState: hydroState);
  _bf53.loadProxyAnimation(table: loadanimation, hydroState: hydroState);
  _9b89.loadReverseAnimation(table: loadanimation, hydroState: hydroState);
  _be45.loadCurvedAnimation(table: loadanimation, hydroState: hydroState);
  _c494.loadTrainHoppingAnimation(table: loadanimation, hydroState: hydroState);
  _0224.loadCompoundAnimation(table: loadanimation, hydroState: hydroState);
  _3a88.loadAnimationMean(table: loadanimation, hydroState: hydroState);
  _2250.loadAnimationMax(table: loadanimation, hydroState: hydroState);
  _71e9.loadAnimationMin(table: loadanimation, hydroState: hydroState);
}
