import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/alignment.dart' as _ca85;
import 'package:flutter/src/painting/box_fit.dart' as _fb77;
import 'package:flutter/src/painting/decoration_image.dart' as _48c4;
import 'package:flutter/src/painting/image_provider.dart' as _61fa;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDecorationImage
    extends _36c2.VMManagedBox<_48c4.DecorationImage> {
  VMManagedDecorationImage(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['image'] = _36c2.maybeBoxObject<_61fa.ImageProvider>(
        object: vmObject.image,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['colorFilter'] = _36c2.maybeBoxObject<_a643.ColorFilter?>(
        object: vmObject.colorFilter,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fit'] = _fb77.BoxFit.values.indexWhere((x) {
      return x == vmObject.fit;
    });
    table['alignment'] = _36c2.maybeBoxObject<_ca85.AlignmentGeometry>(
        object: vmObject.alignment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['centerSlice'] = _36c2.maybeBoxObject<_a643.Rect?>(
        object: vmObject.centerSlice,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['repeat'] = _48c4.ImageRepeat.values.indexWhere((x) {
      return x == vmObject.repeat;
    });
    table['matchTextDirection'] = vmObject.matchTextDirection;
    table['scale'] = vmObject.scale;
    table['opacity'] = vmObject.opacity;
    table['filterQuality'] = _a643.FilterQuality.values.indexWhere((x) {
      return x == vmObject.filterQuality;
    });
    table['invertColors'] = vmObject.invertColors;
    table['isAntiAlias'] = vmObject.isAntiAlias;
    table['createPainter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedonChanged = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject<_48c4.DecorationImagePainter>(
            object: vmObject.createPainter(() => unpackedonChanged.dispatch(
                  [
                    luaCallerArguments[0],
                  ],
                  parentState: hydroState,
                )),
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
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _48c4.DecorationImage vmObject;
}

class RTManagedDecorationImage extends _48c4.DecorationImage
    implements _36c2.Box<_48c4.DecorationImage> {
  RTManagedDecorationImage(
      {required _ca85.AlignmentGeometry alignment,
      _a643.Rect? centerSlice,
      _a643.ColorFilter? colorFilter,
      required _a643.FilterQuality filterQuality,
      _fb77.BoxFit? fit,
      required _fac9.bool invertColors,
      required _fac9.bool isAntiAlias,
      required _fac9.bool matchTextDirection,
      void Function(_fac9.Object exception, _fac9.StackTrace? stackTrace)?
          onError,
      required _fac9.double opacity,
      required _48c4.ImageRepeat repeat,
      required _fac9.double scale,
      required _61fa.ImageProvider<_fac9.Object> image,
      required this.table,
      required this.hydroState})
      : super(
            alignment: alignment,
            centerSlice: centerSlice,
            colorFilter: colorFilter,
            filterQuality: filterQuality,
            fit: fit,
            invertColors: invertColors,
            isAntiAlias: isAntiAlias,
            matchTextDirection: matchTextDirection,
            onError: onError,
            opacity: opacity,
            repeat: repeat,
            scale: scale,
            image: image) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['image'] = _36c2.maybeBoxObject(
        object: this.image, hydroState: hydroState, table: _36c2.HydroTable());
    table['colorFilter'] = _36c2.maybeBoxObject(
        object: this.colorFilter,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fit'] = _fb77.BoxFit.values.indexWhere((x) {
      return x == this.fit;
    });
    table['alignment'] = _36c2.maybeBoxObject(
        object: this.alignment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['centerSlice'] = _36c2.maybeBoxObject(
        object: this.centerSlice,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['repeat'] = _48c4.ImageRepeat.values.indexWhere((x) {
      return x == this.repeat;
    });
    table['matchTextDirection'] = _36c2.maybeBoxObject(
        object: this.matchTextDirection,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scale'] = _36c2.maybeBoxObject(
        object: this.scale, hydroState: hydroState, table: _36c2.HydroTable());
    table['opacity'] = _36c2.maybeBoxObject(
        object: this.opacity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['filterQuality'] = _a643.FilterQuality.values.indexWhere((x) {
      return x == this.filterQuality;
    });
    table['invertColors'] = _36c2.maybeBoxObject(
        object: this.invertColors,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isAntiAlias'] = _36c2.maybeBoxObject(
        object: this.isAntiAlias,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_createPainter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedonChanged = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject(
            object: super.createPainter(() => unpackedonChanged.dispatch(
                  [
                    luaCallerArguments[0],
                  ],
                  parentState: hydroState,
                )),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _48c4.DecorationImage unwrap() => this;
  _48c4.DecorationImage get vmObject => this;
  @_fac9.override
  _48c4.DecorationImagePainter createPainter(onChanged) {
    _36c2.Closure closure = table["createPainter"];
    return _36c2.maybeUnBoxAndBuildArgument<_48c4.DecorationImagePainter,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadDecorationImage(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['decorationImage'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonError = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onError']
        : null;

    return [
      RTManagedDecorationImage(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          alignment: _36c2
              .maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['alignment']
                      : null,
                  parentState: hydroState),
          centerSlice: _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['centerSlice']
                  : null,
              parentState: hydroState),
          colorFilter: _36c2.maybeUnBoxAndBuildArgument<_a643.ColorFilter?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['colorFilter'] : null,
              parentState: hydroState),
          filterQuality: _36c2.maybeUnBoxEnum(values: _a643.FilterQuality.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['filterQuality'] : null),
          fit: _36c2.maybeUnBoxEnum(values: _fb77.BoxFit.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fit'] : null),
          invertColors: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['invertColors'] : null,
          isAntiAlias: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isAntiAlias'] : null,
          matchTextDirection: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['matchTextDirection'] : null,
          onError: unpackedonError != null
              ? (exception, stackTrace) => unpackedonError.dispatch(
                    [luaCallerArguments[0], exception, stackTrace],
                    parentState: hydroState,
                  )
              : null,
          opacity: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['opacity'] : null?.toDouble(),
          repeat: _36c2.maybeUnBoxEnum(values: _48c4.ImageRepeat.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['repeat'] : null),
          scale: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scale'] : null?.toDouble(),
          image: _36c2.maybeUnBoxAndBuildArgument<_61fa.ImageProvider<_fac9.Object>, _fac9.Object>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['image'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_48c4.DecorationImage>(boxer: (
      {required _48c4.DecorationImage vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDecorationImage(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
