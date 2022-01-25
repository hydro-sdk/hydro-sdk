import 'dart:core';

import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/rendering/sliver.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSliverGeometry extends VMManagedBox<SliverGeometry> {
  VMManagedSliverGeometry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['scrollExtent'] = vmObject.scrollExtent;
    table['paintOrigin'] = vmObject.paintOrigin;
    table['paintExtent'] = vmObject.paintExtent;
    table['layoutExtent'] = vmObject.layoutExtent;
    table['maxPaintExtent'] = vmObject.maxPaintExtent;
    table['maxScrollObstructionExtent'] = vmObject.maxScrollObstructionExtent;
    table['hitTestExtent'] = vmObject.hitTestExtent;
    table['visible'] = vmObject.visible;
    table['hasVisualOverflow'] = vmObject.hasVisualOverflow;
    table['scrollOffsetCorrection'] = vmObject.scrollOffsetCorrection;
    table['cacheExtent'] = vmObject.cacheExtent;
    table['debugAssertIsValid'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedinformationCollector = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['informationCollector']
          : null;
      return [
        vmObject.debugAssertIsValid(
            informationCollector: unpackedinformationCollector != null
                ? () => maybeUnBoxAndBuildArgument<Iterable<DiagnosticsNode>,
                        DiagnosticsNode>(
                    unpackedinformationCollector.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)
                : null),
      ];
    });
    table['toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toDiagnosticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SliverGeometry vmObject;
}

class RTManagedSliverGeometry extends SliverGeometry
    implements Box<SliverGeometry> {
  RTManagedSliverGeometry(
      {double? cacheExtent,
      required bool hasVisualOverflow,
      double? hitTestExtent,
      double? layoutExtent,
      required double maxPaintExtent,
      required double maxScrollObstructionExtent,
      required double paintExtent,
      required double paintOrigin,
      required double scrollExtent,
      double? scrollOffsetCorrection,
      bool? visible,
      required this.table,
      required this.hydroState})
      : super(
            cacheExtent: cacheExtent,
            hasVisualOverflow: hasVisualOverflow,
            hitTestExtent: hitTestExtent,
            layoutExtent: layoutExtent,
            maxPaintExtent: maxPaintExtent,
            maxScrollObstructionExtent: maxScrollObstructionExtent,
            paintExtent: paintExtent,
            paintOrigin: paintOrigin,
            scrollExtent: scrollExtent,
            scrollOffsetCorrection: scrollOffsetCorrection,
            visible: visible) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['scrollExtent'] = this.scrollExtent;
    table['paintOrigin'] = this.paintOrigin;
    table['paintExtent'] = this.paintExtent;
    table['layoutExtent'] = this.layoutExtent;
    table['maxPaintExtent'] = this.maxPaintExtent;
    table['maxScrollObstructionExtent'] = this.maxScrollObstructionExtent;
    table['hitTestExtent'] = this.hitTestExtent;
    table['visible'] = this.visible;
    table['hasVisualOverflow'] = this.hasVisualOverflow;
    table['scrollOffsetCorrection'] = this.scrollOffsetCorrection;
    table['cacheExtent'] = this.cacheExtent;
    table['_dart_debugAssertIsValid'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedinformationCollector = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['informationCollector']
          : null;
      return [
        super.debugAssertIsValid(
            informationCollector: unpackedinformationCollector != null
                ? () => maybeUnBoxAndBuildArgument<Iterable<DiagnosticsNode>,
                        DiagnosticsNode>(
                    unpackedinformationCollector.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)
                : null)
      ];
    });
    table['_dart_toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toStringShort()];
    });
    table['_dart_debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null))
      ];
    });
    table['_dart_toDiagnosticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: super.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SliverGeometry unwrap() => this;
  SliverGeometry get vmObject => this;
  @override
  bool debugAssertIsValid({informationCollector}) {
    Closure closure = table["debugAssertIsValid"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringShort() {
    Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  DiagnosticsNode toDiagnosticsNode(
      {String? name, DiagnosticsTreeStyle? style}) {
    Closure closure = table["toDiagnosticsNode"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadSliverGeometry(
    {required HydroState hydroState, required HydroTable table}) {
  table['sliverGeometry'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSliverGeometry(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          cacheExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['cacheExtent']
              : null?.toDouble(),
          hasVisualOverflow: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['hasVisualOverflow']
              : null,
          hitTestExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['hitTestExtent']
              : null?.toDouble(),
          layoutExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['layoutExtent']
              : null?.toDouble(),
          maxPaintExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['maxPaintExtent']
              : null?.toDouble(),
          maxScrollObstructionExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['maxScrollObstructionExtent']
              : null?.toDouble(),
          paintExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['paintExtent']
              : null?.toDouble(),
          paintOrigin: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['paintOrigin']
              : null?.toDouble(),
          scrollExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['scrollExtent']
              : null?.toDouble(),
          scrollOffsetCorrection: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['scrollOffsetCorrection']
              : null?.toDouble(),
          visible: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['visible']
              : null)
    ];
  });
  registerBoxer<SliverGeometry>(boxer: (
      {required SliverGeometry vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSliverGeometry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
