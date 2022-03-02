import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/painting/text_span.dart' as _1584;
import 'package:flutter/src/rendering/editable.dart' as _7eb4;
import 'package:flutter/src/scheduler/ticker.dart' as _e067;
import 'package:flutter/src/services/autofill.dart' as _7283;
import 'package:flutter/src/services/text_editing.dart' as _7986;
import 'package:flutter/src/services/text_input.dart' as _8577;
import 'package:flutter/src/services/text_layout_metrics.dart' as _0f57;
import 'package:flutter/src/widgets/automatic_keep_alive.dart' as _78f9;
import 'package:flutter/src/widgets/binding.dart' as _3e19;
import 'package:flutter/src/widgets/editable_text.dart' as _d800;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/router.dart' as _f6ef;
import 'package:flutter/src/widgets/text_editing_action_target.dart' as _68eb;
import 'package:flutter/src/widgets/text_selection.dart' as _578c;
import 'package:flutter/src/widgets/ticker_provider.dart' as _3e16;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedEditableTextState
    extends _36c2.VMManagedBox<_d800.EditableTextState> {
  VMManagedEditableTextState(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getCurrentAutofillScope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.currentAutofillScope;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_7283.AutofillScope?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getWantKeepAlive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.wantKeepAlive,
      ];
    });
    table['getCutEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.cutEnabled,
      ];
    });
    table['getCopyEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.copyEnabled,
      ];
    });
    table['getPasteEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.pasteEnabled,
      ];
    });
    table['getSelectAllEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.selectAllEnabled,
      ];
    });
    table['getTextLayoutMetrics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_0f57.TextLayoutMetrics>(
            object: vmObject.textLayoutMetrics,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getReadOnly'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.readOnly,
      ];
    });
    table['getObscureText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.obscureText,
      ];
    });
    table['getSelectionEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.selectionEnabled,
      ];
    });
    table['debugAssertLayoutUpToDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugAssertLayoutUpToDate();
      return [];
    });
    table['setSelection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.setSelection(
          _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[2]));
      return [];
    });
    table['setTextEditingValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.setTextEditingValue(
          _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[2]));
      return [];
    });
    table['copySelection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.copySelection(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['cutSelection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.cutSelection(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['pasteText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.pasteText(_36c2.maybeUnBoxEnum(
                values: _8577.SelectionChangedCause.values,
                boxedEnum: luaCallerArguments[1])),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['selectAll'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.selectAll(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['initState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initState();
      return [];
    });
    table['didChangeDependencies'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didChangeDependencies();
      return [];
    });
    table['didUpdateWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didUpdateWidget(
          _36c2.maybeUnBoxAndBuildArgument<_d800.EditableText, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['getCurrentTextEditingValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8577.TextEditingValue>(
            object: vmObject.currentTextEditingValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['updateEditingValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.updateEditingValue(_36c2.maybeUnBoxAndBuildArgument<
          _8577.TextEditingValue,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['performAction'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.performAction(_36c2.maybeUnBoxEnum(
          values: _8577.TextInputAction.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['performPrivateCommand'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.performPrivateCommand(
          luaCallerArguments[1],
          _36c2.maybeUnBoxAndBuildArgument<
              _fac9.Map<_fac9.String, _fac9.dynamic>,
              _fac9.String>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['updateFloatingCursor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.updateFloatingCursor(_36c2.maybeUnBoxAndBuildArgument<
          _8577.RawFloatingCursorPoint,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['beginBatchEdit'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.beginBatchEdit();
      return [];
    });
    table['endBatchEdit'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.endBatchEdit();
      return [];
    });
    table['connectionClosed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.connectionClosed();
      return [];
    });
    table['requestKeyboard'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.requestKeyboard();
      return [];
    });
    table['didChangeMetrics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didChangeMetrics();
      return [];
    });
    table['getRenderEditable'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7eb4.RenderEditable>(
            object: vmObject.renderEditable,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getTextEditingValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8577.TextEditingValue>(
            object: vmObject.textEditingValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['userUpdateTextEditingValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.userUpdateTextEditingValue(
          _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[2]));
      return [];
    });
    table['bringIntoView'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.bringIntoView(
          _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['showToolbar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.showToolbar(),
      ];
    });
    table['hideToolbar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.hideToolbar(luaCallerArguments[1]);
      return [];
    });
    table['toggleToolbar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.toggleToolbar();
      return [];
    });
    table['getAutofillId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.autofillId,
      ];
    });
    table['getTextInputConfiguration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8577.TextInputConfiguration>(
            object: vmObject.textInputConfiguration,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['autofill'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.autofill(_36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['showAutocorrectionPromptRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.showAutocorrectionPromptRect(
          luaCallerArguments[1], luaCallerArguments[2]);
      return [];
    });
    table['build'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.build(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['buildTextSpan'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_1584.TextSpan>(
            object: vmObject.buildTextSpan(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['deactivate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.deactivate();
      return [];
    });
    table['didPopRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.didPopRoute(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['didPushRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.didPushRoute(luaCallerArguments[1]),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['didPushRouteInformation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.didPushRouteInformation(
                _36c2.maybeUnBoxAndBuildArgument<_f6ef.RouteInformation,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['didChangeTextScaleFactor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didChangeTextScaleFactor();
      return [];
    });
    table['didChangePlatformBrightness'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didChangePlatformBrightness();
      return [];
    });
    table['didChangeLocales'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didChangeLocales(_36c2.maybeUnBoxAndBuildArgument<
          _fac9.List<_a643.Locale>?,
          _a643.Locale>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['didChangeAppLifecycleState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didChangeAppLifecycleState(_36c2.maybeUnBoxEnum(
          values: _a643.AppLifecycleState.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['didHaveMemoryPressure'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didHaveMemoryPressure();
      return [];
    });
    table['didChangeAccessibilityFeatures'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didChangeAccessibilityFeatures();
      return [];
    });
    table['createTicker'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedonTick = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject<_e067.Ticker>(
            object: vmObject.createTicker((elapsed) => unpackedonTick.dispatch(
                  [luaCallerArguments[0], elapsed],
                  parentState: hydroState,
                )),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['setTextEditingValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.textEditingValue = (_36c2.maybeUnBoxAndBuildArgument<
          _8577.TextEditingValue,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['delete'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.delete(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['deleteByWord'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.deleteByWord(
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[1]),
          luaCallerArguments[2]);
      return [];
    });
    table['deleteByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.deleteByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['deleteForward'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.deleteForward(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['deleteForwardByWord'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.deleteForwardByWord(
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[1]),
          luaCallerArguments[2]);
      return [];
    });
    table['deleteForwardByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.deleteForwardByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['deleteToEnd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.deleteToEnd(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['deleteToStart'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.deleteToStart(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['expandSelectionToEnd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.expandSelectionToEnd(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['expandSelectionToStart'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.expandSelectionToStart(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['expandSelectionLeftByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.expandSelectionLeftByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['expandSelectionRightByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.expandSelectionRightByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['extendSelectionDown'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.extendSelectionDown(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['extendSelectionLeft'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.extendSelectionLeft(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['extendSelectionLeftByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.extendSelectionLeftByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['extendSelectionRight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.extendSelectionRight(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['extendSelectionRightByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.extendSelectionRightByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['extendSelectionLeftByWord'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.extendSelectionLeftByWord(
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[1]),
          luaCallerArguments[2],
          luaCallerArguments[3]);
      return [];
    });
    table['extendSelectionRightByWord'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.extendSelectionRightByWord(
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[1]),
          luaCallerArguments[2],
          luaCallerArguments[3]);
      return [];
    });
    table['extendSelectionUp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.extendSelectionUp(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['moveSelectionLeftByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.moveSelectionLeftByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['moveSelectionDown'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.moveSelectionDown(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['moveSelectionLeft'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.moveSelectionLeft(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['moveSelectionLeftByWord'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.moveSelectionLeftByWord(
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[1]),
          luaCallerArguments[2]);
      return [];
    });
    table['moveSelectionRight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.moveSelectionRight(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['moveSelectionRightByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.moveSelectionRightByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['moveSelectionRightByWord'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.moveSelectionRightByWord(
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[1]),
          luaCallerArguments[2]);
      return [];
    });
    table['moveSelectionToEnd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.moveSelectionToEnd(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['moveSelectionToStart'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.moveSelectionToStart(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['moveSelectionUp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.moveSelectionUp(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_d800.EditableText>(
            object: vmObject.widget,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getContext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.BuildContext>(
            object: vmObject.context,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getMounted'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.mounted,
      ];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _d800.EditableTextState vmObject;
}

class RTManagedEditableTextState extends _d800.EditableTextState
    implements _36c2.Box<_d800.EditableTextState> {
  RTManagedEditableTextState({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getCurrentAutofillScope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.currentAutofillScope];
    });
    table['_dart_getWantKeepAlive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.wantKeepAlive];
    });
    table['_dart_getCutEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.cutEnabled];
    });
    table['_dart_getCopyEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.copyEnabled];
    });
    table['_dart_getPasteEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.pasteEnabled];
    });
    table['_dart_getSelectAllEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.selectAllEnabled];
    });
    table['_dart_getTextLayoutMetrics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textLayoutMetrics];
    });
    table['_dart_getReadOnly'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.readOnly];
    });
    table['_dart_getObscureText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.obscureText];
    });
    table['_dart_getSelectionEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.selectionEnabled];
    });
    table['_dart_debugAssertLayoutUpToDate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugAssertLayoutUpToDate();
      return [];
    });
    table['_dart_setSelection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.setSelection(
          _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[2]));
      return [];
    });
    table['_dart_setTextEditingValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.setTextEditingValue(
          _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[2]));
      return [];
    });
    table['_dart_copySelection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.copySelection(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_cutSelection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.cutSelection(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_pasteText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.pasteText(_36c2.maybeUnBoxEnum(
                values: _8577.SelectionChangedCause.values,
                boxedEnum: luaCallerArguments[1])),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_selectAll'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.selectAll(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_initState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.initState();
      return [];
    });
    table['_dart_didChangeDependencies'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didChangeDependencies();
      return [];
    });
    table['_dart_didUpdateWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didUpdateWidget(
          _36c2.maybeUnBoxAndBuildArgument<_d800.EditableText, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_getCurrentTextEditingValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.currentTextEditingValue];
    });
    table['_dart_updateEditingValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.updateEditingValue(_36c2.maybeUnBoxAndBuildArgument<
          _8577.TextEditingValue,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_performAction'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.performAction(_36c2.maybeUnBoxEnum(
          values: _8577.TextInputAction.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_performPrivateCommand'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.performPrivateCommand(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<
              _fac9.Map<_fac9.String, _fac9.dynamic>,
              _fac9.String>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['_dart_updateFloatingCursor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.updateFloatingCursor(_36c2.maybeUnBoxAndBuildArgument<
          _8577.RawFloatingCursorPoint,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_beginBatchEdit'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.beginBatchEdit();
      return [];
    });
    table['_dart_endBatchEdit'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.endBatchEdit();
      return [];
    });
    table['_dart_connectionClosed'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.connectionClosed();
      return [];
    });
    table['_dart_requestKeyboard'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.requestKeyboard();
      return [];
    });
    table['_dart_didChangeMetrics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didChangeMetrics();
      return [];
    });
    table['_dart_getRenderEditable'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.renderEditable];
    });
    table['_dart_getTextEditingValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textEditingValue];
    });
    table['_dart_userUpdateTextEditingValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.userUpdateTextEditingValue(
          _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[2]));
      return [];
    });
    table['_dart_bringIntoView'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.bringIntoView(
          _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_showToolbar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.showToolbar(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_hideToolbar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.hideToolbar(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_toggleToolbar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.toggleToolbar();
      return [];
    });
    table['_dart_getAutofillId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.autofillId];
    });
    table['_dart_getTextInputConfiguration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textInputConfiguration];
    });
    table['_dart_autofill'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.autofill(_36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_showAutocorrectionPromptRect'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.showAutocorrectionPromptRect(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_build'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.build(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_buildTextSpan'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.buildTextSpan(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_updateKeepAlive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.updateKeepAlive();
      return [];
    });
    table['_dart_deactivate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.deactivate();
      return [];
    });
    table['_dart_didPopRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.didPopRoute(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_didPushRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.didPushRoute(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_didPushRouteInformation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.didPushRouteInformation(
                _36c2.maybeUnBoxAndBuildArgument<_f6ef.RouteInformation,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_didChangeTextScaleFactor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didChangeTextScaleFactor();
      return [];
    });
    table['_dart_didChangePlatformBrightness'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didChangePlatformBrightness();
      return [];
    });
    table['_dart_didChangeLocales'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didChangeLocales(_36c2.maybeUnBoxAndBuildArgument<
          _fac9.List<_a643.Locale>?,
          _a643.Locale>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_didChangeAppLifecycleState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didChangeAppLifecycleState(_36c2.maybeUnBoxEnum(
          values: _a643.AppLifecycleState.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_didHaveMemoryPressure'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didHaveMemoryPressure();
      return [];
    });
    table['_dart_didChangeAccessibilityFeatures'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didChangeAccessibilityFeatures();
      return [];
    });
    table['_dart_createTicker'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedonTick = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject(
            object: super.createTicker((elapsed) => unpackedonTick.dispatch(
                  [luaCallerArguments[0], elapsed],
                  parentState: hydroState,
                )),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_setTextEditingValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.textEditingValue = (_36c2.maybeUnBoxAndBuildArgument<
          _8577.TextEditingValue,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_delete'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.delete(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_deleteByWord'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.deleteByWord(
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[1]),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_deleteByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.deleteByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_deleteForward'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.deleteForward(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_deleteForwardByWord'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.deleteForwardByWord(
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[1]),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_deleteForwardByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.deleteForwardByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_deleteToEnd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.deleteToEnd(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_deleteToStart'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.deleteToStart(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_expandSelectionToEnd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.expandSelectionToEnd(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_expandSelectionToStart'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.expandSelectionToStart(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_expandSelectionLeftByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.expandSelectionLeftByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_expandSelectionRightByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.expandSelectionRightByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_extendSelectionDown'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.extendSelectionDown(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_extendSelectionLeft'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.extendSelectionLeft(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_extendSelectionLeftByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.extendSelectionLeftByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_extendSelectionRight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.extendSelectionRight(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_extendSelectionRightByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.extendSelectionRightByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_extendSelectionLeftByWord'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.extendSelectionLeftByWord(
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[1]),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_extendSelectionRightByWord'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.extendSelectionRightByWord(
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[1]),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_extendSelectionUp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.extendSelectionUp(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_moveSelectionLeftByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.moveSelectionLeftByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_moveSelectionDown'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.moveSelectionDown(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_moveSelectionLeft'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.moveSelectionLeft(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_moveSelectionLeftByWord'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.moveSelectionLeftByWord(
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[1]),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_moveSelectionRight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.moveSelectionRight(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_moveSelectionRightByLine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.moveSelectionRightByLine(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_moveSelectionRightByWord'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.moveSelectionRightByWord(
          _36c2.maybeUnBoxEnum(
              values: _8577.SelectionChangedCause.values,
              boxedEnum: luaCallerArguments[1]),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_moveSelectionToEnd'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.moveSelectionToEnd(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_moveSelectionToStart'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.moveSelectionToStart(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_moveSelectionUp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.moveSelectionUp(_36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_reassemble'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.reassemble();
      return [];
    });
    table['_dart_setState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedfn = luaCallerArguments[1];
      super.setState(() => unpackedfn.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_activate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.activate();
      return [];
    });
    table['_dart_getWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.widget];
    });
    table['_dart_getContext'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.context];
    });
    table['_dart_getMounted'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.mounted];
    });
    table['_dart_toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShort(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toDiagnosticsNode(
                name: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['name']
                            : null,
                        parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _d800.EditableTextState unwrap() => this;
  _d800.EditableTextState get vmObject => this;
  @_fac9.override
  _7283.AutofillScope? get currentAutofillScope {
    _36c2.Closure closure = table["getCurrentAutofillScope"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7283.AutofillScope?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get wantKeepAlive {
    _36c2.Closure closure = table["getWantKeepAlive"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get cutEnabled {
    _36c2.Closure closure = table["getCutEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get copyEnabled {
    _36c2.Closure closure = table["getCopyEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get pasteEnabled {
    _36c2.Closure closure = table["getPasteEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get selectAllEnabled {
    _36c2.Closure closure = table["getSelectAllEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _0f57.TextLayoutMetrics get textLayoutMetrics {
    _36c2.Closure closure = table["getTextLayoutMetrics"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_0f57.TextLayoutMetrics, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get readOnly {
    _36c2.Closure closure = table["getReadOnly"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get obscureText {
    _36c2.Closure closure = table["getObscureText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get selectionEnabled {
    _36c2.Closure closure = table["getSelectionEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugAssertLayoutUpToDate() {
    _36c2.Closure closure = table["debugAssertLayoutUpToDate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void setSelection(nextSelection, cause) {
    _36c2.Closure closure = table["setSelection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void setTextEditingValue(newValue, cause) {
    _36c2.Closure closure = table["setTextEditingValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void copySelection(cause) {
    _36c2.Closure closure = table["copySelection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void cutSelection(cause) {
    _36c2.Closure closure = table["cutSelection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<void> pasteText(cause) {
    _36c2.Closure closure = table["pasteText"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void selectAll(cause) {
    _36c2.Closure closure = table["selectAll"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void initState() {
    super.initState();
    _36c2.Closure closure = table["initState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _36c2.Closure closure = table["didChangeDependencies"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    _36c2.Closure closure = table["didUpdateWidget"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _8577.TextEditingValue get currentTextEditingValue {
    _36c2.Closure closure = table["getCurrentTextEditingValue"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void updateEditingValue(value) {
    _36c2.Closure closure = table["updateEditingValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void performAction(action) {
    _36c2.Closure closure = table["performAction"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void performPrivateCommand(action, data) {
    _36c2.Closure closure = table["performPrivateCommand"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void updateFloatingCursor(point) {
    _36c2.Closure closure = table["updateFloatingCursor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void beginBatchEdit() {
    _36c2.Closure closure = table["beginBatchEdit"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void endBatchEdit() {
    _36c2.Closure closure = table["endBatchEdit"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void connectionClosed() {
    _36c2.Closure closure = table["connectionClosed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void requestKeyboard() {
    _36c2.Closure closure = table["requestKeyboard"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didChangeMetrics() {
    _36c2.Closure closure = table["didChangeMetrics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get cursorCurrentlyVisible {
    _36c2.Closure closure = table["getCursorCurrentlyVisible"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.Duration get cursorBlinkInterval {
    _36c2.Closure closure = table["getCursorBlinkInterval"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _578c.TextSelectionOverlay? get selectionOverlay {
    _36c2.Closure closure = table["getSelectionOverlay"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_578c.TextSelectionOverlay?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _7eb4.RenderEditable get renderEditable {
    _36c2.Closure closure = table["getRenderEditable"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7eb4.RenderEditable, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _8577.TextEditingValue get textEditingValue {
    _36c2.Closure closure = table["getTextEditingValue"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void userUpdateTextEditingValue(value, cause) {
    _36c2.Closure closure = table["userUpdateTextEditingValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void bringIntoView(position) {
    _36c2.Closure closure = table["bringIntoView"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool showToolbar() {
    _36c2.Closure closure = table["showToolbar"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void hideToolbar([_fac9.bool hideHandles = true]) {
    _36c2.Closure closure = table["hideToolbar"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void toggleToolbar() {
    _36c2.Closure closure = table["toggleToolbar"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get autofillId {
    _36c2.Closure closure = table["getAutofillId"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _8577.TextInputConfiguration get textInputConfiguration {
    _36c2.Closure closure = table["getTextInputConfiguration"];
    return _36c2.maybeUnBoxAndBuildArgument<_8577.TextInputConfiguration,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void autofill(value) {
    _36c2.Closure closure = table["autofill"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void showAutocorrectionPromptRect(start, end) {
    _36c2.Closure closure = table["showAutocorrectionPromptRect"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.Widget build(context) {
    super.build(context);
    _36c2.Closure closure = table["build"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _1584.TextSpan buildTextSpan() {
    _36c2.Closure closure = table["buildTextSpan"];
    return _36c2.maybeUnBoxAndBuildArgument<_1584.TextSpan, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void updateKeepAlive() {
    _36c2.Closure closure = table["updateKeepAlive"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void deactivate() {
    super.deactivate();
    _36c2.Closure closure = table["deactivate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<_fac9.bool> didPopRoute() {
    _36c2.Closure closure = table["didPopRoute"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _7de1.Future<_fac9.bool> didPushRoute(route) {
    _36c2.Closure closure = table["didPushRoute"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _7de1.Future<_fac9.bool> didPushRouteInformation(routeInformation) {
    _36c2.Closure closure = table["didPushRouteInformation"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void didChangeTextScaleFactor() {
    _36c2.Closure closure = table["didChangeTextScaleFactor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didChangePlatformBrightness() {
    _36c2.Closure closure = table["didChangePlatformBrightness"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didChangeLocales(locales) {
    _36c2.Closure closure = table["didChangeLocales"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didChangeAppLifecycleState(state) {
    _36c2.Closure closure = table["didChangeAppLifecycleState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didHaveMemoryPressure() {
    _36c2.Closure closure = table["didHaveMemoryPressure"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didChangeAccessibilityFeatures() {
    _36c2.Closure closure = table["didChangeAccessibilityFeatures"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e067.Ticker createTicker(onTick) {
    _36c2.Closure closure = table["createTicker"];
    return _36c2.maybeUnBoxAndBuildArgument<_e067.Ticker, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set textEditingValue(value) {
    _36c2.Closure closure = table["setTextEditingValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void delete(cause) {
    _36c2.Closure closure = table["delete"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void deleteByWord(cause, [_fac9.bool includeWhitespace = true]) {
    _36c2.Closure closure = table["deleteByWord"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void deleteByLine(cause) {
    _36c2.Closure closure = table["deleteByLine"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void deleteForward(cause) {
    _36c2.Closure closure = table["deleteForward"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void deleteForwardByWord(cause, [_fac9.bool includeWhitespace = true]) {
    _36c2.Closure closure = table["deleteForwardByWord"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void deleteForwardByLine(cause) {
    _36c2.Closure closure = table["deleteForwardByLine"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void deleteToEnd(cause) {
    _36c2.Closure closure = table["deleteToEnd"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void deleteToStart(cause) {
    _36c2.Closure closure = table["deleteToStart"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void expandSelectionToEnd(cause) {
    _36c2.Closure closure = table["expandSelectionToEnd"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void expandSelectionToStart(cause) {
    _36c2.Closure closure = table["expandSelectionToStart"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void expandSelectionLeftByLine(cause) {
    _36c2.Closure closure = table["expandSelectionLeftByLine"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void expandSelectionRightByLine(cause) {
    _36c2.Closure closure = table["expandSelectionRightByLine"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void extendSelectionDown(cause) {
    _36c2.Closure closure = table["extendSelectionDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void extendSelectionLeft(cause) {
    _36c2.Closure closure = table["extendSelectionLeft"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void extendSelectionLeftByLine(cause) {
    _36c2.Closure closure = table["extendSelectionLeftByLine"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void extendSelectionRight(cause) {
    _36c2.Closure closure = table["extendSelectionRight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void extendSelectionRightByLine(cause) {
    _36c2.Closure closure = table["extendSelectionRightByLine"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void extendSelectionLeftByWord(cause,
      [_fac9.bool includeWhitespace = true,
      _fac9.bool stopAtReversal = false]) {
    _36c2.Closure closure = table["extendSelectionLeftByWord"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void extendSelectionRightByWord(cause,
      [_fac9.bool includeWhitespace = true,
      _fac9.bool stopAtReversal = false]) {
    _36c2.Closure closure = table["extendSelectionRightByWord"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void extendSelectionUp(cause) {
    _36c2.Closure closure = table["extendSelectionUp"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void moveSelectionLeftByLine(cause) {
    _36c2.Closure closure = table["moveSelectionLeftByLine"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void moveSelectionDown(cause) {
    _36c2.Closure closure = table["moveSelectionDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void moveSelectionLeft(cause) {
    _36c2.Closure closure = table["moveSelectionLeft"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void moveSelectionLeftByWord(cause, [_fac9.bool includeWhitespace = true]) {
    _36c2.Closure closure = table["moveSelectionLeftByWord"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void moveSelectionRight(cause) {
    _36c2.Closure closure = table["moveSelectionRight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void moveSelectionRightByLine(cause) {
    _36c2.Closure closure = table["moveSelectionRightByLine"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void moveSelectionRightByWord(cause, [_fac9.bool includeWhitespace = true]) {
    _36c2.Closure closure = table["moveSelectionRightByWord"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void moveSelectionToEnd(cause) {
    _36c2.Closure closure = table["moveSelectionToEnd"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void moveSelectionToStart(cause) {
    _36c2.Closure closure = table["moveSelectionToStart"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void moveSelectionUp(cause) {
    _36c2.Closure closure = table["moveSelectionUp"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void reassemble() {
    super.reassemble();
    _36c2.Closure closure = table["reassemble"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void setState(fn) {
    _36c2.Closure closure = table["setState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void activate() {
    super.activate();
    _36c2.Closure closure = table["activate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _d800.EditableText get widget {
    _36c2.Closure closure = table["getWidget"];
    return _36c2.maybeUnBoxAndBuildArgument<_d800.EditableText, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.BuildContext get context {
    _36c2.Closure closure = table["getContext"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get mounted {
    _36c2.Closure closure = table["getMounted"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.DiagnosticsNode toDiagnosticsNode(
      {_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) {
    _36c2.Closure closure = table["toDiagnosticsNode"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadEditableTextState(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['editableTextState'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedEditableTextState(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_d800.EditableTextState>(boxer: (
      {required _d800.EditableTextState vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedEditableTextState(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
