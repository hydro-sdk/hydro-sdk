import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/accessibilityFeatures.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/callbackHandle.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/canvas.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/channelBuffers.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/codec.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/color.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/colorFilter.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/flutterView.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/flutterWindow.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/fontFeature.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/fontWeight.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/frameInfo.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/frameTiming.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/image.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/imageDescriptor.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/imageShader.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/immutableBuffer.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/isolateNameServer.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/lineMetrics.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/locale.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/maskFilter.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/offset.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/offsetBase.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/paint.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/paragraph.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/paragraphBuilder.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/paragraphConstraints.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/paragraphStyle.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/path.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/pathMetric.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/pathMetricIterator.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/pathMetrics.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/picture.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/pictureRecorder.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/platformConfiguration.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/platformDispatcher.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/pluginUtilities.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/pointerData.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/pointerDataPacket.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/rRect.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/rSTransform.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/radius.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/rect.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/scene.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/sceneBuilder.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/sceneHost.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/semanticsAction.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/semanticsFlag.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/semanticsUpdate.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/semanticsUpdateBuilder.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/shadow.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/singletonFlutterWindow.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/size.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/strutStyle.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/tangent.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/textBox.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/textDecoration.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/textHeightBehavior.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/textPosition.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/textRange.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/textStyle.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/vertices.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/viewConfiguration.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/windowPadding.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadui({required HydroState hydroState, required HydroTable table}) {
  final ui = HydroTable();
  table['ui'] = ui;
  loadFlutterView(table: ui, hydroState: hydroState);
  loadFlutterWindow(table: ui, hydroState: hydroState);
  loadSingletonFlutterWindow(table: ui, hydroState: hydroState);
  loadAccessibilityFeatures(table: ui, hydroState: hydroState);
  loadChannelBuffers(table: ui, hydroState: hydroState);
  loadCallbackHandle(table: ui, hydroState: hydroState);
  loadPluginUtilities(table: ui, hydroState: hydroState);
  loadFontWeight(table: ui, hydroState: hydroState);
  loadFontFeature(table: ui, hydroState: hydroState);
  loadTextDecoration(table: ui, hydroState: hydroState);
  loadTextHeightBehavior(table: ui, hydroState: hydroState);
  loadTextStyle(table: ui, hydroState: hydroState);
  loadParagraphStyle(table: ui, hydroState: hydroState);
  loadStrutStyle(table: ui, hydroState: hydroState);
  loadTextBox(table: ui, hydroState: hydroState);
  loadTextPosition(table: ui, hydroState: hydroState);
  loadTextRange(table: ui, hydroState: hydroState);
  loadParagraphConstraints(table: ui, hydroState: hydroState);
  loadLineMetrics(table: ui, hydroState: hydroState);
  loadParagraph(table: ui, hydroState: hydroState);
  loadParagraphBuilder(table: ui, hydroState: hydroState);
  loadPointerData(table: ui, hydroState: hydroState);
  loadPointerDataPacket(table: ui, hydroState: hydroState);
  loadColor(table: ui, hydroState: hydroState);
  loadPaint(table: ui, hydroState: hydroState);
  loadImage(table: ui, hydroState: hydroState);
  loadFrameInfo(table: ui, hydroState: hydroState);
  loadCodec(table: ui, hydroState: hydroState);
  loadPath(table: ui, hydroState: hydroState);
  loadTangent(table: ui, hydroState: hydroState);
  loadPathMetrics(table: ui, hydroState: hydroState);
  loadPathMetricIterator(table: ui, hydroState: hydroState);
  loadPathMetric(table: ui, hydroState: hydroState);
  loadMaskFilter(table: ui, hydroState: hydroState);
  loadColorFilter(table: ui, hydroState: hydroState);
  loadImageShader(table: ui, hydroState: hydroState);
  loadVertices(table: ui, hydroState: hydroState);
  loadCanvas(table: ui, hydroState: hydroState);
  loadPicture(table: ui, hydroState: hydroState);
  loadPictureRecorder(table: ui, hydroState: hydroState);
  loadShadow(table: ui, hydroState: hydroState);
  loadImmutableBuffer(table: ui, hydroState: hydroState);
  loadImageDescriptor(table: ui, hydroState: hydroState);
  loadSemanticsAction(table: ui, hydroState: hydroState);
  loadSemanticsFlag(table: ui, hydroState: hydroState);
  loadSemanticsUpdateBuilder(table: ui, hydroState: hydroState);
  loadSemanticsUpdate(table: ui, hydroState: hydroState);
  loadOffsetBase(table: ui, hydroState: hydroState);
  loadOffset(table: ui, hydroState: hydroState);
  loadSize(table: ui, hydroState: hydroState);
  loadRect(table: ui, hydroState: hydroState);
  loadRadius(table: ui, hydroState: hydroState);
  loadRRect(table: ui, hydroState: hydroState);
  loadRSTransform(table: ui, hydroState: hydroState);
  loadScene(table: ui, hydroState: hydroState);
  loadSceneBuilder(table: ui, hydroState: hydroState);
  loadSceneHost(table: ui, hydroState: hydroState);
  loadPlatformDispatcher(table: ui, hydroState: hydroState);
  loadPlatformConfiguration(table: ui, hydroState: hydroState);
  loadViewConfiguration(table: ui, hydroState: hydroState);
  loadFrameTiming(table: ui, hydroState: hydroState);
  loadWindowPadding(table: ui, hydroState: hydroState);
  loadLocale(table: ui, hydroState: hydroState);
  loadIsolateNameServer(table: ui, hydroState: hydroState);
}
