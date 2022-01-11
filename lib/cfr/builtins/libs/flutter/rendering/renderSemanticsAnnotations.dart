import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/animation/curves.dart';
import 'package:flutter/src/foundation/assertions.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/foundation/node.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/hit_test.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/proxy_box.dart';
import 'package:flutter/src/semantics/semantics.dart';
import 'package:flutter/src/semantics/semantics_event.dart';
import 'package:flutter/src/services/text_editing.dart';

import 'package:vector_math/vector_math_64.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedRenderSemanticsAnnotations
    extends VMManagedBox<RenderSemanticsAnnotations> {
  VMManagedRenderSemanticsAnnotations(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['parentData'] = maybeBoxObject<ParentData?>(
        object: vmObject.parentData,
        hydroState: hydroState,
        table: HydroTable());
    table['debugCreator'] = maybeBoxObject<Object?>(
        object: vmObject.debugCreator,
        hydroState: hydroState,
        table: HydroTable());
    table['getContainer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.container,
      ];
    });
    table['setContainer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.container = (luaCallerArguments[1]);
      return [];
    });
    table['getExplicitChildNodes'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.explicitChildNodes,
      ];
    });
    table['setExplicitChildNodes'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.explicitChildNodes = (luaCallerArguments[1]);
      return [];
    });
    table['getExcludeSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.excludeSemantics,
      ];
    });
    table['setExcludeSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.excludeSemantics = (luaCallerArguments[1]);
      return [];
    });
    table['getChecked'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.checked;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setChecked'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.checked = (luaCallerArguments[1]);
      return [];
    });
    table['getEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.enabled;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.enabled = (luaCallerArguments[1]);
      return [];
    });
    table['getSelected'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.selected;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setSelected'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.selected = (luaCallerArguments[1]);
      return [];
    });
    table['getButton'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.button;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setButton'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.button = (luaCallerArguments[1]);
      return [];
    });
    table['getSlider'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.slider;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setSlider'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.slider = (luaCallerArguments[1]);
      return [];
    });
    table['getKeyboardKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.keyboardKey;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setKeyboardKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.keyboardKey = (luaCallerArguments[1]);
      return [];
    });
    table['getLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.link;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.link = (luaCallerArguments[1]);
      return [];
    });
    table['getHeader'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.header;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setHeader'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.header = (luaCallerArguments[1]);
      return [];
    });
    table['getTextField'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.textField;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setTextField'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.textField = (luaCallerArguments[1]);
      return [];
    });
    table['getReadOnly'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.readOnly;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setReadOnly'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.readOnly = (luaCallerArguments[1]);
      return [];
    });
    table['getFocusable'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.focusable;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setFocusable'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.focusable = (luaCallerArguments[1]);
      return [];
    });
    table['getFocused'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.focused;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setFocused'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.focused = (luaCallerArguments[1]);
      return [];
    });
    table['getInMutuallyExclusiveGroup'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.inMutuallyExclusiveGroup;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setInMutuallyExclusiveGroup'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.inMutuallyExclusiveGroup = (luaCallerArguments[1]);
      return [];
    });
    table['getObscured'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.obscured;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setObscured'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.obscured = (luaCallerArguments[1]);
      return [];
    });
    table['getMultiline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.multiline;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setMultiline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.multiline = (luaCallerArguments[1]);
      return [];
    });
    table['getScopesRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.scopesRoute;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setScopesRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scopesRoute = (luaCallerArguments[1]);
      return [];
    });
    table['getNamesRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.namesRoute;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setNamesRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.namesRoute = (luaCallerArguments[1]);
      return [];
    });
    table['getHidden'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.hidden;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setHidden'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.hidden = (luaCallerArguments[1]);
      return [];
    });
    table['getImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.image;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.image = (luaCallerArguments[1]);
      return [];
    });
    table['getLiveRegion'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.liveRegion;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setLiveRegion'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.liveRegion = (luaCallerArguments[1]);
      return [];
    });
    table['getMaxValueLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.maxValueLength;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setMaxValueLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.maxValueLength = (luaCallerArguments[1]);
      return [];
    });
    table['getCurrentValueLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.currentValueLength;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setCurrentValueLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.currentValueLength = (luaCallerArguments[1]);
      return [];
    });
    table['getToggled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.toggled;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setToggled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.toggled = (luaCallerArguments[1]);
      return [];
    });
    table['getAttributedLabel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.attributedLabel;
      if (returnValue != null) {
        return [
          maybeBoxObject<AttributedString?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setAttributedLabel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attributedLabel =
          (maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getAttributedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.attributedValue;
      if (returnValue != null) {
        return [
          maybeBoxObject<AttributedString?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setAttributedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attributedValue =
          (maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getAttributedIncreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.attributedIncreasedValue;
      if (returnValue != null) {
        return [
          maybeBoxObject<AttributedString?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setAttributedIncreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attributedIncreasedValue =
          (maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getAttributedDecreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.attributedDecreasedValue;
      if (returnValue != null) {
        return [
          maybeBoxObject<AttributedString?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setAttributedDecreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attributedDecreasedValue =
          (maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getAttributedHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.attributedHint;
      if (returnValue != null) {
        return [
          maybeBoxObject<AttributedString?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setAttributedHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attributedHint =
          (maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getHintOverrides'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.hintOverrides;
      if (returnValue != null) {
        return [
          maybeBoxObject<SemanticsHintOverrides?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setHintOverrides'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.hintOverrides =
          (maybeUnBoxAndBuildArgument<SemanticsHintOverrides?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getTextDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.textDirection;
      if (returnValue != null) {
        return [
          TextDirection.values.indexWhere((x) {
            return x == returnValue;
          }),
        ];
      }
      return [];
    });
    table['setTextDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.textDirection = (maybeUnBoxEnum(
          values: TextDirection.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getSortKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.sortKey;
      if (returnValue != null) {
        return [
          maybeBoxObject<SemanticsSortKey?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setSortKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.sortKey =
          (maybeUnBoxAndBuildArgument<SemanticsSortKey?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getTagForChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.tagForChildren;
      if (returnValue != null) {
        return [
          maybeBoxObject<SemanticsTag?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setTagForChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.tagForChildren =
          (maybeUnBoxAndBuildArgument<SemanticsTag?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getOnTap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onTap;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnTap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onTap = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnDismiss'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onDismiss;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnDismiss'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onDismiss = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnLongPress'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onLongPress;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnLongPress'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onLongPress = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnScrollLeft'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onScrollLeft;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnScrollLeft'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onScrollLeft = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnScrollRight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onScrollRight;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnScrollRight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onScrollRight = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnScrollUp'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onScrollUp;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnScrollUp'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onScrollUp = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnScrollDown'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onScrollDown;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnScrollDown'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onScrollDown = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnIncrease'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onIncrease;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnIncrease'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onIncrease = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnDecrease'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onDecrease;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnDecrease'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onDecrease = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnCopy'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onCopy;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnCopy'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onCopy = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnCut'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onCut;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnCut'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onCut = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnPaste'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onPaste;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnPaste'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onPaste = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnMoveCursorForwardByCharacter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onMoveCursorForwardByCharacter;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnMoveCursorForwardByCharacter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onMoveCursorForwardByCharacter = (unpackedhandler != null
          ? (extendSelection) => unpackedhandler.dispatch(
                [luaCallerArguments[0], extendSelection],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnMoveCursorBackwardByCharacter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onMoveCursorBackwardByCharacter;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnMoveCursorBackwardByCharacter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onMoveCursorBackwardByCharacter = (unpackedhandler != null
          ? (extendSelection) => unpackedhandler.dispatch(
                [luaCallerArguments[0], extendSelection],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnMoveCursorForwardByWord'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onMoveCursorForwardByWord;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnMoveCursorForwardByWord'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onMoveCursorForwardByWord = (unpackedhandler != null
          ? (extendSelection) => unpackedhandler.dispatch(
                [luaCallerArguments[0], extendSelection],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnMoveCursorBackwardByWord'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onMoveCursorBackwardByWord;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnMoveCursorBackwardByWord'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onMoveCursorBackwardByWord = (unpackedhandler != null
          ? (extendSelection) => unpackedhandler.dispatch(
                [luaCallerArguments[0], extendSelection],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnSetSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onSetSelection;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnSetSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onSetSelection = (unpackedhandler != null
          ? (selection) => unpackedhandler.dispatch(
                [luaCallerArguments[0], selection],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnSetText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onSetText;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnSetText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onSetText = (unpackedhandler != null
          ? (text) => unpackedhandler.dispatch(
                [luaCallerArguments[0], text],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnDidGainAccessibilityFocus'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onDidGainAccessibilityFocus;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnDidGainAccessibilityFocus'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onDidGainAccessibilityFocus = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnDidLoseAccessibilityFocus'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onDidLoseAccessibilityFocus;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnDidLoseAccessibilityFocus'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      vmObject.onDidLoseAccessibilityFocus = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getCustomSemanticsActions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.customSemanticsActions;
      if (returnValue != null) {
        return [
          maybeBoxObject<Map?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setCustomSemanticsActions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.customSemanticsActions = (maybeUnBoxAndBuildArgument<
              Map<CustomSemanticsAction, void Function()>?,
              CustomSemanticsAction>(luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['visitChildrenForSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitChildrenForSemantics((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['describeSemanticsConfiguration'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.describeSemanticsConfiguration(
          maybeUnBoxAndBuildArgument<SemanticsConfiguration, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['debugValidateChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugValidateChild(
            maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['attach'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attach(maybeUnBoxAndBuildArgument<PipelineOwner, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['detach'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.detach();
      return [];
    });
    table['redepthChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.redepthChildren();
      return [];
    });
    table['visitChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitChildren((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['debugDescribeChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .debugDescribeChildren()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.child;
      if (returnValue != null) {
        return [
          maybeBoxObject<RenderBox?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.child = (maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['setupParentData'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setupParentData(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['computeMinIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.computeMinIntrinsicWidth(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['computeMaxIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.computeMaxIntrinsicWidth(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['computeMinIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.computeMinIntrinsicHeight(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['computeMaxIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.computeMaxIntrinsicHeight(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['computeDistanceToActualBaseline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.computeDistanceToActualBaseline(
          maybeUnBoxEnum(
              values: TextBaseline.values, boxedEnum: luaCallerArguments[1]));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['computeDryLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.computeDryLayout(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['performLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.performLayout();
      return [];
    });
    table['computeSizeForNoChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.computeSizeForNoChild(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['hitTestChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hitTestChildren(
            maybeUnBoxAndBuildArgument<BoxHitTestResult, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            position: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['position']
                    : null,
                parentState: hydroState)),
      ];
    });
    table['applyPaintTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.applyPaintTransform(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Matrix4, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['paint'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.paint(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['getMinIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getMinIntrinsicWidth(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getMaxIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getMaxIntrinsicWidth(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getMinIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getMinIntrinsicHeight(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getMaxIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.getMaxIntrinsicHeight(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['getDryLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.getDryLayout(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['debugCannotComputeDryLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugCannotComputeDryLayout(
            error: maybeUnBoxAndBuildArgument<FlutterError?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['error']
                    : null,
                parentState: hydroState),
            reason: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['reason']
                : null),
      ];
    });
    table['debugAdoptSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.debugAdoptSize(
                maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['debugResetSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugResetSize();
      return [];
    });
    table['getDistanceToBaseline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.getDistanceToBaseline(
          maybeUnBoxEnum(
              values: TextBaseline.values, boxedEnum: luaCallerArguments[1]),
          onlyReal: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['onlyReal']
              : null);
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['debugAssertDoesMeetConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugAssertDoesMeetConstraints();
      return [];
    });
    table['markNeedsLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsLayout();
      return [];
    });
    table['performResize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.performResize();
      return [];
    });
    table['hitTest'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hitTest(
            maybeUnBoxAndBuildArgument<BoxHitTestResult, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            position: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['position']
                    : null,
                parentState: hydroState)),
      ];
    });
    table['globalToLocal'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.globalToLocal(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                ancestor: maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['ancestor']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['localToGlobal'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: vmObject.localToGlobal(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                ancestor: maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['ancestor']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['handleEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<BoxHitTestEntry, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['debugHandleEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugHandleEvent(
            maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            maybeUnBoxAndBuildArgument<HitTestEntry, dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
      ];
    });
    table['debugPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugPaint(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getHasSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasSize,
      ];
    });
    table['getSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.size, hydroState: hydroState, table: HydroTable()),
      ];
    });
    table['getSemanticBounds'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.semanticBounds,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BoxConstraints>(
            object: vmObject.constraints,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getPaintBounds'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect>(
            object: vmObject.paintBounds,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['reassemble'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.reassemble();
      return [];
    });
    table['dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['adoptChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.adoptChild(maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['dropChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dropChild(maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['markNeedsLayoutForSizedByParentChange'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsLayoutForSizedByParentChange();
      return [];
    });
    table['scheduleInitialLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scheduleInitialLayout();
      return [];
    });
    table['layout'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.layout(
          maybeUnBoxAndBuildArgument<Constraints, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          parentUsesSize: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['parentUsesSize']
              : null);
      return [];
    });
    table['rotate'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.rotate(
          newAngle: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['newAngle']
              : null,
          oldAngle: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['oldAngle']
              : null,
          time: maybeUnBoxAndBuildArgument<Duration?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['time']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['debugRegisterRepaintBoundaryPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugRegisterRepaintBoundaryPaint(
          includedChild: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['includedChild']
              : null,
          includedParent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['includedParent']
              : null);
      return [];
    });
    table['markNeedsCompositingBitsUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsCompositingBitsUpdate();
      return [];
    });
    table['markNeedsPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsPaint();
      return [];
    });
    table['scheduleInitialPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scheduleInitialPaint(
          maybeUnBoxAndBuildArgument<ContainerLayer, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['replaceRootLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.replaceRootLayer(
          maybeUnBoxAndBuildArgument<OffsetLayer, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getTransformTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Matrix4>(
            object: vmObject.getTransformTo(
                maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['describeApproximatePaintClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.describeApproximatePaintClip(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<Rect?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['describeSemanticsClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.describeSemanticsClip(
          maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          maybeBoxObject<Rect?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['scheduleInitialSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scheduleInitialSemantics();
      return [];
    });
    table['sendSemanticsEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.sendSemanticsEvent(
          maybeUnBoxAndBuildArgument<SemanticsEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['clearSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.clearSemantics();
      return [];
    });
    table['markNeedsSemanticsUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsSemanticsUpdate();
      return [];
    });
    table['assembleSemanticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.assembleSemanticsNode(
          maybeUnBoxAndBuildArgument<SemanticsNode, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<SemanticsConfiguration, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Iterable<SemanticsNode>, SemanticsNode>(
              luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
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
    table['toStringDeep'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
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
    table['toStringShallow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['showOnScreen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.showOnScreen(
          curve: maybeUnBoxAndBuildArgument<Curve, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['curve'] : null,
              parentState: hydroState),
          descendant: maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['descendant']
                  : null,
              parentState: hydroState),
          duration: maybeUnBoxAndBuildArgument<Duration, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['duration']
                  : null,
              parentState: hydroState),
          rect: maybeUnBoxAndBuildArgument<Rect?, dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rect'] : null,
              parentState: hydroState));
      return [];
    });
    table['describeForError'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: vmObject.describeForError(luaCallerArguments[1],
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getDebugDisposed'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.debugDisposed;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getDebugDoingThisResize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisResize,
      ];
    });
    table['getDebugDoingThisLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisLayout,
      ];
    });
    table['getDebugCanParentUseSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugCanParentUseSize,
      ];
    });
    table['getOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.owner;
      if (returnValue != null) {
        return [
          maybeBoxObject<PipelineOwner?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getDebugNeedsLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugNeedsLayout,
      ];
    });
    table['getDebugDoingThisLayoutWithCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisLayoutWithCallback,
      ];
    });
    table['getDebugDoingThisPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingThisPaint,
      ];
    });
    table['getIsRepaintBoundary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isRepaintBoundary,
      ];
    });
    table['getDebugLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.debugLayer;
      if (returnValue != null) {
        return [
          maybeBoxObject<ContainerLayer?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getNeedsCompositing'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.needsCompositing,
      ];
    });
    table['getDebugNeedsPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugNeedsPaint,
      ];
    });
    table['getDebugSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.debugSemantics;
      if (returnValue != null) {
        return [
          maybeBoxObject<SemanticsNode?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
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
    table['getDepth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.depth,
      ];
    });
    table['getAttached'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.attached,
      ];
    });
    table['getParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.parent;
      if (returnValue != null) {
        return [
          maybeBoxObject<AbstractNode?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final RenderSemanticsAnnotations vmObject;
}

class RTManagedRenderSemanticsAnnotations extends RenderSemanticsAnnotations
    implements Box<RenderSemanticsAnnotations> {
  RTManagedRenderSemanticsAnnotations(
      {AttributedString? attributedDecreasedValue,
      AttributedString? attributedHint,
      AttributedString? attributedIncreasedValue,
      AttributedString? attributedLabel,
      AttributedString? attributedValue,
      bool? button,
      bool? checked,
      RenderBox? child,
      required bool container,
      int? currentValueLength,
      Map<CustomSemanticsAction, void Function()>? customSemanticsActions,
      bool? enabled,
      required bool excludeSemantics,
      required bool explicitChildNodes,
      bool? focusable,
      bool? focused,
      bool? header,
      bool? hidden,
      SemanticsHintOverrides? hintOverrides,
      bool? image,
      bool? inMutuallyExclusiveGroup,
      bool? keyboardKey,
      bool? link,
      bool? liveRegion,
      int? maxValueLength,
      bool? multiline,
      bool? namesRoute,
      bool? obscured,
      onCopy,
      onCut,
      onDecrease,
      onDidGainAccessibilityFocus,
      onDidLoseAccessibilityFocus,
      onDismiss,
      onIncrease,
      onLongPress,
      onMoveCursorBackwardByCharacter,
      onMoveCursorBackwardByWord,
      onMoveCursorForwardByCharacter,
      onMoveCursorForwardByWord,
      onPaste,
      onScrollDown,
      onScrollLeft,
      onScrollRight,
      onScrollUp,
      onSetSelection,
      onSetText,
      onTap,
      bool? readOnly,
      bool? scopesRoute,
      bool? selected,
      bool? slider,
      SemanticsSortKey? sortKey,
      SemanticsTag? tagForChildren,
      TextDirection? textDirection,
      bool? textField,
      bool? toggled,
      required this.table,
      required this.hydroState})
      : super(
            attributedDecreasedValue: attributedDecreasedValue,
            attributedHint: attributedHint,
            attributedIncreasedValue: attributedIncreasedValue,
            attributedLabel: attributedLabel,
            attributedValue: attributedValue,
            button: button,
            checked: checked,
            child: child,
            container: container,
            currentValueLength: currentValueLength,
            customSemanticsActions: customSemanticsActions,
            enabled: enabled,
            excludeSemantics: excludeSemantics,
            explicitChildNodes: explicitChildNodes,
            focusable: focusable,
            focused: focused,
            header: header,
            hidden: hidden,
            hintOverrides: hintOverrides,
            image: image,
            inMutuallyExclusiveGroup: inMutuallyExclusiveGroup,
            keyboardKey: keyboardKey,
            link: link,
            liveRegion: liveRegion,
            maxValueLength: maxValueLength,
            multiline: multiline,
            namesRoute: namesRoute,
            obscured: obscured,
            onCopy: onCopy,
            onCut: onCut,
            onDecrease: onDecrease,
            onDidGainAccessibilityFocus: onDidGainAccessibilityFocus,
            onDidLoseAccessibilityFocus: onDidLoseAccessibilityFocus,
            onDismiss: onDismiss,
            onIncrease: onIncrease,
            onLongPress: onLongPress,
            onMoveCursorBackwardByCharacter: onMoveCursorBackwardByCharacter,
            onMoveCursorBackwardByWord: onMoveCursorBackwardByWord,
            onMoveCursorForwardByCharacter: onMoveCursorForwardByCharacter,
            onMoveCursorForwardByWord: onMoveCursorForwardByWord,
            onPaste: onPaste,
            onScrollDown: onScrollDown,
            onScrollLeft: onScrollLeft,
            onScrollRight: onScrollRight,
            onScrollUp: onScrollUp,
            onSetSelection: onSetSelection,
            onSetText: onSetText,
            onTap: onTap,
            readOnly: readOnly,
            scopesRoute: scopesRoute,
            selected: selected,
            slider: slider,
            sortKey: sortKey,
            tagForChildren: tagForChildren,
            textDirection: textDirection,
            textField: textField,
            toggled: toggled) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['parentData'] = maybeBoxObject<ParentData?>(
        object: parentData, hydroState: hydroState, table: HydroTable());
    table['debugCreator'] = maybeBoxObject<Object?>(
        object: debugCreator, hydroState: hydroState, table: HydroTable());
    table['_dart_getContainer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.container];
    });
    table['_dart_setContainer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.container = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getExplicitChildNodes'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.explicitChildNodes];
    });
    table['_dart_setExplicitChildNodes'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.explicitChildNodes = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getExcludeSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.excludeSemantics];
    });
    table['_dart_setExcludeSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.excludeSemantics = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getChecked'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.checked];
    });
    table['_dart_setChecked'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.checked = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.enabled];
    });
    table['_dart_setEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.enabled = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getSelected'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.selected];
    });
    table['_dart_setSelected'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.selected = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getButton'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.button];
    });
    table['_dart_setButton'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.button = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getSlider'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.slider];
    });
    table['_dart_setSlider'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.slider = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getKeyboardKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.keyboardKey];
    });
    table['_dart_setKeyboardKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.keyboardKey = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.link];
    });
    table['_dart_setLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.link = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getHeader'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.header];
    });
    table['_dart_setHeader'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.header = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getTextField'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.textField];
    });
    table['_dart_setTextField'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.textField = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getReadOnly'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.readOnly];
    });
    table['_dart_setReadOnly'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.readOnly = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getFocusable'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.focusable];
    });
    table['_dart_setFocusable'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.focusable = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getFocused'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.focused];
    });
    table['_dart_setFocused'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.focused = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getInMutuallyExclusiveGroup'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.inMutuallyExclusiveGroup];
    });
    table['_dart_setInMutuallyExclusiveGroup'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.inMutuallyExclusiveGroup = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getObscured'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.obscured];
    });
    table['_dart_setObscured'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.obscured = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getMultiline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.multiline];
    });
    table['_dart_setMultiline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.multiline = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getScopesRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.scopesRoute];
    });
    table['_dart_setScopesRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scopesRoute = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getNamesRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.namesRoute];
    });
    table['_dart_setNamesRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.namesRoute = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getHidden'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hidden];
    });
    table['_dart_setHidden'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.hidden = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.image];
    });
    table['_dart_setImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.image = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getLiveRegion'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.liveRegion];
    });
    table['_dart_setLiveRegion'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.liveRegion = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getMaxValueLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.maxValueLength];
    });
    table['_dart_setMaxValueLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.maxValueLength = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getCurrentValueLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.currentValueLength];
    });
    table['_dart_setCurrentValueLength'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.currentValueLength = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getToggled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toggled];
    });
    table['_dart_setToggled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.toggled = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getAttributedLabel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.attributedLabel];
    });
    table['_dart_setAttributedLabel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attributedLabel =
          (maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getAttributedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.attributedValue];
    });
    table['_dart_setAttributedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attributedValue =
          (maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getAttributedIncreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.attributedIncreasedValue];
    });
    table['_dart_setAttributedIncreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attributedIncreasedValue =
          (maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getAttributedDecreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.attributedDecreasedValue];
    });
    table['_dart_setAttributedDecreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attributedDecreasedValue =
          (maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getAttributedHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.attributedHint];
    });
    table['_dart_setAttributedHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attributedHint =
          (maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getHintOverrides'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hintOverrides];
    });
    table['_dart_setHintOverrides'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.hintOverrides =
          (maybeUnBoxAndBuildArgument<SemanticsHintOverrides?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getTextDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.textDirection];
    });
    table['_dart_setTextDirection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.textDirection = (maybeUnBoxEnum(
          values: TextDirection.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getSortKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.sortKey];
    });
    table['_dart_setSortKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.sortKey = (maybeUnBoxAndBuildArgument<SemanticsSortKey?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getTagForChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.tagForChildren];
    });
    table['_dart_setTagForChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.tagForChildren =
          (maybeUnBoxAndBuildArgument<SemanticsTag?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_setOnTap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onTap = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnDismiss'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onDismiss = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnLongPress'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onLongPress = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnScrollLeft'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onScrollLeft = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnScrollRight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onScrollRight = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnScrollUp'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onScrollUp = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnScrollDown'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onScrollDown = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnIncrease'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onIncrease = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnDecrease'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onDecrease = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnCopy'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onCopy = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnCut'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onCut = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnPaste'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onPaste = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnMoveCursorForwardByCharacter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onMoveCursorForwardByCharacter = (unpackedhandler != null
          ? (extendSelection) => unpackedhandler.dispatch(
                [luaCallerArguments[0], extendSelection],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnMoveCursorBackwardByCharacter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onMoveCursorBackwardByCharacter = (unpackedhandler != null
          ? (extendSelection) => unpackedhandler.dispatch(
                [luaCallerArguments[0], extendSelection],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnMoveCursorForwardByWord'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onMoveCursorForwardByWord = (unpackedhandler != null
          ? (extendSelection) => unpackedhandler.dispatch(
                [luaCallerArguments[0], extendSelection],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnMoveCursorBackwardByWord'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onMoveCursorBackwardByWord = (unpackedhandler != null
          ? (extendSelection) => unpackedhandler.dispatch(
                [luaCallerArguments[0], extendSelection],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnSetSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onSetSelection = (unpackedhandler != null
          ? (selection) => unpackedhandler.dispatch(
                [luaCallerArguments[0], selection],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnSetText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onSetText = (unpackedhandler != null
          ? (text) => unpackedhandler.dispatch(
                [luaCallerArguments[0], text],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnDidGainAccessibilityFocus'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onDidGainAccessibilityFocus = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnDidLoseAccessibilityFocus'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedhandler = luaCallerArguments[1];
      super.onDidLoseAccessibilityFocus = (unpackedhandler != null
          ? () => unpackedhandler.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_getCustomSemanticsActions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.customSemanticsActions];
    });
    table['_dart_setCustomSemanticsActions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.customSemanticsActions = (maybeUnBoxAndBuildArgument<
              Map<CustomSemanticsAction, void Function()>?,
              CustomSemanticsAction>(luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_visitChildrenForSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      super.visitChildrenForSemantics((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_describeSemanticsConfiguration'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.describeSemanticsConfiguration(
          maybeUnBoxAndBuildArgument<SemanticsConfiguration, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugValidateChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.debugValidateChild(
            maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
      ];
    });
    table['_dart_attach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attach(maybeUnBoxAndBuildArgument<PipelineOwner, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_detach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.detach();
      return [];
    });
    table['_dart_redepthChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.redepthChildren();
      return [];
    });
    table['_dart_visitChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      super.visitChildren((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_debugDescribeChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super
                .debugDescribeChildren()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.child];
    });
    table['_dart_setChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.child = (maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_setupParentData'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.setupParentData(maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_computeMinIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.computeMinIntrinsicWidth(luaCallerArguments[1]?.toDouble())
      ];
    });
    table['_dart_computeMaxIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.computeMaxIntrinsicWidth(luaCallerArguments[1]?.toDouble())
      ];
    });
    table['_dart_computeMinIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.computeMinIntrinsicHeight(luaCallerArguments[1]?.toDouble())
      ];
    });
    table['_dart_computeMaxIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.computeMaxIntrinsicHeight(luaCallerArguments[1]?.toDouble())
      ];
    });
    table['_dart_computeDistanceToActualBaseline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.computeDistanceToActualBaseline(maybeUnBoxEnum(
            values: TextBaseline.values, boxedEnum: luaCallerArguments[1]))
      ];
    });
    table['_dart_computeDryLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: super.computeDryLayout(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_performLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.performLayout();
      return [];
    });
    table['_dart_computeSizeForNoChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: super.computeSizeForNoChild(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_hitTestChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.hitTestChildren(
            maybeUnBoxAndBuildArgument<BoxHitTestResult, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            position: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['position']
                    : null,
                parentState: hydroState))
      ];
    });
    table['_dart_applyPaintTransform'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.applyPaintTransform(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Matrix4, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_paint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.paint(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_getMinIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.getMinIntrinsicWidth(luaCallerArguments[1]?.toDouble())];
    });
    table['_dart_getMaxIntrinsicWidth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.getMaxIntrinsicWidth(luaCallerArguments[1]?.toDouble())];
    });
    table['_dart_getMinIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.getMinIntrinsicHeight(luaCallerArguments[1]?.toDouble())];
    });
    table['_dart_getMaxIntrinsicHeight'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.getMaxIntrinsicHeight(luaCallerArguments[1]?.toDouble())];
    });
    table['_dart_getDryLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: super.getDryLayout(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_debugCannotComputeDryLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.debugCannotComputeDryLayout(
            error: maybeUnBoxAndBuildArgument<FlutterError?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['error']
                    : null,
                parentState: hydroState),
            reason: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['reason']
                : null)
      ];
    });
    table['_dart_debugAdoptSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: super.debugAdoptSize(
                maybeUnBoxAndBuildArgument<Size, dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_debugResetSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugResetSize();
      return [];
    });
    table['_dart_getDistanceToBaseline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.getDistanceToBaseline(
            maybeUnBoxEnum(
                values: TextBaseline.values, boxedEnum: luaCallerArguments[1]),
            onlyReal: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['onlyReal']
                : null)
      ];
    });
    table['_dart_getDistanceToActualBaseline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.getDistanceToActualBaseline(maybeUnBoxEnum(
            values: TextBaseline.values, boxedEnum: luaCallerArguments[1]))
      ];
    });
    table['_dart_debugAssertDoesMeetConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugAssertDoesMeetConstraints();
      return [];
    });
    table['_dart_markNeedsLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsLayout();
      return [];
    });
    table['_dart_performResize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.performResize();
      return [];
    });
    table['_dart_hitTest'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.hitTest(
            maybeUnBoxAndBuildArgument<BoxHitTestResult, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            position: maybeUnBoxAndBuildArgument<Offset, dynamic>(
                luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['position']
                    : null,
                parentState: hydroState))
      ];
    });
    table['_dart_hitTestSelf'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.hitTestSelf(maybeUnBoxAndBuildArgument<Offset, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_globalToLocal'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: super.globalToLocal(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                ancestor: maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['ancestor']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_localToGlobal'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Offset>(
            object: super.localToGlobal(
                maybeUnBoxAndBuildArgument<Offset, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                ancestor: maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['ancestor']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_handleEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<BoxHitTestEntry, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugHandleEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.debugHandleEvent(
            maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            maybeUnBoxAndBuildArgument<HitTestEntry, dynamic>(
                luaCallerArguments[2],
                parentState: hydroState))
      ];
    });
    table['_dart_debugPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugPaint(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugPaintSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugPaintSize(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugPaintBaselines'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugPaintBaselines(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugPaintPointers'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugPaintPointers(
          maybeUnBoxAndBuildArgument<PaintingContext, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getHasSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasSize];
    });
    table['_dart_getSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.size];
    });
    table['_dart_setSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.size = (maybeUnBoxAndBuildArgument<Size, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getSemanticBounds'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.semanticBounds];
    });
    table['_dart_getConstraints'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.constraints];
    });
    table['_dart_getPaintBounds'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.paintBounds];
    });
    table['_dart_reassemble'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.reassemble();
      return [];
    });
    table['_dart_dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_adoptChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.adoptChild(maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_dropChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.dropChild(maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_markParentNeedsLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markParentNeedsLayout();
      return [];
    });
    table['_dart_markNeedsLayoutForSizedByParentChange'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsLayoutForSizedByParentChange();
      return [];
    });
    table['_dart_scheduleInitialLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scheduleInitialLayout();
      return [];
    });
    table['_dart_layout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.layout(
          maybeUnBoxAndBuildArgument<Constraints, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          parentUsesSize: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['parentUsesSize']
              : null);
      return [];
    });
    table['_dart_invokeLayoutCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      super.invokeLayoutCallback((constraints) => unpackedcallback.dispatch(
            [luaCallerArguments[0], constraints],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_rotate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.rotate(
          newAngle: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['newAngle']
              : null,
          oldAngle: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['oldAngle']
              : null,
          time: maybeUnBoxAndBuildArgument<Duration?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['time']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_debugRegisterRepaintBoundaryPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugRegisterRepaintBoundaryPaint(
          includedChild: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['includedChild']
              : null,
          includedParent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['includedParent']
              : null);
      return [];
    });
    table['_dart_markNeedsCompositingBitsUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsCompositingBitsUpdate();
      return [];
    });
    table['_dart_markNeedsPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsPaint();
      return [];
    });
    table['_dart_scheduleInitialPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scheduleInitialPaint(
          maybeUnBoxAndBuildArgument<ContainerLayer, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_replaceRootLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.replaceRootLayer(maybeUnBoxAndBuildArgument<OffsetLayer, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getTransformTo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Matrix4>(
            object: super.getTransformTo(
                maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_describeApproximatePaintClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect?>(
            object: super.describeApproximatePaintClip(
                maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_describeSemanticsClip'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Rect?>(
            object: super.describeSemanticsClip(
                maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_scheduleInitialSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scheduleInitialSemantics();
      return [];
    });
    table['_dart_sendSemanticsEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.sendSemanticsEvent(
          maybeUnBoxAndBuildArgument<SemanticsEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_clearSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.clearSemantics();
      return [];
    });
    table['_dart_markNeedsSemanticsUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsSemanticsUpdate();
      return [];
    });
    table['_dart_assembleSemanticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.assembleSemanticsNode(
          maybeUnBoxAndBuildArgument<SemanticsNode, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<SemanticsConfiguration, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Iterable<SemanticsNode>, SemanticsNode>(
              luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toStringShort()];
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
    table['_dart_toStringDeep'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null)
      ];
    });
    table['_dart_toStringShallow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null))
      ];
    });
    table['_dart_showOnScreen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.showOnScreen(
          curve: maybeUnBoxAndBuildArgument<Curve, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['curve'] : null,
              parentState: hydroState),
          descendant: maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['descendant']
                  : null,
              parentState: hydroState),
          duration: maybeUnBoxAndBuildArgument<Duration, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['duration']
                  : null,
              parentState: hydroState),
          rect: maybeUnBoxAndBuildArgument<Rect?, dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rect'] : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_describeForError'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: super.describeForError(luaCallerArguments[1],
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getDebugDisposed'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDisposed];
    });
    table['_dart_getDebugDoingThisResize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDoingThisResize];
    });
    table['_dart_getDebugDoingThisLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDoingThisLayout];
    });
    table['_dart_getDebugCanParentUseSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugCanParentUseSize];
    });
    table['_dart_getOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.owner];
    });
    table['_dart_getDebugNeedsLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugNeedsLayout];
    });
    table['_dart_getDebugDoingThisLayoutWithCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDoingThisLayoutWithCallback];
    });
    table['_dart_getSizedByParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.sizedByParent];
    });
    table['_dart_getDebugDoingThisPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDoingThisPaint];
    });
    table['_dart_getIsRepaintBoundary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isRepaintBoundary];
    });
    table['_dart_getAlwaysNeedsCompositing'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.alwaysNeedsCompositing];
    });
    table['_dart_getLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.layer];
    });
    table['_dart_setLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.layer = (maybeUnBoxAndBuildArgument<ContainerLayer?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getDebugLayer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugLayer];
    });
    table['_dart_getNeedsCompositing'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.needsCompositing];
    });
    table['_dart_getDebugNeedsPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugNeedsPaint];
    });
    table['_dart_getDebugSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugSemantics];
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
    table['_dart_redepthChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.redepthChild(maybeUnBoxAndBuildArgument<AbstractNode, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getDepth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.depth];
    });
    table['_dart_getAttached'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.attached];
    });
    table['_dart_getParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.parent];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  RenderSemanticsAnnotations unwrap() => this;
  RenderSemanticsAnnotations get vmObject => this;
  @override
  bool get container {
    Closure closure = table["getContainer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set container(bool value) {
    Closure closure = table["setContainer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get explicitChildNodes {
    Closure closure = table["getExplicitChildNodes"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set explicitChildNodes(bool value) {
    Closure closure = table["setExplicitChildNodes"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get excludeSemantics {
    Closure closure = table["getExcludeSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set excludeSemantics(bool value) {
    Closure closure = table["setExcludeSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get checked {
    Closure closure = table["getChecked"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set checked(bool? value) {
    Closure closure = table["setChecked"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get enabled {
    Closure closure = table["getEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set enabled(bool? value) {
    Closure closure = table["setEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get selected {
    Closure closure = table["getSelected"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set selected(bool? value) {
    Closure closure = table["setSelected"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get button {
    Closure closure = table["getButton"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set button(bool? value) {
    Closure closure = table["setButton"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get slider {
    Closure closure = table["getSlider"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set slider(bool? value) {
    Closure closure = table["setSlider"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get keyboardKey {
    Closure closure = table["getKeyboardKey"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set keyboardKey(bool? value) {
    Closure closure = table["setKeyboardKey"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get link {
    Closure closure = table["getLink"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set link(bool? value) {
    Closure closure = table["setLink"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get header {
    Closure closure = table["getHeader"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set header(bool? value) {
    Closure closure = table["setHeader"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get textField {
    Closure closure = table["getTextField"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set textField(bool? value) {
    Closure closure = table["setTextField"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get readOnly {
    Closure closure = table["getReadOnly"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set readOnly(bool? value) {
    Closure closure = table["setReadOnly"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get focusable {
    Closure closure = table["getFocusable"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set focusable(bool? value) {
    Closure closure = table["setFocusable"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get focused {
    Closure closure = table["getFocused"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set focused(bool? value) {
    Closure closure = table["setFocused"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get inMutuallyExclusiveGroup {
    Closure closure = table["getInMutuallyExclusiveGroup"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set inMutuallyExclusiveGroup(bool? value) {
    Closure closure = table["setInMutuallyExclusiveGroup"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get obscured {
    Closure closure = table["getObscured"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set obscured(bool? value) {
    Closure closure = table["setObscured"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get multiline {
    Closure closure = table["getMultiline"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set multiline(bool? value) {
    Closure closure = table["setMultiline"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get scopesRoute {
    Closure closure = table["getScopesRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set scopesRoute(bool? value) {
    Closure closure = table["setScopesRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get namesRoute {
    Closure closure = table["getNamesRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set namesRoute(bool? value) {
    Closure closure = table["setNamesRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get hidden {
    Closure closure = table["getHidden"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set hidden(bool? value) {
    Closure closure = table["setHidden"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get image {
    Closure closure = table["getImage"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set image(bool? value) {
    Closure closure = table["setImage"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get liveRegion {
    Closure closure = table["getLiveRegion"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set liveRegion(bool? value) {
    Closure closure = table["setLiveRegion"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int? get maxValueLength {
    Closure closure = table["getMaxValueLength"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set maxValueLength(int? value) {
    Closure closure = table["setMaxValueLength"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int? get currentValueLength {
    Closure closure = table["getCurrentValueLength"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set currentValueLength(int? value) {
    Closure closure = table["setCurrentValueLength"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get toggled {
    Closure closure = table["getToggled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set toggled(bool? value) {
    Closure closure = table["setToggled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AttributedString? get attributedLabel {
    Closure closure = table["getAttributedLabel"];
    return maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set attributedLabel(AttributedString? value) {
    Closure closure = table["setAttributedLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AttributedString? get attributedValue {
    Closure closure = table["getAttributedValue"];
    return maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set attributedValue(AttributedString? value) {
    Closure closure = table["setAttributedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AttributedString? get attributedIncreasedValue {
    Closure closure = table["getAttributedIncreasedValue"];
    return maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set attributedIncreasedValue(AttributedString? value) {
    Closure closure = table["setAttributedIncreasedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AttributedString? get attributedDecreasedValue {
    Closure closure = table["getAttributedDecreasedValue"];
    return maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set attributedDecreasedValue(AttributedString? value) {
    Closure closure = table["setAttributedDecreasedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AttributedString? get attributedHint {
    Closure closure = table["getAttributedHint"];
    return maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set attributedHint(AttributedString? value) {
    Closure closure = table["setAttributedHint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SemanticsHintOverrides? get hintOverrides {
    Closure closure = table["getHintOverrides"];
    return maybeUnBoxAndBuildArgument<SemanticsHintOverrides?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set hintOverrides(SemanticsHintOverrides? value) {
    Closure closure = table["setHintOverrides"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  TextDirection? get textDirection {
    Closure closure = table["getTextDirection"];
    return maybeUnBoxEnum(
        values: TextDirection.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  void set textDirection(TextDirection? value) {
    Closure closure = table["setTextDirection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SemanticsSortKey? get sortKey {
    Closure closure = table["getSortKey"];
    return maybeUnBoxAndBuildArgument<SemanticsSortKey?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set sortKey(SemanticsSortKey? value) {
    Closure closure = table["setSortKey"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SemanticsTag? get tagForChildren {
    Closure closure = table["getTagForChildren"];
    return maybeUnBoxAndBuildArgument<SemanticsTag?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set tagForChildren(SemanticsTag? value) {
    Closure closure = table["setTagForChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onTap(handler) {
    Closure closure = table["setOnTap"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onDismiss(handler) {
    Closure closure = table["setOnDismiss"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onLongPress(handler) {
    Closure closure = table["setOnLongPress"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onScrollLeft(handler) {
    Closure closure = table["setOnScrollLeft"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onScrollRight(handler) {
    Closure closure = table["setOnScrollRight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onScrollUp(handler) {
    Closure closure = table["setOnScrollUp"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onScrollDown(handler) {
    Closure closure = table["setOnScrollDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onIncrease(handler) {
    Closure closure = table["setOnIncrease"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onDecrease(handler) {
    Closure closure = table["setOnDecrease"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onCopy(handler) {
    Closure closure = table["setOnCopy"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onCut(handler) {
    Closure closure = table["setOnCut"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onPaste(handler) {
    Closure closure = table["setOnPaste"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onMoveCursorForwardByCharacter(handler) {
    Closure closure = table["setOnMoveCursorForwardByCharacter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onMoveCursorBackwardByCharacter(handler) {
    Closure closure = table["setOnMoveCursorBackwardByCharacter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onMoveCursorForwardByWord(handler) {
    Closure closure = table["setOnMoveCursorForwardByWord"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onMoveCursorBackwardByWord(handler) {
    Closure closure = table["setOnMoveCursorBackwardByWord"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onSetSelection(handler) {
    Closure closure = table["setOnSetSelection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onSetText(handler) {
    Closure closure = table["setOnSetText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onDidGainAccessibilityFocus(handler) {
    Closure closure = table["setOnDidGainAccessibilityFocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onDidLoseAccessibilityFocus(handler) {
    Closure closure = table["setOnDidLoseAccessibilityFocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Map<CustomSemanticsAction, void Function()>? get customSemanticsActions {
    Closure closure = table["getCustomSemanticsActions"];
    return maybeUnBoxAndBuildArgument<
            Map<CustomSemanticsAction, void Function()>?,
            CustomSemanticsAction>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set customSemanticsActions(Map? value) {
    Closure closure = table["setCustomSemanticsActions"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void visitChildrenForSemantics(visitor) {
    Closure closure = table["visitChildrenForSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void describeSemanticsConfiguration(SemanticsConfiguration config) {
    Closure closure = table["describeSemanticsConfiguration"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool debugValidateChild(RenderObject child) {
    Closure closure = table["debugValidateChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void attach(PipelineOwner owner) {
    super.attach(owner);
    Closure closure = table["attach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void detach() {
    super.detach();
    Closure closure = table["detach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void redepthChildren() {
    Closure closure = table["redepthChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void visitChildren(visitor) {
    Closure closure = table["visitChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    Closure closure = table["debugDescribeChildren"];
    return maybeUnBoxAndBuildArgument<List<DiagnosticsNode>, DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  RenderBox? get child {
    Closure closure = table["getChild"];
    return maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set child(RenderBox? value) {
    Closure closure = table["setChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void setupParentData(RenderObject child) {
    Closure closure = table["setupParentData"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double computeMinIntrinsicWidth(double height) {
    Closure closure = table["computeMinIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double computeMaxIntrinsicWidth(double height) {
    Closure closure = table["computeMaxIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double computeMinIntrinsicHeight(double width) {
    Closure closure = table["computeMinIntrinsicHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double computeMaxIntrinsicHeight(double width) {
    Closure closure = table["computeMaxIntrinsicHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double? computeDistanceToActualBaseline(TextBaseline baseline) {
    Closure closure = table["computeDistanceToActualBaseline"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    Closure closure = table["computeDryLayout"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void performLayout() {
    Closure closure = table["performLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Size computeSizeForNoChild(BoxConstraints constraints) {
    Closure closure = table["computeSizeForNoChild"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    Closure closure = table["hitTestChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void applyPaintTransform(RenderObject child, Matrix4 transform) {
    Closure closure = table["applyPaintTransform"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    Closure closure = table["paint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double getMinIntrinsicWidth(double height) {
    super.getMinIntrinsicWidth(height);
    Closure closure = table["getMinIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double getMaxIntrinsicWidth(double height) {
    super.getMaxIntrinsicWidth(height);
    Closure closure = table["getMaxIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double getMinIntrinsicHeight(double width) {
    super.getMinIntrinsicHeight(width);
    Closure closure = table["getMinIntrinsicHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double getMaxIntrinsicHeight(double width) {
    super.getMaxIntrinsicHeight(width);
    Closure closure = table["getMaxIntrinsicHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  Size getDryLayout(BoxConstraints constraints) {
    super.getDryLayout(constraints);
    Closure closure = table["getDryLayout"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool debugCannotComputeDryLayout({FlutterError? error, String? reason}) {
    Closure closure = table["debugCannotComputeDryLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Size debugAdoptSize(Size value) {
    Closure closure = table["debugAdoptSize"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void debugResetSize() {
    Closure closure = table["debugResetSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double? getDistanceToBaseline(TextBaseline baseline,
      {bool onlyReal = false}) {
    Closure closure = table["getDistanceToBaseline"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  double? getDistanceToActualBaseline(TextBaseline baseline) {
    super.getDistanceToActualBaseline(baseline);
    Closure closure = table["getDistanceToActualBaseline"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void debugAssertDoesMeetConstraints() {
    Closure closure = table["debugAssertDoesMeetConstraints"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsLayout() {
    Closure closure = table["markNeedsLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void performResize() {
    Closure closure = table["performResize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool hitTest(BoxHitTestResult result, {required Offset position}) {
    Closure closure = table["hitTest"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool hitTestSelf(Offset position) {
    Closure closure = table["hitTestSelf"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Offset globalToLocal(Offset point, {RenderObject? ancestor}) {
    Closure closure = table["globalToLocal"];
    return maybeUnBoxAndBuildArgument<Offset, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Offset localToGlobal(Offset point, {RenderObject? ancestor}) {
    Closure closure = table["localToGlobal"];
    return maybeUnBoxAndBuildArgument<Offset, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void handleEvent(PointerEvent event, BoxHitTestEntry entry) {
    Closure closure = table["handleEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool debugHandleEvent(PointerEvent event, HitTestEntry entry) {
    Closure closure = table["debugHandleEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugPaint(PaintingContext context, Offset offset) {
    Closure closure = table["debugPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugPaintSize(PaintingContext context, Offset offset) {
    Closure closure = table["debugPaintSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugPaintBaselines(PaintingContext context, Offset offset) {
    Closure closure = table["debugPaintBaselines"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugPaintPointers(PaintingContext context, Offset offset) {
    Closure closure = table["debugPaintPointers"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get hasSize {
    Closure closure = table["getHasSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Size get size {
    Closure closure = table["getSize"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set size(Size value) {
    Closure closure = table["setSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Rect get semanticBounds {
    Closure closure = table["getSemanticBounds"];
    return maybeUnBoxAndBuildArgument<Rect, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  BoxConstraints get constraints {
    Closure closure = table["getConstraints"];
    return maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Rect get paintBounds {
    Closure closure = table["getPaintBounds"];
    return maybeUnBoxAndBuildArgument<Rect, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void reassemble() {
    Closure closure = table["reassemble"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void dispose() {
    super.dispose();
    Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void adoptChild(RenderObject child) {
    super.adoptChild(child);
    Closure closure = table["adoptChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void dropChild(RenderObject child) {
    super.dropChild(child);
    Closure closure = table["dropChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markParentNeedsLayout() {
    Closure closure = table["markParentNeedsLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsLayoutForSizedByParentChange() {
    Closure closure = table["markNeedsLayoutForSizedByParentChange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void scheduleInitialLayout() {
    Closure closure = table["scheduleInitialLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void layout(Constraints constraints, {bool parentUsesSize = false}) {
    Closure closure = table["layout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void invokeLayoutCallback<T extends Constraints>(callback) {
    Closure closure = table["invokeLayoutCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void rotate({int? newAngle, int? oldAngle, Duration? time}) {
    Closure closure = table["rotate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugRegisterRepaintBoundaryPaint(
      {bool includedChild = false, bool includedParent = true}) {
    Closure closure = table["debugRegisterRepaintBoundaryPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsCompositingBitsUpdate() {
    Closure closure = table["markNeedsCompositingBitsUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsPaint() {
    Closure closure = table["markNeedsPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void scheduleInitialPaint(ContainerLayer rootLayer) {
    Closure closure = table["scheduleInitialPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void replaceRootLayer(OffsetLayer rootLayer) {
    Closure closure = table["replaceRootLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Matrix4 getTransformTo(RenderObject? ancestor) {
    Closure closure = table["getTransformTo"];
    return maybeUnBoxAndBuildArgument<Matrix4, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Rect? describeApproximatePaintClip(RenderObject child) {
    Closure closure = table["describeApproximatePaintClip"];
    return maybeUnBoxAndBuildArgument<Rect?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Rect? describeSemanticsClip(RenderObject? child) {
    Closure closure = table["describeSemanticsClip"];
    return maybeUnBoxAndBuildArgument<Rect?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void scheduleInitialSemantics() {
    Closure closure = table["scheduleInitialSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void sendSemanticsEvent(SemanticsEvent semanticsEvent) {
    Closure closure = table["sendSemanticsEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void clearSemantics() {
    super.clearSemantics();
    Closure closure = table["clearSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void markNeedsSemanticsUpdate() {
    Closure closure = table["markNeedsSemanticsUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void assembleSemanticsNode(
      SemanticsNode node, SemanticsConfiguration config, Iterable children) {
    Closure closure = table["assembleSemanticsNode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringShort() {
    Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringDeep(
      {DiagnosticLevel minLevel = DiagnosticLevel.debug,
      String prefixLineOne = '',
      String? prefixOtherLines = ''}) {
    Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringShallow(
      {String joiner = ', ',
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void showOnScreen(
      {Curve curve = Curves.ease,
      RenderObject? descendant,
      Duration duration = Duration.zero,
      Rect? rect}) {
    Closure closure = table["showOnScreen"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  DiagnosticsNode describeForError(String name,
      {DiagnosticsTreeStyle style = DiagnosticsTreeStyle.shallow}) {
    Closure closure = table["describeForError"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool? get debugDisposed {
    Closure closure = table["getDebugDisposed"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugDoingThisResize {
    Closure closure = table["getDebugDoingThisResize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugDoingThisLayout {
    Closure closure = table["getDebugDoingThisLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugCanParentUseSize {
    Closure closure = table["getDebugCanParentUseSize"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  PipelineOwner? get owner {
    Closure closure = table["getOwner"];
    return maybeUnBoxAndBuildArgument<PipelineOwner?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get debugNeedsLayout {
    Closure closure = table["getDebugNeedsLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugDoingThisLayoutWithCallback {
    Closure closure = table["getDebugDoingThisLayoutWithCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get sizedByParent {
    Closure closure = table["getSizedByParent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugDoingThisPaint {
    Closure closure = table["getDebugDoingThisPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isRepaintBoundary {
    Closure closure = table["getIsRepaintBoundary"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get alwaysNeedsCompositing {
    Closure closure = table["getAlwaysNeedsCompositing"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ContainerLayer? get layer {
    Closure closure = table["getLayer"];
    return maybeUnBoxAndBuildArgument<ContainerLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set layer(ContainerLayer? newLayer) {
    Closure closure = table["setLayer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ContainerLayer? get debugLayer {
    Closure closure = table["getDebugLayer"];
    return maybeUnBoxAndBuildArgument<ContainerLayer?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get needsCompositing {
    Closure closure = table["getNeedsCompositing"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugNeedsPaint {
    Closure closure = table["getDebugNeedsPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SemanticsNode? get debugSemantics {
    Closure closure = table["getDebugSemantics"];
    return maybeUnBoxAndBuildArgument<SemanticsNode?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  DiagnosticsNode toDiagnosticsNode(
      {String? name, DiagnosticsTreeStyle? style}) {
    Closure closure = table["toDiagnosticsNode"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void redepthChild(AbstractNode child) {
    Closure closure = table["redepthChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get depth {
    Closure closure = table["getDepth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get attached {
    Closure closure = table["getAttached"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AbstractNode? get parent {
    Closure closure = table["getParent"];
    return maybeUnBoxAndBuildArgument<AbstractNode?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadRenderSemanticsAnnotations(
    {required HydroState hydroState, required HydroTable table}) {
  table['renderSemanticsAnnotations'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedonCopy =
        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onCopy'] : null;
    Closure? unpackedonCut =
        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onCut'] : null;
    Closure? unpackedonDecrease = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onDecrease']
        : null;
    Closure? unpackedonDidGainAccessibilityFocus =
        luaCallerArguments.length >= 2
            ? luaCallerArguments[1]['onDidGainAccessibilityFocus']
            : null;
    Closure? unpackedonDidLoseAccessibilityFocus =
        luaCallerArguments.length >= 2
            ? luaCallerArguments[1]['onDidLoseAccessibilityFocus']
            : null;
    Closure? unpackedonDismiss = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onDismiss']
        : null;
    Closure? unpackedonIncrease = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onIncrease']
        : null;
    Closure? unpackedonLongPress = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onLongPress']
        : null;
    Closure? unpackedonMoveCursorBackwardByCharacter =
        luaCallerArguments.length >= 2
            ? luaCallerArguments[1]['onMoveCursorBackwardByCharacter']
            : null;
    Closure? unpackedonMoveCursorBackwardByWord = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onMoveCursorBackwardByWord']
        : null;
    Closure? unpackedonMoveCursorForwardByCharacter =
        luaCallerArguments.length >= 2
            ? luaCallerArguments[1]['onMoveCursorForwardByCharacter']
            : null;
    Closure? unpackedonMoveCursorForwardByWord = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onMoveCursorForwardByWord']
        : null;
    Closure? unpackedonPaste = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onPaste']
        : null;
    Closure? unpackedonScrollDown = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onScrollDown']
        : null;
    Closure? unpackedonScrollLeft = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onScrollLeft']
        : null;
    Closure? unpackedonScrollRight = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onScrollRight']
        : null;
    Closure? unpackedonScrollUp = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onScrollUp']
        : null;
    Closure? unpackedonSetSelection = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSetSelection']
        : null;
    Closure? unpackedonSetText = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSetText']
        : null;
    Closure? unpackedonTap =
        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onTap'] : null;

    return [
      RTManagedRenderSemanticsAnnotations(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          attributedDecreasedValue: maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['attributedDecreasedValue']
                  : null,
              parentState: hydroState),
          attributedHint:
              maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['attributedHint'] : null,
                  parentState: hydroState),
          attributedIncreasedValue:
              maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['attributedIncreasedValue']
                      : null,
                  parentState: hydroState),
          attributedLabel: maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['attributedLabel'] : null,
              parentState: hydroState),
          attributedValue: maybeUnBoxAndBuildArgument<AttributedString?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['attributedValue'] : null, parentState: hydroState),
          button: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['button'] : null,
          checked: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['checked'] : null,
          child: maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['child'] : null, parentState: hydroState),
          container: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['container'] : null,
          currentValueLength: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['currentValueLength'] : null,
          customSemanticsActions: maybeUnBoxAndBuildArgument<Map<CustomSemanticsAction, void Function()>?, CustomSemanticsAction>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['customSemanticsActions'] : null, parentState: hydroState),
          enabled: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enabled'] : null,
          excludeSemantics: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['excludeSemantics'] : null,
          explicitChildNodes: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['explicitChildNodes'] : null,
          focusable: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusable'] : null,
          focused: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focused'] : null,
          header: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['header'] : null,
          hidden: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hidden'] : null,
          hintOverrides: maybeUnBoxAndBuildArgument<SemanticsHintOverrides?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintOverrides'] : null, parentState: hydroState),
          image: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['image'] : null,
          inMutuallyExclusiveGroup: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inMutuallyExclusiveGroup'] : null,
          keyboardKey: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['keyboardKey'] : null,
          link: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['link'] : null,
          liveRegion: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['liveRegion'] : null,
          maxValueLength: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxValueLength'] : null,
          multiline: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['multiline'] : null,
          namesRoute: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['namesRoute'] : null,
          obscured: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['obscured'] : null,
          onCopy: unpackedonCopy != null
              ? () => unpackedonCopy.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onCut: unpackedonCut != null
              ? () => unpackedonCut.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onDecrease: unpackedonDecrease != null
              ? () => unpackedonDecrease.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onDidGainAccessibilityFocus: unpackedonDidGainAccessibilityFocus != null
              ? () => unpackedonDidGainAccessibilityFocus.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onDidLoseAccessibilityFocus: unpackedonDidLoseAccessibilityFocus != null
              ? () => unpackedonDidLoseAccessibilityFocus.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onDismiss: unpackedonDismiss != null
              ? () => unpackedonDismiss.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onIncrease: unpackedonIncrease != null
              ? () => unpackedonIncrease.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onLongPress: unpackedonLongPress != null
              ? () => unpackedonLongPress.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onMoveCursorBackwardByCharacter: unpackedonMoveCursorBackwardByCharacter != null
              ? (extendSelection) => unpackedonMoveCursorBackwardByCharacter.dispatch(
                    [luaCallerArguments[0], extendSelection],
                    parentState: hydroState,
                  )
              : null,
          onMoveCursorBackwardByWord: unpackedonMoveCursorBackwardByWord != null
              ? (extendSelection) => unpackedonMoveCursorBackwardByWord.dispatch(
                    [luaCallerArguments[0], extendSelection],
                    parentState: hydroState,
                  )
              : null,
          onMoveCursorForwardByCharacter: unpackedonMoveCursorForwardByCharacter != null
              ? (extendSelection) => unpackedonMoveCursorForwardByCharacter.dispatch(
                    [luaCallerArguments[0], extendSelection],
                    parentState: hydroState,
                  )
              : null,
          onMoveCursorForwardByWord: unpackedonMoveCursorForwardByWord != null
              ? (extendSelection) => unpackedonMoveCursorForwardByWord.dispatch(
                    [luaCallerArguments[0], extendSelection],
                    parentState: hydroState,
                  )
              : null,
          onPaste: unpackedonPaste != null
              ? () => unpackedonPaste.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onScrollDown: unpackedonScrollDown != null
              ? () => unpackedonScrollDown.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onScrollLeft: unpackedonScrollLeft != null
              ? () => unpackedonScrollLeft.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onScrollRight: unpackedonScrollRight != null
              ? () => unpackedonScrollRight.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onScrollUp: unpackedonScrollUp != null
              ? () => unpackedonScrollUp.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onSetSelection: unpackedonSetSelection != null
              ? (selection) => unpackedonSetSelection.dispatch(
                    [luaCallerArguments[0], selection],
                    parentState: hydroState,
                  )
              : null,
          onSetText: unpackedonSetText != null
              ? (text) => unpackedonSetText.dispatch(
                    [luaCallerArguments[0], text],
                    parentState: hydroState,
                  )
              : null,
          onTap: unpackedonTap != null
              ? () => unpackedonTap.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          readOnly: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['readOnly'] : null,
          scopesRoute: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scopesRoute'] : null,
          selected: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selected'] : null,
          slider: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['slider'] : null,
          sortKey: maybeUnBoxAndBuildArgument<SemanticsSortKey?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['sortKey'] : null, parentState: hydroState),
          tagForChildren: maybeUnBoxAndBuildArgument<SemanticsTag?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tagForChildren'] : null, parentState: hydroState),
          textDirection: maybeUnBoxEnum(values: TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textDirection'] : null),
          textField: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textField'] : null,
          toggled: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toggled'] : null)
    ];
  });
  registerBoxer<RenderSemanticsAnnotations>(boxer: (
      {required RenderSemanticsAnnotations vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRenderSemanticsAnnotations(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
