import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPaint extends VMManagedBox<Paint> {
  VMManagedPaint(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getIsAntiAlias'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isAntiAlias,
      ];
    });
    table['setIsAntiAlias'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isAntiAlias = (luaCallerArguments[1]);
      return [];
    });
    table['getColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Color>(
            object: vmObject.color,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.color = (maybeUnBoxAndBuildArgument<Color, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getBlendMode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        BlendMode.values.indexWhere((x) {
          return x == vmObject.blendMode;
        }),
      ];
    });
    table['setBlendMode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.blendMode = (maybeUnBoxEnum(
          values: BlendMode.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        PaintingStyle.values.indexWhere((x) {
          return x == vmObject.style;
        }),
      ];
    });
    table['setStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.style = (maybeUnBoxEnum(
          values: PaintingStyle.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getStrokeWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.strokeWidth,
      ];
    });
    table['setStrokeWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.strokeWidth = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getStrokeCap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        StrokeCap.values.indexWhere((x) {
          return x == vmObject.strokeCap;
        }),
      ];
    });
    table['setStrokeCap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.strokeCap = (maybeUnBoxEnum(
          values: StrokeCap.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getStrokeJoin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        StrokeJoin.values.indexWhere((x) {
          return x == vmObject.strokeJoin;
        }),
      ];
    });
    table['setStrokeJoin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.strokeJoin = (maybeUnBoxEnum(
          values: StrokeJoin.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getStrokeMiterLimit'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.strokeMiterLimit,
      ];
    });
    table['setStrokeMiterLimit'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.strokeMiterLimit = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getMaskFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.maskFilter;
      if (returnValue != null) {
        return [
          maybeBoxObject<MaskFilter?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setMaskFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.maskFilter = (maybeUnBoxAndBuildArgument<MaskFilter?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getFilterQuality'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        FilterQuality.values.indexWhere((x) {
          return x == vmObject.filterQuality;
        }),
      ];
    });
    table['setFilterQuality'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.filterQuality = (maybeUnBoxEnum(
          values: FilterQuality.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getShader'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.shader;
      if (returnValue != null) {
        return [
          maybeBoxObject<Shader?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setShader'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.shader = (maybeUnBoxAndBuildArgument<Shader?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getColorFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.colorFilter;
      if (returnValue != null) {
        return [
          maybeBoxObject<ColorFilter?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setColorFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.colorFilter = (maybeUnBoxAndBuildArgument<ColorFilter?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getImageFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.imageFilter;
      if (returnValue != null) {
        return [
          maybeBoxObject<ImageFilter?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setImageFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.imageFilter = (maybeUnBoxAndBuildArgument<ImageFilter?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getInvertColors'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.invertColors,
      ];
    });
    table['setInvertColors'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.invertColors = (luaCallerArguments[1]);
      return [];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Paint vmObject;
}

class RTManagedPaint extends Paint implements Box<Paint> {
  RTManagedPaint({required this.table, required this.hydroState}) : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getIsAntiAlias'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isAntiAlias];
    });
    table['_dart_setIsAntiAlias'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isAntiAlias = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.color];
    });
    table['_dart_setColor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.color = (maybeUnBoxAndBuildArgument<Color, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getBlendMode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.blendMode];
    });
    table['_dart_setBlendMode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.blendMode = (maybeUnBoxEnum(
          values: BlendMode.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.style];
    });
    table['_dart_setStyle'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.style = (maybeUnBoxEnum(
          values: PaintingStyle.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getStrokeWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.strokeWidth];
    });
    table['_dart_setStrokeWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.strokeWidth = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_getStrokeCap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.strokeCap];
    });
    table['_dart_setStrokeCap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.strokeCap = (maybeUnBoxEnum(
          values: StrokeCap.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getStrokeJoin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.strokeJoin];
    });
    table['_dart_setStrokeJoin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.strokeJoin = (maybeUnBoxEnum(
          values: StrokeJoin.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getStrokeMiterLimit'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.strokeMiterLimit];
    });
    table['_dart_setStrokeMiterLimit'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.strokeMiterLimit = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_getMaskFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.maskFilter];
    });
    table['_dart_setMaskFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.maskFilter = (maybeUnBoxAndBuildArgument<MaskFilter?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getFilterQuality'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.filterQuality];
    });
    table['_dart_setFilterQuality'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.filterQuality = (maybeUnBoxEnum(
          values: FilterQuality.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getShader'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.shader];
    });
    table['_dart_setShader'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.shader = (maybeUnBoxAndBuildArgument<Shader?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getColorFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.colorFilter];
    });
    table['_dart_setColorFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.colorFilter = (maybeUnBoxAndBuildArgument<ColorFilter?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getImageFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.imageFilter];
    });
    table['_dart_setImageFilter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.imageFilter = (maybeUnBoxAndBuildArgument<ImageFilter?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getInvertColors'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.invertColors];
    });
    table['_dart_setInvertColors'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.invertColors = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
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
    return maybeUnBoxAndBuildArgument<Color, dynamic>(
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
    return maybeUnBoxAndBuildArgument<MaskFilter?, dynamic>(
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
    return maybeUnBoxAndBuildArgument<Shader?, dynamic>(
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
    return maybeUnBoxAndBuildArgument<ColorFilter?, dynamic>(
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
    return maybeUnBoxAndBuildArgument<ImageFilter?, dynamic>(
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
  table['paint'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedPaint(table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<Paint>(boxer: (
      {required Paint vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPaint(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
