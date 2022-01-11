import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/semantics/semantics.dart';
import 'package:flutter/src/services/text_editing.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSemanticsConfiguration
    extends VMManagedBox<SemanticsConfiguration> {
  VMManagedSemanticsConfiguration(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['explicitChildNodes'] = vmObject.explicitChildNodes;
    table['isBlockingSemanticsOfPreviouslyPaintedNodes'] =
        vmObject.isBlockingSemanticsOfPreviouslyPaintedNodes;
    table['getIsSemanticBoundary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isSemanticBoundary,
      ];
    });
    table['setIsSemanticBoundary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isSemanticBoundary = (luaCallerArguments[1]);
      return [];
    });
    table['getHasBeenAnnotated'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasBeenAnnotated,
      ];
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onTap = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onLongPress = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onScrollLeft = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onDismiss = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onScrollRight = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onScrollUp = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onScrollDown = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onIncrease = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onDecrease = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onCopy = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onCut = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onPaste = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getOnShowOnScreen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.onShowOnScreen;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setOnShowOnScreen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onShowOnScreen = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onMoveCursorForwardByCharacter = (unpackedvalue != null
          ? (extendSelection) => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onMoveCursorBackwardByCharacter = (unpackedvalue != null
          ? (extendSelection) => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onMoveCursorForwardByWord = (unpackedvalue != null
          ? (extendSelection) => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onMoveCursorBackwardByWord = (unpackedvalue != null
          ? (extendSelection) => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onSetSelection = (unpackedvalue != null
          ? (selection) => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onSetText = (unpackedvalue != null
          ? (text) => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onDidGainAccessibilityFocus = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.onDidLoseAccessibilityFocus = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['getActionHandler'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.getActionHandler(
          maybeUnBoxAndBuildArgument<SemanticsAction, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
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
    table['getIndexInParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.indexInParent;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setIndexInParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.indexInParent = (luaCallerArguments[1]);
      return [];
    });
    table['getScrollChildCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollChildCount;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setScrollChildCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scrollChildCount = (luaCallerArguments[1]);
      return [];
    });
    table['getScrollIndex'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollIndex;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setScrollIndex'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scrollIndex = (luaCallerArguments[1]);
      return [];
    });
    table['getPlatformViewId'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.platformViewId;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setPlatformViewId'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.platformViewId = (luaCallerArguments[1]);
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
    table['getIsMergingSemanticsOfDescendants'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isMergingSemanticsOfDescendants,
      ];
    });
    table['setIsMergingSemanticsOfDescendants'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isMergingSemanticsOfDescendants = (luaCallerArguments[1]);
      return [];
    });
    table['getCustomSemanticsActions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Map>(
            object: vmObject.customSemanticsActions,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setCustomSemanticsActions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.customSemanticsActions = (maybeUnBoxAndBuildArgument<
              Map<CustomSemanticsAction, void Function()>,
              CustomSemanticsAction>(luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getLabel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.label,
      ];
    });
    table['setLabel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.label = (luaCallerArguments[1]);
      return [];
    });
    table['getAttributedLabel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<AttributedString>(
            object: vmObject.attributedLabel,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setAttributedLabel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attributedLabel =
          (maybeUnBoxAndBuildArgument<AttributedString, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.value,
      ];
    });
    table['setValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.value = (luaCallerArguments[1]);
      return [];
    });
    table['getAttributedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<AttributedString>(
            object: vmObject.attributedValue,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setAttributedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attributedValue =
          (maybeUnBoxAndBuildArgument<AttributedString, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getIncreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.increasedValue,
      ];
    });
    table['setIncreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.increasedValue = (luaCallerArguments[1]);
      return [];
    });
    table['getAttributedIncreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<AttributedString>(
            object: vmObject.attributedIncreasedValue,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setAttributedIncreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attributedIncreasedValue =
          (maybeUnBoxAndBuildArgument<AttributedString, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getDecreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.decreasedValue,
      ];
    });
    table['setDecreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.decreasedValue = (luaCallerArguments[1]);
      return [];
    });
    table['getAttributedDecreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<AttributedString>(
            object: vmObject.attributedDecreasedValue,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setAttributedDecreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attributedDecreasedValue =
          (maybeUnBoxAndBuildArgument<AttributedString, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hint,
      ];
    });
    table['setHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.hint = (luaCallerArguments[1]);
      return [];
    });
    table['getAttributedHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<AttributedString>(
            object: vmObject.attributedHint,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setAttributedHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attributedHint =
          (maybeUnBoxAndBuildArgument<AttributedString, dynamic>(
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
    table['getElevation'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.elevation,
      ];
    });
    table['setElevation'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.elevation = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getThickness'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.thickness,
      ];
    });
    table['setThickness'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.thickness = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getScopesRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.scopesRoute,
      ];
    });
    table['setScopesRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scopesRoute = (luaCallerArguments[1]);
      return [];
    });
    table['getNamesRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.namesRoute,
      ];
    });
    table['setNamesRoute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.namesRoute = (luaCallerArguments[1]);
      return [];
    });
    table['getIsImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isImage,
      ];
    });
    table['setIsImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isImage = (luaCallerArguments[1]);
      return [];
    });
    table['getLiveRegion'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.liveRegion,
      ];
    });
    table['setLiveRegion'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.liveRegion = (luaCallerArguments[1]);
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
    table['getIsSelected'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isSelected,
      ];
    });
    table['setIsSelected'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isSelected = (luaCallerArguments[1]);
      return [];
    });
    table['getIsEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.isEnabled;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setIsEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isEnabled = (luaCallerArguments[1]);
      return [];
    });
    table['getIsChecked'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.isChecked;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setIsChecked'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isChecked = (luaCallerArguments[1]);
      return [];
    });
    table['getIsToggled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.isToggled;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setIsToggled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isToggled = (luaCallerArguments[1]);
      return [];
    });
    table['getIsInMutuallyExclusiveGroup'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isInMutuallyExclusiveGroup,
      ];
    });
    table['setIsInMutuallyExclusiveGroup'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isInMutuallyExclusiveGroup = (luaCallerArguments[1]);
      return [];
    });
    table['getIsFocusable'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isFocusable,
      ];
    });
    table['setIsFocusable'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isFocusable = (luaCallerArguments[1]);
      return [];
    });
    table['getIsFocused'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isFocused,
      ];
    });
    table['setIsFocused'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isFocused = (luaCallerArguments[1]);
      return [];
    });
    table['getIsButton'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isButton,
      ];
    });
    table['setIsButton'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isButton = (luaCallerArguments[1]);
      return [];
    });
    table['getIsLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isLink,
      ];
    });
    table['setIsLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isLink = (luaCallerArguments[1]);
      return [];
    });
    table['getIsHeader'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isHeader,
      ];
    });
    table['setIsHeader'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isHeader = (luaCallerArguments[1]);
      return [];
    });
    table['getIsSlider'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isSlider,
      ];
    });
    table['setIsSlider'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isSlider = (luaCallerArguments[1]);
      return [];
    });
    table['getIsKeyboardKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isKeyboardKey,
      ];
    });
    table['setIsKeyboardKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isKeyboardKey = (luaCallerArguments[1]);
      return [];
    });
    table['getIsHidden'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isHidden,
      ];
    });
    table['setIsHidden'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isHidden = (luaCallerArguments[1]);
      return [];
    });
    table['getIsTextField'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isTextField,
      ];
    });
    table['setIsTextField'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isTextField = (luaCallerArguments[1]);
      return [];
    });
    table['getIsReadOnly'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isReadOnly,
      ];
    });
    table['setIsReadOnly'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isReadOnly = (luaCallerArguments[1]);
      return [];
    });
    table['getIsObscured'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isObscured,
      ];
    });
    table['setIsObscured'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isObscured = (luaCallerArguments[1]);
      return [];
    });
    table['getIsMultiline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isMultiline,
      ];
    });
    table['setIsMultiline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.isMultiline = (luaCallerArguments[1]);
      return [];
    });
    table['getHasImplicitScrolling'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasImplicitScrolling,
      ];
    });
    table['setHasImplicitScrolling'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.hasImplicitScrolling = (luaCallerArguments[1]);
      return [];
    });
    table['getTextSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.textSelection;
      if (returnValue != null) {
        return [
          maybeBoxObject<TextSelection?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setTextSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.textSelection =
          (maybeUnBoxAndBuildArgument<TextSelection?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getScrollPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollPosition;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setScrollPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scrollPosition = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getScrollExtentMax'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollExtentMax;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setScrollExtentMax'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scrollExtentMax = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getScrollExtentMin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollExtentMin;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setScrollExtentMin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scrollExtentMin = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getTagsForChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.tagsForChildren;
      if (returnValue != null) {
        return [
          maybeBoxObject<Iterable?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['addTagForChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.addTagForChildren(
          maybeUnBoxAndBuildArgument<SemanticsTag, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['isCompatibleWith'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isCompatibleWith(
            maybeUnBoxAndBuildArgument<SemanticsConfiguration?, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['absorb'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.absorb(
          maybeUnBoxAndBuildArgument<SemanticsConfiguration, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['copy'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SemanticsConfiguration>(
            object: vmObject.copy(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SemanticsConfiguration vmObject;
}

class RTManagedSemanticsConfiguration extends SemanticsConfiguration
    implements Box<SemanticsConfiguration> {
  RTManagedSemanticsConfiguration(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['explicitChildNodes'] = explicitChildNodes;
    table['isBlockingSemanticsOfPreviouslyPaintedNodes'] =
        isBlockingSemanticsOfPreviouslyPaintedNodes;
    table['_dart_getIsSemanticBoundary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isSemanticBoundary];
    });
    table['_dart_setIsSemanticBoundary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isSemanticBoundary = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getHasBeenAnnotated'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasBeenAnnotated];
    });
    table['_dart_setOnTap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onTap = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onLongPress = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onScrollLeft = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onDismiss = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onScrollRight = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onScrollUp = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onScrollDown = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onIncrease = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onDecrease = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onCopy = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onCut = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onPaste = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnShowOnScreen'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onShowOnScreen = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onMoveCursorForwardByCharacter = (unpackedvalue != null
          ? (extendSelection) => unpackedvalue.dispatch(
                [luaCallerArguments[0], extendSelection],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnMoveCursorBackwardByCharacter'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onMoveCursorBackwardByCharacter = (unpackedvalue != null
          ? (extendSelection) => unpackedvalue.dispatch(
                [luaCallerArguments[0], extendSelection],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnMoveCursorForwardByWord'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onMoveCursorForwardByWord = (unpackedvalue != null
          ? (extendSelection) => unpackedvalue.dispatch(
                [luaCallerArguments[0], extendSelection],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnMoveCursorBackwardByWord'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onMoveCursorBackwardByWord = (unpackedvalue != null
          ? (extendSelection) => unpackedvalue.dispatch(
                [luaCallerArguments[0], extendSelection],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnSetSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onSetSelection = (unpackedvalue != null
          ? (selection) => unpackedvalue.dispatch(
                [luaCallerArguments[0], selection],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnSetText'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onSetText = (unpackedvalue != null
          ? (text) => unpackedvalue.dispatch(
                [luaCallerArguments[0], text],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['_dart_setOnDidGainAccessibilityFocus'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onDidGainAccessibilityFocus = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
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
      Closure? unpackedvalue = luaCallerArguments[1];
      super.onDidLoseAccessibilityFocus = (unpackedvalue != null
          ? () => unpackedvalue.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )
          : null);
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
    table['_dart_getIndexInParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.indexInParent];
    });
    table['_dart_setIndexInParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.indexInParent = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getScrollChildCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.scrollChildCount];
    });
    table['_dart_setScrollChildCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scrollChildCount = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getScrollIndex'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.scrollIndex];
    });
    table['_dart_setScrollIndex'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scrollIndex = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getPlatformViewId'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.platformViewId];
    });
    table['_dart_setPlatformViewId'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.platformViewId = (luaCallerArguments[1]);
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
    table['_dart_getIsMergingSemanticsOfDescendants'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isMergingSemanticsOfDescendants];
    });
    table['_dart_setIsMergingSemanticsOfDescendants'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isMergingSemanticsOfDescendants = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getCustomSemanticsActions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.customSemanticsActions];
    });
    table['_dart_setCustomSemanticsActions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.customSemanticsActions = (maybeUnBoxAndBuildArgument<
              Map<CustomSemanticsAction, void Function()>,
              CustomSemanticsAction>(luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getLabel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.label];
    });
    table['_dart_setLabel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.label = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getAttributedLabel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.attributedLabel];
    });
    table['_dart_setAttributedLabel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attributedLabel =
          (maybeUnBoxAndBuildArgument<AttributedString, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.value];
    });
    table['_dart_setValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.value = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getAttributedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.attributedValue];
    });
    table['_dart_setAttributedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attributedValue =
          (maybeUnBoxAndBuildArgument<AttributedString, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getIncreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.increasedValue];
    });
    table['_dart_setIncreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.increasedValue = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getAttributedIncreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.attributedIncreasedValue];
    });
    table['_dart_setAttributedIncreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attributedIncreasedValue =
          (maybeUnBoxAndBuildArgument<AttributedString, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getDecreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.decreasedValue];
    });
    table['_dart_setDecreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.decreasedValue = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getAttributedDecreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.attributedDecreasedValue];
    });
    table['_dart_setAttributedDecreasedValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attributedDecreasedValue =
          (maybeUnBoxAndBuildArgument<AttributedString, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hint];
    });
    table['_dart_setHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.hint = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getAttributedHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.attributedHint];
    });
    table['_dart_setAttributedHint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attributedHint =
          (maybeUnBoxAndBuildArgument<AttributedString, dynamic>(
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
    table['_dart_getElevation'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.elevation];
    });
    table['_dart_setElevation'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.elevation = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_getThickness'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.thickness];
    });
    table['_dart_setThickness'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.thickness = (luaCallerArguments[1]?.toDouble());
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
    table['_dart_getIsImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isImage];
    });
    table['_dart_setIsImage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isImage = (luaCallerArguments[1]);
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
    table['_dart_getIsSelected'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isSelected];
    });
    table['_dart_setIsSelected'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isSelected = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isEnabled];
    });
    table['_dart_setIsEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isEnabled = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsChecked'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isChecked];
    });
    table['_dart_setIsChecked'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isChecked = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsToggled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isToggled];
    });
    table['_dart_setIsToggled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isToggled = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsInMutuallyExclusiveGroup'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isInMutuallyExclusiveGroup];
    });
    table['_dart_setIsInMutuallyExclusiveGroup'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isInMutuallyExclusiveGroup = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsFocusable'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isFocusable];
    });
    table['_dart_setIsFocusable'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isFocusable = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsFocused'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isFocused];
    });
    table['_dart_setIsFocused'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isFocused = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsButton'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isButton];
    });
    table['_dart_setIsButton'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isButton = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isLink];
    });
    table['_dart_setIsLink'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isLink = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsHeader'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isHeader];
    });
    table['_dart_setIsHeader'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isHeader = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsSlider'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isSlider];
    });
    table['_dart_setIsSlider'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isSlider = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsKeyboardKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isKeyboardKey];
    });
    table['_dart_setIsKeyboardKey'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isKeyboardKey = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsHidden'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isHidden];
    });
    table['_dart_setIsHidden'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isHidden = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsTextField'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isTextField];
    });
    table['_dart_setIsTextField'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isTextField = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsReadOnly'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isReadOnly];
    });
    table['_dart_setIsReadOnly'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isReadOnly = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsObscured'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isObscured];
    });
    table['_dart_setIsObscured'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isObscured = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getIsMultiline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isMultiline];
    });
    table['_dart_setIsMultiline'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.isMultiline = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getHasImplicitScrolling'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasImplicitScrolling];
    });
    table['_dart_setHasImplicitScrolling'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.hasImplicitScrolling = (luaCallerArguments[1]);
      return [];
    });
    table['_dart_getTextSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.textSelection];
    });
    table['_dart_setTextSelection'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.textSelection =
          (maybeUnBoxAndBuildArgument<TextSelection?, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getScrollPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.scrollPosition];
    });
    table['_dart_setScrollPosition'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scrollPosition = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_getScrollExtentMax'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.scrollExtentMax];
    });
    table['_dart_setScrollExtentMax'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scrollExtentMax = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_getScrollExtentMin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.scrollExtentMin];
    });
    table['_dart_setScrollExtentMin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scrollExtentMin = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['_dart_getTagsForChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.tagsForChildren];
    });
    table['_dart_addTagForChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.addTagForChildren(maybeUnBoxAndBuildArgument<SemanticsTag, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_isCompatibleWith'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.isCompatibleWith(
            maybeUnBoxAndBuildArgument<SemanticsConfiguration?, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
      ];
    });
    table['_dart_absorb'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.absorb(maybeUnBoxAndBuildArgument<SemanticsConfiguration, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_copy'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SemanticsConfiguration>(
            object: super.copy(), hydroState: hydroState, table: HydroTable())
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SemanticsConfiguration unwrap() => this;
  SemanticsConfiguration get vmObject => this;
  @override
  bool get isSemanticBoundary {
    Closure closure = table["getIsSemanticBoundary"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isSemanticBoundary(bool value) {
    Closure closure = table["setIsSemanticBoundary"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get hasBeenAnnotated {
    Closure closure = table["getHasBeenAnnotated"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onTap(value) {
    Closure closure = table["setOnTap"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onLongPress(value) {
    Closure closure = table["setOnLongPress"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onScrollLeft(value) {
    Closure closure = table["setOnScrollLeft"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onDismiss(value) {
    Closure closure = table["setOnDismiss"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onScrollRight(value) {
    Closure closure = table["setOnScrollRight"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onScrollUp(value) {
    Closure closure = table["setOnScrollUp"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onScrollDown(value) {
    Closure closure = table["setOnScrollDown"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onIncrease(value) {
    Closure closure = table["setOnIncrease"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onDecrease(value) {
    Closure closure = table["setOnDecrease"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onCopy(value) {
    Closure closure = table["setOnCopy"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onCut(value) {
    Closure closure = table["setOnCut"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onPaste(value) {
    Closure closure = table["setOnPaste"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onShowOnScreen(value) {
    Closure closure = table["setOnShowOnScreen"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onMoveCursorForwardByCharacter(value) {
    Closure closure = table["setOnMoveCursorForwardByCharacter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onMoveCursorBackwardByCharacter(value) {
    Closure closure = table["setOnMoveCursorBackwardByCharacter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onMoveCursorForwardByWord(value) {
    Closure closure = table["setOnMoveCursorForwardByWord"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onMoveCursorBackwardByWord(value) {
    Closure closure = table["setOnMoveCursorBackwardByWord"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onSetSelection(value) {
    Closure closure = table["setOnSetSelection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onSetText(value) {
    Closure closure = table["setOnSetText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onDidGainAccessibilityFocus(value) {
    Closure closure = table["setOnDidGainAccessibilityFocus"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set onDidLoseAccessibilityFocus(value) {
    Closure closure = table["setOnDidLoseAccessibilityFocus"];
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
  int? get indexInParent {
    Closure closure = table["getIndexInParent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set indexInParent(int? value) {
    Closure closure = table["setIndexInParent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int? get scrollChildCount {
    Closure closure = table["getScrollChildCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set scrollChildCount(int? value) {
    Closure closure = table["setScrollChildCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int? get scrollIndex {
    Closure closure = table["getScrollIndex"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set scrollIndex(int? value) {
    Closure closure = table["setScrollIndex"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int? get platformViewId {
    Closure closure = table["getPlatformViewId"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set platformViewId(int? value) {
    Closure closure = table["setPlatformViewId"];
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
  bool get isMergingSemanticsOfDescendants {
    Closure closure = table["getIsMergingSemanticsOfDescendants"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isMergingSemanticsOfDescendants(bool value) {
    Closure closure = table["setIsMergingSemanticsOfDescendants"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Map<CustomSemanticsAction, void Function()> get customSemanticsActions {
    Closure closure = table["getCustomSemanticsActions"];
    return maybeUnBoxAndBuildArgument<
            Map<CustomSemanticsAction, void Function()>, CustomSemanticsAction>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set customSemanticsActions(Map value) {
    Closure closure = table["setCustomSemanticsActions"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String get label {
    Closure closure = table["getLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set label(String label) {
    Closure closure = table["setLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AttributedString get attributedLabel {
    Closure closure = table["getAttributedLabel"];
    return maybeUnBoxAndBuildArgument<AttributedString, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set attributedLabel(AttributedString attributedLabel) {
    Closure closure = table["setAttributedLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String get value {
    Closure closure = table["getValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set value(String value) {
    Closure closure = table["setValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AttributedString get attributedValue {
    Closure closure = table["getAttributedValue"];
    return maybeUnBoxAndBuildArgument<AttributedString, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set attributedValue(AttributedString attributedValue) {
    Closure closure = table["setAttributedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String get increasedValue {
    Closure closure = table["getIncreasedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set increasedValue(String increasedValue) {
    Closure closure = table["setIncreasedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AttributedString get attributedIncreasedValue {
    Closure closure = table["getAttributedIncreasedValue"];
    return maybeUnBoxAndBuildArgument<AttributedString, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set attributedIncreasedValue(AttributedString attributedIncreasedValue) {
    Closure closure = table["setAttributedIncreasedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String get decreasedValue {
    Closure closure = table["getDecreasedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set decreasedValue(String decreasedValue) {
    Closure closure = table["setDecreasedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AttributedString get attributedDecreasedValue {
    Closure closure = table["getAttributedDecreasedValue"];
    return maybeUnBoxAndBuildArgument<AttributedString, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set attributedDecreasedValue(AttributedString attributedDecreasedValue) {
    Closure closure = table["setAttributedDecreasedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String get hint {
    Closure closure = table["getHint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set hint(String hint) {
    Closure closure = table["setHint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AttributedString get attributedHint {
    Closure closure = table["getAttributedHint"];
    return maybeUnBoxAndBuildArgument<AttributedString, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set attributedHint(AttributedString attributedHint) {
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
  double get elevation {
    Closure closure = table["getElevation"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void set elevation(double value) {
    Closure closure = table["setElevation"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double get thickness {
    Closure closure = table["getThickness"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void set thickness(double value) {
    Closure closure = table["setThickness"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get scopesRoute {
    Closure closure = table["getScopesRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set scopesRoute(bool value) {
    Closure closure = table["setScopesRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get namesRoute {
    Closure closure = table["getNamesRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set namesRoute(bool value) {
    Closure closure = table["setNamesRoute"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isImage {
    Closure closure = table["getIsImage"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isImage(bool value) {
    Closure closure = table["setIsImage"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get liveRegion {
    Closure closure = table["getLiveRegion"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set liveRegion(bool value) {
    Closure closure = table["setLiveRegion"];
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
  void set textDirection(TextDirection? textDirection) {
    Closure closure = table["setTextDirection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isSelected {
    Closure closure = table["getIsSelected"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isSelected(bool value) {
    Closure closure = table["setIsSelected"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get isEnabled {
    Closure closure = table["getIsEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isEnabled(bool? value) {
    Closure closure = table["setIsEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get isChecked {
    Closure closure = table["getIsChecked"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isChecked(bool? value) {
    Closure closure = table["setIsChecked"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool? get isToggled {
    Closure closure = table["getIsToggled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isToggled(bool? value) {
    Closure closure = table["setIsToggled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isInMutuallyExclusiveGroup {
    Closure closure = table["getIsInMutuallyExclusiveGroup"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isInMutuallyExclusiveGroup(bool value) {
    Closure closure = table["setIsInMutuallyExclusiveGroup"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isFocusable {
    Closure closure = table["getIsFocusable"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isFocusable(bool value) {
    Closure closure = table["setIsFocusable"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isFocused {
    Closure closure = table["getIsFocused"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isFocused(bool value) {
    Closure closure = table["setIsFocused"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isButton {
    Closure closure = table["getIsButton"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isButton(bool value) {
    Closure closure = table["setIsButton"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isLink {
    Closure closure = table["getIsLink"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isLink(bool value) {
    Closure closure = table["setIsLink"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isHeader {
    Closure closure = table["getIsHeader"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isHeader(bool value) {
    Closure closure = table["setIsHeader"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isSlider {
    Closure closure = table["getIsSlider"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isSlider(bool value) {
    Closure closure = table["setIsSlider"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isKeyboardKey {
    Closure closure = table["getIsKeyboardKey"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isKeyboardKey(bool value) {
    Closure closure = table["setIsKeyboardKey"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isHidden {
    Closure closure = table["getIsHidden"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isHidden(bool value) {
    Closure closure = table["setIsHidden"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isTextField {
    Closure closure = table["getIsTextField"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isTextField(bool value) {
    Closure closure = table["setIsTextField"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isReadOnly {
    Closure closure = table["getIsReadOnly"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isReadOnly(bool value) {
    Closure closure = table["setIsReadOnly"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isObscured {
    Closure closure = table["getIsObscured"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isObscured(bool value) {
    Closure closure = table["setIsObscured"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isMultiline {
    Closure closure = table["getIsMultiline"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set isMultiline(bool value) {
    Closure closure = table["setIsMultiline"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get hasImplicitScrolling {
    Closure closure = table["getHasImplicitScrolling"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void set hasImplicitScrolling(bool value) {
    Closure closure = table["setHasImplicitScrolling"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  TextSelection? get textSelection {
    Closure closure = table["getTextSelection"];
    return maybeUnBoxAndBuildArgument<TextSelection?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set textSelection(TextSelection? value) {
    Closure closure = table["setTextSelection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double? get scrollPosition {
    Closure closure = table["getScrollPosition"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void set scrollPosition(double? value) {
    Closure closure = table["setScrollPosition"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double? get scrollExtentMax {
    Closure closure = table["getScrollExtentMax"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void set scrollExtentMax(double? value) {
    Closure closure = table["setScrollExtentMax"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double? get scrollExtentMin {
    Closure closure = table["getScrollExtentMin"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  void set scrollExtentMin(double? value) {
    Closure closure = table["setScrollExtentMin"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Iterable<SemanticsTag>? get tagsForChildren {
    Closure closure = table["getTagsForChildren"];
    return maybeUnBoxAndBuildArgument<Iterable<SemanticsTag>?, SemanticsTag>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void addTagForChildren(SemanticsTag tag) {
    Closure closure = table["addTagForChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool isCompatibleWith(SemanticsConfiguration? other) {
    Closure closure = table["isCompatibleWith"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void absorb(SemanticsConfiguration child) {
    Closure closure = table["absorb"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SemanticsConfiguration copy() {
    Closure closure = table["copy"];
    return maybeUnBoxAndBuildArgument<SemanticsConfiguration, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadSemanticsConfiguration(
    {required HydroState hydroState, required HydroTable table}) {
  table['semanticsConfiguration'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSemanticsConfiguration(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<SemanticsConfiguration>(boxer: (
      {required SemanticsConfiguration vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSemanticsConfiguration(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
