import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedPaint extends VMManagedBox<Paint> {
  VMManagedPaint(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getIsAntiAlias'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.isAntiAlias];
    });
    table['setIsAntiAlias'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.isAntiAlias = (args[1]);
      return [];
    });
    table['getColor'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Color>(
            object: vmObject.color, hydroState: hydroState, table: HydroTable())
      ];
    });
    table['setColor'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.color =
          (maybeUnBoxAndBuildArgument<Color>(args[1], parentState: hydroState));
      return [];
    });
    table['getBlendMode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        BlendMode.values.indexWhere((x) {
          return x == vmObject.blendMode;
        })
      ];
    });
    table['setBlendMode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.blendMode =
          (maybeUnBoxEnum(values: BlendMode.values, boxedEnum: args[1]));
      return [];
    });
    table['getStyle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        PaintingStyle.values.indexWhere((x) {
          return x == vmObject.style;
        })
      ];
    });
    table['setStyle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.style =
          (maybeUnBoxEnum(values: PaintingStyle.values, boxedEnum: args[1]));
      return [];
    });
    table['getStrokeWidth'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.strokeWidth];
    });
    table['setStrokeWidth'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.strokeWidth = (args[1]?.toDouble());
      return [];
    });
    table['getStrokeCap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        StrokeCap.values.indexWhere((x) {
          return x == vmObject.strokeCap;
        })
      ];
    });
    table['setStrokeCap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.strokeCap =
          (maybeUnBoxEnum(values: StrokeCap.values, boxedEnum: args[1]));
      return [];
    });
    table['getStrokeJoin'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        StrokeJoin.values.indexWhere((x) {
          return x == vmObject.strokeJoin;
        })
      ];
    });
    table['setStrokeJoin'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.strokeJoin =
          (maybeUnBoxEnum(values: StrokeJoin.values, boxedEnum: args[1]));
      return [];
    });
    table['getStrokeMiterLimit'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.strokeMiterLimit];
    });
    table['setStrokeMiterLimit'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.strokeMiterLimit = (args[1]?.toDouble());
      return [];
    });
    table['getMaskFilter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<MaskFilter?>(
            object: vmObject.maskFilter,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['setMaskFilter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.maskFilter = (maybeUnBoxAndBuildArgument<MaskFilter?>(args[1],
          parentState: hydroState));
      return [];
    });
    table['getFilterQuality'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        FilterQuality.values.indexWhere((x) {
          return x == vmObject.filterQuality;
        })
      ];
    });
    table['setFilterQuality'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.filterQuality =
          (maybeUnBoxEnum(values: FilterQuality.values, boxedEnum: args[1]));
      return [];
    });
    table['getShader'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Shader?>(
            object: vmObject.shader,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['setShader'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.shader = (maybeUnBoxAndBuildArgument<Shader?>(args[1],
          parentState: hydroState));
      return [];
    });
    table['getColorFilter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ColorFilter?>(
            object: vmObject.colorFilter,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['setColorFilter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.colorFilter = (maybeUnBoxAndBuildArgument<ColorFilter?>(args[1],
          parentState: hydroState));
      return [];
    });
    table['getImageFilter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<ImageFilter?>(
            object: vmObject.imageFilter,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['setImageFilter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.imageFilter = (maybeUnBoxAndBuildArgument<ImageFilter?>(args[1],
          parentState: hydroState));
      return [];
    });
    table['getInvertColors'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.invertColors];
    });
    table['setInvertColors'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.invertColors = (args[1]);
      return [];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Paint vmObject;
}

class RTManagedPaint extends Paint implements Box<Paint> {
  RTManagedPaint({required this.table, required this.hydroState}) : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_getIsAntiAlias'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.isAntiAlias];
    });
    table['_dart_setIsAntiAlias'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.isAntiAlias = (args[1]);
      return [];
    });
    table['_dart_getColor'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.color];
    });
    table['_dart_setColor'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.color =
          (maybeUnBoxAndBuildArgument<Color>(args[1], parentState: hydroState));
      return [];
    });
    table['_dart_getBlendMode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.blendMode];
    });
    table['_dart_setBlendMode'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.blendMode =
          (maybeUnBoxEnum(values: BlendMode.values, boxedEnum: args[1]));
      return [];
    });
    table['_dart_getStyle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.style];
    });
    table['_dart_setStyle'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.style =
          (maybeUnBoxEnum(values: PaintingStyle.values, boxedEnum: args[1]));
      return [];
    });
    table['_dart_getStrokeWidth'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.strokeWidth];
    });
    table['_dart_setStrokeWidth'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.strokeWidth = (args[1]?.toDouble());
      return [];
    });
    table['_dart_getStrokeCap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.strokeCap];
    });
    table['_dart_setStrokeCap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.strokeCap =
          (maybeUnBoxEnum(values: StrokeCap.values, boxedEnum: args[1]));
      return [];
    });
    table['_dart_getStrokeJoin'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.strokeJoin];
    });
    table['_dart_setStrokeJoin'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.strokeJoin =
          (maybeUnBoxEnum(values: StrokeJoin.values, boxedEnum: args[1]));
      return [];
    });
    table['_dart_getStrokeMiterLimit'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.strokeMiterLimit];
    });
    table['_dart_setStrokeMiterLimit'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      super.strokeMiterLimit = (args[1]?.toDouble());
      return [];
    });
    table['_dart_getMaskFilter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.maskFilter];
    });
    table['_dart_setMaskFilter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.maskFilter = (maybeUnBoxAndBuildArgument<MaskFilter?>(args[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getFilterQuality'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.filterQuality];
    });
    table['_dart_setFilterQuality'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      super.filterQuality =
          (maybeUnBoxEnum(values: FilterQuality.values, boxedEnum: args[1]));
      return [];
    });
    table['_dart_getShader'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.shader];
    });
    table['_dart_setShader'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.shader = (maybeUnBoxAndBuildArgument<Shader?>(args[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getColorFilter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.colorFilter];
    });
    table['_dart_setColorFilter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.colorFilter = (maybeUnBoxAndBuildArgument<ColorFilter?>(args[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getImageFilter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.imageFilter];
    });
    table['_dart_setImageFilter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      super.imageFilter = (maybeUnBoxAndBuildArgument<ImageFilter?>(args[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getInvertColors'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.invertColors];
    });
    table['_dart_setInvertColors'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      super.invertColors = (args[1]);
      return [];
    });
    table['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Paint unwrap() => this;
  Paint get vmObject => this;
  @override
  bool get isAntiAlias {
    Closure closure = table["getIsAntiAlias"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isAntiAlias(bool value) {
    Closure closure = table["setIsAntiAlias"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Color get color {
    Closure closure = table["getColor"];
    return maybeUnBoxAndBuildArgument<Color>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set color(Color value) {
    Closure closure = table["setColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  BlendMode get blendMode {
    Closure closure = table["getBlendMode"];
    return maybeUnBoxEnum(
        values: BlendMode.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set blendMode(BlendMode value) {
    Closure closure = table["setBlendMode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  PaintingStyle get style {
    Closure closure = table["getStyle"];
    return maybeUnBoxEnum(
        values: PaintingStyle.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set style(PaintingStyle value) {
    Closure closure = table["setStyle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double get strokeWidth {
    Closure closure = table["getStrokeWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void set strokeWidth(double value) {
    Closure closure = table["setStrokeWidth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  StrokeCap get strokeCap {
    Closure closure = table["getStrokeCap"];
    return maybeUnBoxEnum(
        values: StrokeCap.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set strokeCap(StrokeCap value) {
    Closure closure = table["setStrokeCap"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  StrokeJoin get strokeJoin {
    Closure closure = table["getStrokeJoin"];
    return maybeUnBoxEnum(
        values: StrokeJoin.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set strokeJoin(StrokeJoin value) {
    Closure closure = table["setStrokeJoin"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double get strokeMiterLimit {
    Closure closure = table["getStrokeMiterLimit"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void set strokeMiterLimit(double value) {
    Closure closure = table["setStrokeMiterLimit"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  MaskFilter? get maskFilter {
    Closure closure = table["getMaskFilter"];
    return maybeUnBoxAndBuildArgument<MaskFilter?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set maskFilter(MaskFilter? value) {
    Closure closure = table["setMaskFilter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  FilterQuality get filterQuality {
    Closure closure = table["getFilterQuality"];
    return maybeUnBoxEnum(
        values: FilterQuality.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set filterQuality(FilterQuality value) {
    Closure closure = table["setFilterQuality"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Shader? get shader {
    Closure closure = table["getShader"];
    return maybeUnBoxAndBuildArgument<Shader?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set shader(Shader? value) {
    Closure closure = table["setShader"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ColorFilter? get colorFilter {
    Closure closure = table["getColorFilter"];
    return maybeUnBoxAndBuildArgument<ColorFilter?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set colorFilter(ColorFilter? value) {
    Closure closure = table["setColorFilter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ImageFilter? get imageFilter {
    Closure closure = table["getImageFilter"];
    return maybeUnBoxAndBuildArgument<ImageFilter?>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set imageFilter(ImageFilter? value) {
    Closure closure = table["setImageFilter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get invertColors {
    Closure closure = table["getInvertColors"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set invertColors(bool value) {
    Closure closure = table["setInvertColors"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPaint({required HydroState hydroState, required HydroTable table}) {
  table['paint'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [RTManagedPaint(table: args[0], hydroState: hydroState)];
  });
  registerBoxer<Paint>(boxer: (
      {required Paint vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPaint(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
