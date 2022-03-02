import 'dart:core' as _fac9;

import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/rendering/editable.dart' as _7eb4;
import 'package:flutter/src/rendering/layer.dart' as _7d70;
import 'package:flutter/src/services/text_input.dart' as _8577;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/text_selection.dart' as _578c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextSelectionOverlay
    extends _36c2.VMManagedBox<_578c.TextSelectionOverlay> {
  VMManagedTextSelectionOverlay(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['context'] = _36c2.maybeBoxObject<_e2dc.BuildContext>(
        object: vmObject.context,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['debugRequiredFor'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.debugRequiredFor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toolbarLayerLink'] = _36c2.maybeBoxObject<_7d70.LayerLink>(
        object: vmObject.toolbarLayerLink,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['startHandleLayerLink'] = _36c2.maybeBoxObject<_7d70.LayerLink>(
        object: vmObject.startHandleLayerLink,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['endHandleLayerLink'] = _36c2.maybeBoxObject<_7d70.LayerLink>(
        object: vmObject.endHandleLayerLink,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['renderObject'] = _36c2.maybeBoxObject<_7eb4.RenderEditable>(
        object: vmObject.renderObject,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectionControls'] =
        _36c2.maybeBoxObject<_578c.TextSelectionControls?>(
            object: vmObject.selectionControls,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['selectionDelegate'] =
        _36c2.maybeBoxObject<_8577.TextSelectionDelegate?>(
            object: vmObject.selectionDelegate,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['dragStartBehavior'] = _02d2.DragStartBehavior.values.indexWhere((x) {
      return x == vmObject.dragStartBehavior;
    });
    table['clipboardStatus'] =
        _36c2.maybeBoxObject<_578c.ClipboardStatusNotifier?>(
            object: vmObject.clipboardStatus,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['getHandlesVisible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.handlesVisible,
      ];
    });
    table['setHandlesVisible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handlesVisible = (luaCallerArguments[1]);
      return [];
    });
    table['showHandles'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.showHandles();
      return [];
    });
    table['hideHandles'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.hideHandles();
      return [];
    });
    table['showToolbar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.showToolbar();
      return [];
    });
    table['update'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.update(_36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['updateForScroll'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.updateForScroll();
      return [];
    });
    table['getHandlesAreVisible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.handlesAreVisible,
      ];
    });
    table['getToolbarIsVisible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toolbarIsVisible,
      ];
    });
    table['hide'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.hide();
      return [];
    });
    table['hideToolbar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.hideToolbar();
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _578c.TextSelectionOverlay vmObject;
}

class RTManagedTextSelectionOverlay extends _578c.TextSelectionOverlay
    implements _36c2.Box<_578c.TextSelectionOverlay> {
  RTManagedTextSelectionOverlay(
      {_578c.ClipboardStatusNotifier? clipboardStatus,
      _e2dc.Widget? debugRequiredFor,
      required _02d2.DragStartBehavior dragStartBehavior,
      required _fac9.bool handlesVisible,
      void Function()? onSelectionHandleTapped,
      _578c.TextSelectionControls? selectionControls,
      _8577.TextSelectionDelegate? selectionDelegate,
      required _e2dc.BuildContext context,
      required _7d70.LayerLink endHandleLayerLink,
      required _7eb4.RenderEditable renderObject,
      required _7d70.LayerLink startHandleLayerLink,
      required _7d70.LayerLink toolbarLayerLink,
      required _8577.TextEditingValue value,
      required this.table,
      required this.hydroState})
      : super(
            clipboardStatus: clipboardStatus,
            debugRequiredFor: debugRequiredFor,
            dragStartBehavior: dragStartBehavior,
            handlesVisible: handlesVisible,
            onSelectionHandleTapped: onSelectionHandleTapped,
            selectionControls: selectionControls,
            selectionDelegate: selectionDelegate,
            context: context,
            endHandleLayerLink: endHandleLayerLink,
            renderObject: renderObject,
            startHandleLayerLink: startHandleLayerLink,
            toolbarLayerLink: toolbarLayerLink,
            value: value) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['context'] = _36c2.maybeBoxObject(
        object: this.context,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['debugRequiredFor'] = _36c2.maybeBoxObject(
        object: this.debugRequiredFor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toolbarLayerLink'] = _36c2.maybeBoxObject(
        object: this.toolbarLayerLink,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['startHandleLayerLink'] = _36c2.maybeBoxObject(
        object: this.startHandleLayerLink,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['endHandleLayerLink'] = _36c2.maybeBoxObject(
        object: this.endHandleLayerLink,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['renderObject'] = _36c2.maybeBoxObject(
        object: this.renderObject,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectionControls'] = _36c2.maybeBoxObject(
        object: this.selectionControls,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectionDelegate'] = _36c2.maybeBoxObject(
        object: this.selectionDelegate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dragStartBehavior'] = _02d2.DragStartBehavior.values.indexWhere((x) {
      return x == this.dragStartBehavior;
    });
    table['clipboardStatus'] = _36c2.maybeBoxObject(
        object: this.clipboardStatus,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getHandlesVisible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.handlesVisible];
    });
    table['_dart_setHandlesVisible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handlesVisible =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_showHandles'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.showHandles();
      return [];
    });
    table['_dart_hideHandles'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.hideHandles();
      return [];
    });
    table['_dart_showToolbar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.showToolbar();
      return [];
    });
    table['_dart_update'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.update(_36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_updateForScroll'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.updateForScroll();
      return [];
    });
    table['_dart_getHandlesAreVisible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.handlesAreVisible];
    });
    table['_dart_getToolbarIsVisible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.toolbarIsVisible];
    });
    table['_dart_hide'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.hide();
      return [];
    });
    table['_dart_hideToolbar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.hideToolbar();
      return [];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _578c.TextSelectionOverlay unwrap() => this;
  _578c.TextSelectionOverlay get vmObject => this;
  @_fac9.override
  _8577.TextEditingValue get value {
    _36c2.Closure closure = table["getValue"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get handlesVisible {
    _36c2.Closure closure = table["getHandlesVisible"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set handlesVisible(visible) {
    _36c2.Closure closure = table["setHandlesVisible"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void showHandles() {
    _36c2.Closure closure = table["showHandles"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void hideHandles() {
    _36c2.Closure closure = table["hideHandles"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void showToolbar() {
    _36c2.Closure closure = table["showToolbar"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void update(newValue) {
    _36c2.Closure closure = table["update"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void updateForScroll() {
    _36c2.Closure closure = table["updateForScroll"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get handlesAreVisible {
    _36c2.Closure closure = table["getHandlesAreVisible"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get toolbarIsVisible {
    _36c2.Closure closure = table["getToolbarIsVisible"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void hide() {
    _36c2.Closure closure = table["hide"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void hideToolbar() {
    _36c2.Closure closure = table["hideToolbar"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispose() {
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTextSelectionOverlay(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textSelectionOverlay'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonSelectionHandleTapped =
        luaCallerArguments.length >= 2
            ? luaCallerArguments[1]['onSelectionHandleTapped']
            : null;

    return [
      RTManagedTextSelectionOverlay(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          clipboardStatus: _36c2.maybeUnBoxAndBuildArgument<_578c.ClipboardStatusNotifier?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['clipboardStatus'] : null,
              parentState: hydroState),
          debugRequiredFor: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['debugRequiredFor']
                  : null,
              parentState: hydroState),
          dragStartBehavior: _36c2.maybeUnBoxEnum(
              values: _02d2.DragStartBehavior.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['dragStartBehavior']
                  : null),
          handlesVisible: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['handlesVisible']
              : null,
          onSelectionHandleTapped: unpackedonSelectionHandleTapped != null
              ? () => unpackedonSelectionHandleTapped.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          selectionControls: _36c2.maybeUnBoxAndBuildArgument<_578c.TextSelectionControls?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectionControls'] : null,
              parentState: hydroState),
          selectionDelegate: _36c2.maybeUnBoxAndBuildArgument<_8577.TextSelectionDelegate?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectionDelegate'] : null, parentState: hydroState),
          context: _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['context'] : null, parentState: hydroState),
          endHandleLayerLink: _36c2.maybeUnBoxAndBuildArgument<_7d70.LayerLink, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['endHandleLayerLink'] : null, parentState: hydroState),
          renderObject: _36c2.maybeUnBoxAndBuildArgument<_7eb4.RenderEditable, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['renderObject'] : null, parentState: hydroState),
          startHandleLayerLink: _36c2.maybeUnBoxAndBuildArgument<_7d70.LayerLink, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['startHandleLayerLink'] : null, parentState: hydroState),
          toolbarLayerLink: _36c2.maybeUnBoxAndBuildArgument<_7d70.LayerLink, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toolbarLayerLink'] : null, parentState: hydroState),
          value: _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['value'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_578c.TextSelectionOverlay>(boxer: (
      {required _578c.TextSelectionOverlay vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextSelectionOverlay(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
