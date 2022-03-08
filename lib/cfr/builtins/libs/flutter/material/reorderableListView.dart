import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/material/reorderable_list.dart' as _4ff3;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/scroll_controller.dart' as _9585;
import 'package:flutter/src/widgets/scroll_physics.dart' as _dbad;
import 'package:flutter/src/widgets/scroll_view.dart' as _2b56;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedReorderableListView
    extends _36c2.VMManagedBox<_4ff3.ReorderableListView> {
  VMManagedReorderableListView(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['itemCount'] = vmObject.itemCount;
    table['buildDefaultDragHandles'] = vmObject.buildDefaultDragHandles;
    table['padding'] = _36c2.maybeBoxObject<_96d1.EdgeInsets?>(
        object: vmObject.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['header'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.header,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollDirection'] = _487f.Axis.values.indexWhere((x) {
      return x == vmObject.scrollDirection;
    });
    table['reverse'] = vmObject.reverse;
    table['scrollController'] = _36c2.maybeBoxObject<_9585.ScrollController?>(
        object: vmObject.scrollController,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['primary'] = vmObject.primary;
    table['physics'] = _36c2.maybeBoxObject<_dbad.ScrollPhysics?>(
        object: vmObject.physics,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shrinkWrap'] = vmObject.shrinkWrap;
    table['anchor'] = vmObject.anchor;
    table['cacheExtent'] = vmObject.cacheExtent;
    table['dragStartBehavior'] = _02d2.DragStartBehavior.values.indexWhere((x) {
      return x == vmObject.dragStartBehavior;
    });
    table['keyboardDismissBehavior'] =
        _2b56.ScrollViewKeyboardDismissBehavior.values.indexWhere((x) {
      return x == vmObject.keyboardDismissBehavior;
    });
    table['restorationId'] = vmObject.restorationId;
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == vmObject.clipBehavior;
    });
    table['itemExtent'] = vmObject.itemExtent;
    table['prototypeItem'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.prototypeItem,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.State>(
            object: vmObject.createState(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.StatefulElement>(
            object: vmObject.createElement(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null),
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _4ff3.ReorderableListView vmObject;
}

class RTManagedReorderableListView extends _4ff3.ReorderableListView
    implements _36c2.Box<_4ff3.ReorderableListView> {
  RTManagedReorderableListView(
      {required _fac9.double anchor,
      required _fac9.bool buildDefaultDragHandles,
      _fac9.double? cacheExtent,
      required _a643.Clip clipBehavior,
      required _02d2.DragStartBehavior dragStartBehavior,
      _e2dc.Widget? header,
      _fac9.double? itemExtent,
      _ab4a.Key? key,
      required _2b56.ScrollViewKeyboardDismissBehavior keyboardDismissBehavior,
      _96d1.EdgeInsets? padding,
      _dbad.ScrollPhysics? physics,
      _fac9.bool? primary,
      _e2dc.Widget? prototypeItem,
      _e2dc.Widget Function(_e2dc.Widget child, _fac9.int index,
              _86ca.Animation<_fac9.double> animation)?
          proxyDecorator,
      _fac9.String? restorationId,
      required _fac9.bool reverse,
      _9585.ScrollController? scrollController,
      required _487f.Axis scrollDirection,
      required _fac9.bool shrinkWrap,
      required _fac9.List<_e2dc.Widget> children,
      required void Function(_fac9.int oldIndex, _fac9.int newIndex) onReorder,
      required this.table,
      required this.hydroState})
      : super(
            anchor: anchor,
            buildDefaultDragHandles: buildDefaultDragHandles,
            cacheExtent: cacheExtent,
            clipBehavior: clipBehavior,
            dragStartBehavior: dragStartBehavior,
            header: header,
            itemExtent: itemExtent,
            key: key,
            keyboardDismissBehavior: keyboardDismissBehavior,
            padding: padding,
            physics: physics,
            primary: primary,
            prototypeItem: prototypeItem,
            proxyDecorator: proxyDecorator,
            restorationId: restorationId,
            reverse: reverse,
            scrollController: scrollController,
            scrollDirection: scrollDirection,
            shrinkWrap: shrinkWrap,
            children: children,
            onReorder: onReorder) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['itemCount'] = _36c2.maybeBoxObject(
        object: itemCount, hydroState: hydroState, table: _36c2.HydroTable());
    table['buildDefaultDragHandles'] = _36c2.maybeBoxObject(
        object: this.buildDefaultDragHandles,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['padding'] = _36c2.maybeBoxObject(
        object: this.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['header'] = _36c2.maybeBoxObject(
        object: this.header, hydroState: hydroState, table: _36c2.HydroTable());
    table['scrollDirection'] = _487f.Axis.values.indexWhere((x) {
      return x == this.scrollDirection;
    });
    table['reverse'] = _36c2.maybeBoxObject(
        object: this.reverse,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollController'] = _36c2.maybeBoxObject(
        object: this.scrollController,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['primary'] = _36c2.maybeBoxObject(
        object: this.primary,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['physics'] = _36c2.maybeBoxObject(
        object: this.physics,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shrinkWrap'] = _36c2.maybeBoxObject(
        object: this.shrinkWrap,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['anchor'] = _36c2.maybeBoxObject(
        object: this.anchor, hydroState: hydroState, table: _36c2.HydroTable());
    table['cacheExtent'] = _36c2.maybeBoxObject(
        object: this.cacheExtent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dragStartBehavior'] = _02d2.DragStartBehavior.values.indexWhere((x) {
      return x == this.dragStartBehavior;
    });
    table['keyboardDismissBehavior'] =
        _2b56.ScrollViewKeyboardDismissBehavior.values.indexWhere((x) {
      return x == this.keyboardDismissBehavior;
    });
    table['restorationId'] = _36c2.maybeBoxObject(
        object: this.restorationId,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == this.clipBehavior;
    });
    table['itemExtent'] = _36c2.maybeBoxObject(
        object: this.itemExtent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['prototypeItem'] = _36c2.maybeBoxObject(
        object: this.prototypeItem,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createState(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createElement(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
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
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShallow(
                joiner: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['joiner']
                            : null,
                        parentState: hydroState),
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringDeep(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null),
                prefixLineOne:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixLineOne']
                            : null,
                        parentState: hydroState),
                prefixOtherLines:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixOtherLines']
                            : null,
                        parentState: hydroState)),
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
    table['_dart_debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugDescribeChildren(),
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _4ff3.ReorderableListView unwrap() => this;
  _4ff3.ReorderableListView get vmObject => this;
  @_fac9.override
  _e2dc.State<_4ff3.ReorderableListView> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _e2dc.State<_4ff3.ReorderableListView>, _4ff3.ReorderableListView>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.StatefulElement createElement() {
    _36c2.Closure closure = table["createElement"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.StatefulElement, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShallow(
      {_fac9.String joiner = ', ',
      _eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug}) {
    _36c2.Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringDeep(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug,
      _fac9.String prefixLineOne = '',
      _fac9.String? prefixOtherLines}) {
    _36c2.Closure closure = table["toStringDeep"];
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
  _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() {
    _36c2.Closure closure = table["debugDescribeChildren"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
            _eaf3.DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadReorderableListView(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['reorderableListView'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedproxyDecorator = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['proxyDecorator']
        : null;

    _36c2.Closure unpackedonReorder = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onReorder']
        : null;
    return [
      RTManagedReorderableListView(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          anchor: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['anchor']
              : null?.toDouble(),
          buildDefaultDragHandles: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['buildDefaultDragHandles']
              : null,
          cacheExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['cacheExtent']
              : null?.toDouble(),
          clipBehavior: _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['clipBehavior']
                  : null),
          dragStartBehavior: _36c2.maybeUnBoxEnum(
              values: _02d2.DragStartBehavior.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['dragStartBehavior']
                  : null),
          header: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['header'] : null,
              parentState: hydroState),
          itemExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['itemExtent']
              : null?.toDouble(),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null,
              parentState: hydroState),
          keyboardDismissBehavior: _36c2.maybeUnBoxEnum(
              values: _2b56.ScrollViewKeyboardDismissBehavior.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['keyboardDismissBehavior']
                  : null),
          padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null,
              parentState: hydroState),
          physics: _36c2.maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['physics'] : null,
              parentState: hydroState),
          primary: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primary'] : null,
          prototypeItem: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prototypeItem'] : null, parentState: hydroState),
          proxyDecorator: unpackedproxyDecorator != null
              ? (child, index, animation) => _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                  unpackedproxyDecorator.dispatch(
                    [luaCallerArguments[0], child, index, animation],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)
              : null,
          restorationId: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['restorationId'] : null,
          reverse: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['reverse'] : null,
          scrollController: _36c2.maybeUnBoxAndBuildArgument<_9585.ScrollController?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollController'] : null, parentState: hydroState),
          scrollDirection: _36c2.maybeUnBoxEnum(values: _487f.Axis.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollDirection'] : null),
          shrinkWrap: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shrinkWrap'] : null,
          children: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>, _e2dc.Widget>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['children'] : null, parentState: hydroState),
          onReorder: (oldIndex, newIndex) => unpackedonReorder.dispatch(
                [luaCallerArguments[0], oldIndex, newIndex],
                parentState: hydroState,
              ))
    ];
  });
  _36c2.registerBoxer<_4ff3.ReorderableListView>(boxer: (
      {required _4ff3.ReorderableListView vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedReorderableListView(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
