import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/cupertino/theme.dart' as _2b5f;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/platform.dart' as _9164;
import 'package:flutter/src/material/app_bar_theme.dart' as _a931;
import 'package:flutter/src/material/banner_theme.dart' as _4761;
import 'package:flutter/src/material/bottom_app_bar_theme.dart' as _4353;
import 'package:flutter/src/material/bottom_navigation_bar_theme.dart' as _f261;
import 'package:flutter/src/material/bottom_sheet_theme.dart' as _952b;
import 'package:flutter/src/material/button_bar_theme.dart' as _ba38;
import 'package:flutter/src/material/button_theme.dart' as _c547;
import 'package:flutter/src/material/card_theme.dart' as _50da;
import 'package:flutter/src/material/checkbox_theme.dart' as _0ff4;
import 'package:flutter/src/material/chip_theme.dart' as _c6ff;
import 'package:flutter/src/material/color_scheme.dart' as _63b9;
import 'package:flutter/src/material/colors.dart' as _4450;
import 'package:flutter/src/material/data_table_theme.dart' as _8f52;
import 'package:flutter/src/material/dialog_theme.dart' as _21bb;
import 'package:flutter/src/material/divider_theme.dart' as _bcda;
import 'package:flutter/src/material/drawer_theme.dart' as _e0d9;
import 'package:flutter/src/material/elevated_button_theme.dart' as _8227;
import 'package:flutter/src/material/ink_well.dart' as _cd32;
import 'package:flutter/src/material/input_decorator.dart' as _ea86;
import 'package:flutter/src/material/list_tile.dart' as _fe2b;
import 'package:flutter/src/material/navigation_bar_theme.dart' as _11e0;
import 'package:flutter/src/material/navigation_rail_theme.dart' as _fcbb;
import 'package:flutter/src/material/outlined_button_theme.dart' as _915c;
import 'package:flutter/src/material/page_transitions_theme.dart' as _1602;
import 'package:flutter/src/material/popup_menu_theme.dart' as _2271;
import 'package:flutter/src/material/progress_indicator_theme.dart' as _63f1;
import 'package:flutter/src/material/radio_theme.dart' as _f4b1;
import 'package:flutter/src/material/scrollbar_theme.dart' as _ea69;
import 'package:flutter/src/material/slider_theme.dart' as _4581;
import 'package:flutter/src/material/snack_bar_theme.dart' as _f366;
import 'package:flutter/src/material/switch_theme.dart' as _6ec8;
import 'package:flutter/src/material/tab_bar_theme.dart' as _06d0;
import 'package:flutter/src/material/text_button_theme.dart' as _85f3;
import 'package:flutter/src/material/text_selection_theme.dart' as _3699;
import 'package:flutter/src/material/text_theme.dart' as _e1f4;
import 'package:flutter/src/material/theme_data.dart' as _9716;
import 'package:flutter/src/material/time_picker_theme.dart' as _f792;
import 'package:flutter/src/material/toggle_buttons_theme.dart' as _3a57;
import 'package:flutter/src/material/tooltip_theme.dart' as _f870;
import 'package:flutter/src/material/typography.dart' as _306e;
import 'package:flutter/src/widgets/icon_theme_data.dart' as _05d1;
import 'package:flutter/src/widgets/scroll_configuration.dart' as _b028;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

import 'package:flutter/src/material/floating_action_button_theme.dart'
    as _3079;


class VMManagedThemeData extends _36c2.VMManagedBox<_9716.ThemeData> {
  VMManagedThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['visualDensity'] = _36c2.maybeBoxObject<_9716.VisualDensity>(
        object: vmObject.visualDensity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['primaryColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.primaryColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['primaryColorBrightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == vmObject.primaryColorBrightness;
    });
    table['primaryColorLight'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.primaryColorLight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['primaryColorDark'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.primaryColorDark,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['canvasColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.canvasColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shadowColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.shadowColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['accentColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.accentColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['accentColorBrightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == vmObject.accentColorBrightness;
    });
    table['scaffoldBackgroundColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.scaffoldBackgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bottomAppBarColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.bottomAppBarColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['cardColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.cardColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dividerColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.dividerColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.focusColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hoverColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.hoverColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['highlightColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.highlightColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['splashColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.splashColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['splashFactory'] =
        _36c2.maybeBoxObject<_cd32.InteractiveInkFeatureFactory>(
            object: vmObject.splashFactory,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['selectedRowColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.selectedRowColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedWidgetColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.unselectedWidgetColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.disabledColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['buttonTheme'] = _36c2.maybeBoxObject<_c547.ButtonThemeData>(
        object: vmObject.buttonTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toggleButtonsTheme'] =
        _36c2.maybeBoxObject<_3a57.ToggleButtonsThemeData>(
            object: vmObject.toggleButtonsTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['buttonColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.buttonColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondaryHeaderColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.secondaryHeaderColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textSelectionColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.textSelectionColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['cursorColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.cursorColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textSelectionHandleColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.textSelectionHandleColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dialogBackgroundColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.dialogBackgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['indicatorColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.indicatorColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hintColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.hintColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['errorColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.errorColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toggleableActiveColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.toggleableActiveColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textTheme'] = _36c2.maybeBoxObject<_e1f4.TextTheme>(
        object: vmObject.textTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['primaryTextTheme'] = _36c2.maybeBoxObject<_e1f4.TextTheme>(
        object: vmObject.primaryTextTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['accentTextTheme'] = _36c2.maybeBoxObject<_e1f4.TextTheme>(
        object: vmObject.accentTextTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['inputDecorationTheme'] =
        _36c2.maybeBoxObject<_ea86.InputDecorationTheme>(
            object: vmObject.inputDecorationTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['iconTheme'] = _36c2.maybeBoxObject<_05d1.IconThemeData>(
        object: vmObject.iconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['primaryIconTheme'] = _36c2.maybeBoxObject<_05d1.IconThemeData>(
        object: vmObject.primaryIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['accentIconTheme'] = _36c2.maybeBoxObject<_05d1.IconThemeData>(
        object: vmObject.accentIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['sliderTheme'] = _36c2.maybeBoxObject<_4581.SliderThemeData>(
        object: vmObject.sliderTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tabBarTheme'] = _36c2.maybeBoxObject<_06d0.TabBarTheme>(
        object: vmObject.tabBarTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tooltipTheme'] = _36c2.maybeBoxObject<_f870.TooltipThemeData>(
        object: vmObject.tooltipTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['cardTheme'] = _36c2.maybeBoxObject<_50da.CardTheme>(
        object: vmObject.cardTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['chipTheme'] = _36c2.maybeBoxObject<_c6ff.ChipThemeData>(
        object: vmObject.chipTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['platform'] = _9164.TargetPlatform.values.indexWhere((x) {
      return x == vmObject.platform;
    });
    table['materialTapTargetSize'] =
        _9716.MaterialTapTargetSize.values.indexWhere((x) {
      return x == vmObject.materialTapTargetSize;
    });
    table['applyElevationOverlayColor'] = vmObject.applyElevationOverlayColor;
    table['pageTransitionsTheme'] =
        _36c2.maybeBoxObject<_1602.PageTransitionsTheme>(
            object: vmObject.pageTransitionsTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['appBarTheme'] = _36c2.maybeBoxObject<_a931.AppBarTheme>(
        object: vmObject.appBarTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollbarTheme'] = _36c2.maybeBoxObject<_ea69.ScrollbarThemeData>(
        object: vmObject.scrollbarTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bottomAppBarTheme'] = _36c2.maybeBoxObject<_4353.BottomAppBarTheme>(
        object: vmObject.bottomAppBarTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['colorScheme'] = _36c2.maybeBoxObject<_63b9.ColorScheme>(
        object: vmObject.colorScheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['snackBarTheme'] = _36c2.maybeBoxObject<_f366.SnackBarThemeData>(
        object: vmObject.snackBarTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dialogTheme'] = _36c2.maybeBoxObject<_21bb.DialogTheme>(
        object: vmObject.dialogTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['floatingActionButtonTheme'] =
        _36c2.maybeBoxObject<_3079.FloatingActionButtonThemeData>(
            object: vmObject.floatingActionButtonTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['navigationBarTheme'] =
        _36c2.maybeBoxObject<_11e0.NavigationBarThemeData>(
            object: vmObject.navigationBarTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['navigationRailTheme'] =
        _36c2.maybeBoxObject<_fcbb.NavigationRailThemeData>(
            object: vmObject.navigationRailTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['typography'] = _36c2.maybeBoxObject<_306e.Typography>(
        object: vmObject.typography,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['cupertinoOverrideTheme'] =
        _36c2.maybeBoxObject<_2b5f.NoDefaultCupertinoThemeData?>(
            object: vmObject.cupertinoOverrideTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['bottomSheetTheme'] =
        _36c2.maybeBoxObject<_952b.BottomSheetThemeData>(
            object: vmObject.bottomSheetTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['popupMenuTheme'] = _36c2.maybeBoxObject<_2271.PopupMenuThemeData>(
        object: vmObject.popupMenuTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bannerTheme'] = _36c2.maybeBoxObject<_4761.MaterialBannerThemeData>(
        object: vmObject.bannerTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dividerTheme'] = _36c2.maybeBoxObject<_bcda.DividerThemeData>(
        object: vmObject.dividerTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['buttonBarTheme'] = _36c2.maybeBoxObject<_ba38.ButtonBarThemeData>(
        object: vmObject.buttonBarTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bottomNavigationBarTheme'] =
        _36c2.maybeBoxObject<_f261.BottomNavigationBarThemeData>(
            object: vmObject.bottomNavigationBarTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['timePickerTheme'] = _36c2.maybeBoxObject<_f792.TimePickerThemeData>(
        object: vmObject.timePickerTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textButtonTheme'] = _36c2.maybeBoxObject<_85f3.TextButtonThemeData>(
        object: vmObject.textButtonTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevatedButtonTheme'] =
        _36c2.maybeBoxObject<_8227.ElevatedButtonThemeData>(
            object: vmObject.elevatedButtonTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['outlinedButtonTheme'] =
        _36c2.maybeBoxObject<_915c.OutlinedButtonThemeData>(
            object: vmObject.outlinedButtonTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['textSelectionTheme'] =
        _36c2.maybeBoxObject<_3699.TextSelectionThemeData>(
            object: vmObject.textSelectionTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['dataTableTheme'] = _36c2.maybeBoxObject<_8f52.DataTableThemeData>(
        object: vmObject.dataTableTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['checkboxTheme'] = _36c2.maybeBoxObject<_0ff4.CheckboxThemeData>(
        object: vmObject.checkboxTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['radioTheme'] = _36c2.maybeBoxObject<_f4b1.RadioThemeData>(
        object: vmObject.radioTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['switchTheme'] = _36c2.maybeBoxObject<_6ec8.SwitchThemeData>(
        object: vmObject.switchTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['progressIndicatorTheme'] =
        _36c2.maybeBoxObject<_63f1.ProgressIndicatorThemeData>(
            object: vmObject.progressIndicatorTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['drawerTheme'] = _36c2.maybeBoxObject<_e0d9.DrawerThemeData>(
        object: vmObject.drawerTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['listTileTheme'] = _36c2.maybeBoxObject<_fe2b.ListTileThemeData>(
        object: vmObject.listTileTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fixTextFieldOutlineLabel'] = vmObject.fixTextFieldOutlineLabel;
    table['useTextSelectionTheme'] = vmObject.useTextSelectionTheme;
    table['androidOverscrollIndicator'] =
        _b028.AndroidOverscrollIndicator.values.indexWhere((x) {
      return x == vmObject.androidOverscrollIndicator;
    });
    table['getBrightness'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _a643.Brightness.values.indexWhere((x) {
          return x == vmObject.brightness;
        }),
      ];
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_9716.ThemeData>(
            object: vmObject.copyWith(
                accentColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['accentColor']
                            : null,
                        parentState: hydroState),
                accentColorBrightness: _36c2.maybeUnBoxEnum(
                    values: _a643.Brightness.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['accentColorBrightness']
                        : null),
                accentIconTheme:
                    _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['accentIconTheme'] : null,
                        parentState: hydroState),
                accentTextTheme: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['accentTextTheme'] : null, parentState: hydroState),
                androidOverscrollIndicator: _36c2.maybeUnBoxEnum(values: _b028.AndroidOverscrollIndicator.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['androidOverscrollIndicator'] : null),
                appBarTheme: _36c2.maybeUnBoxAndBuildArgument<_a931.AppBarTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['appBarTheme'] : null, parentState: hydroState),
                applyElevationOverlayColor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['applyElevationOverlayColor'] : null,
                backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null, parentState: hydroState),
                bannerTheme: _36c2.maybeUnBoxAndBuildArgument<_4761.MaterialBannerThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bannerTheme'] : null, parentState: hydroState),
                bottomAppBarColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bottomAppBarColor'] : null, parentState: hydroState),
                bottomAppBarTheme: _36c2.maybeUnBoxAndBuildArgument<_4353.BottomAppBarTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bottomAppBarTheme'] : null, parentState: hydroState),
                bottomNavigationBarTheme: _36c2.maybeUnBoxAndBuildArgument<_f261.BottomNavigationBarThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bottomNavigationBarTheme'] : null, parentState: hydroState),
                bottomSheetTheme: _36c2.maybeUnBoxAndBuildArgument<_952b.BottomSheetThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bottomSheetTheme'] : null, parentState: hydroState),
                brightness: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['brightness'] : null),
                buttonBarTheme: _36c2.maybeUnBoxAndBuildArgument<_ba38.ButtonBarThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['buttonBarTheme'] : null, parentState: hydroState),
                buttonColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['buttonColor'] : null, parentState: hydroState),
                buttonTheme: _36c2.maybeUnBoxAndBuildArgument<_c547.ButtonThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['buttonTheme'] : null, parentState: hydroState),
                canvasColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['canvasColor'] : null, parentState: hydroState),
                cardColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cardColor'] : null, parentState: hydroState),
                cardTheme: _36c2.maybeUnBoxAndBuildArgument<_50da.CardTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cardTheme'] : null, parentState: hydroState),
                checkboxTheme: _36c2.maybeUnBoxAndBuildArgument<_0ff4.CheckboxThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['checkboxTheme'] : null, parentState: hydroState),
                chipTheme: _36c2.maybeUnBoxAndBuildArgument<_c6ff.ChipThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['chipTheme'] : null, parentState: hydroState),
                colorScheme: _36c2.maybeUnBoxAndBuildArgument<_63b9.ColorScheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['colorScheme'] : null, parentState: hydroState),
                cupertinoOverrideTheme: _36c2.maybeUnBoxAndBuildArgument<_2b5f.NoDefaultCupertinoThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cupertinoOverrideTheme'] : null, parentState: hydroState),
                cursorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cursorColor'] : null, parentState: hydroState),
                dataTableTheme: _36c2.maybeUnBoxAndBuildArgument<_8f52.DataTableThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dataTableTheme'] : null, parentState: hydroState),
                dialogBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dialogBackgroundColor'] : null, parentState: hydroState),
                dialogTheme: _36c2.maybeUnBoxAndBuildArgument<_21bb.DialogTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dialogTheme'] : null, parentState: hydroState),
                disabledColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledColor'] : null, parentState: hydroState),
                dividerColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dividerColor'] : null, parentState: hydroState),
                dividerTheme: _36c2.maybeUnBoxAndBuildArgument<_bcda.DividerThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dividerTheme'] : null, parentState: hydroState),
                drawerTheme: _36c2.maybeUnBoxAndBuildArgument<_e0d9.DrawerThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['drawerTheme'] : null, parentState: hydroState),
                elevatedButtonTheme: _36c2.maybeUnBoxAndBuildArgument<_8227.ElevatedButtonThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevatedButtonTheme'] : null, parentState: hydroState),
                errorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorColor'] : null, parentState: hydroState),
                fixTextFieldOutlineLabel: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fixTextFieldOutlineLabel'] : null,
                floatingActionButtonTheme: _36c2.maybeUnBoxAndBuildArgument<_3079.FloatingActionButtonThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingActionButtonTheme'] : null, parentState: hydroState),
                focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
                highlightColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['highlightColor'] : null, parentState: hydroState),
                hintColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintColor'] : null, parentState: hydroState),
                hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
                iconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconTheme'] : null, parentState: hydroState),
                indicatorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['indicatorColor'] : null, parentState: hydroState),
                inputDecorationTheme: _36c2.maybeUnBoxAndBuildArgument<_ea86.InputDecorationTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inputDecorationTheme'] : null, parentState: hydroState),
                listTileTheme: _36c2.maybeUnBoxAndBuildArgument<_fe2b.ListTileThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['listTileTheme'] : null, parentState: hydroState),
                materialTapTargetSize: _36c2.maybeUnBoxEnum(values: _9716.MaterialTapTargetSize.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['materialTapTargetSize'] : null),
                navigationBarTheme: _36c2.maybeUnBoxAndBuildArgument<_11e0.NavigationBarThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navigationBarTheme'] : null, parentState: hydroState),
                navigationRailTheme: _36c2.maybeUnBoxAndBuildArgument<_fcbb.NavigationRailThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navigationRailTheme'] : null, parentState: hydroState),
                outlinedButtonTheme: _36c2.maybeUnBoxAndBuildArgument<_915c.OutlinedButtonThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['outlinedButtonTheme'] : null, parentState: hydroState),
                pageTransitionsTheme: _36c2.maybeUnBoxAndBuildArgument<_1602.PageTransitionsTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pageTransitionsTheme'] : null, parentState: hydroState),
                platform: _36c2.maybeUnBoxEnum(values: _9164.TargetPlatform.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['platform'] : null),
                popupMenuTheme: _36c2.maybeUnBoxAndBuildArgument<_2271.PopupMenuThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['popupMenuTheme'] : null, parentState: hydroState),
                primaryColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColor'] : null, parentState: hydroState),
                primaryColorBrightness: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColorBrightness'] : null),
                primaryColorDark: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColorDark'] : null, parentState: hydroState),
                primaryColorLight: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColorLight'] : null, parentState: hydroState),
                primaryIconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryIconTheme'] : null, parentState: hydroState),
                primaryTextTheme: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryTextTheme'] : null, parentState: hydroState),
                progressIndicatorTheme: _36c2.maybeUnBoxAndBuildArgument<_63f1.ProgressIndicatorThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['progressIndicatorTheme'] : null, parentState: hydroState),
                radioTheme: _36c2.maybeUnBoxAndBuildArgument<_f4b1.RadioThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radioTheme'] : null, parentState: hydroState),
                scaffoldBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scaffoldBackgroundColor'] : null, parentState: hydroState),
                scrollbarTheme: _36c2.maybeUnBoxAndBuildArgument<_ea69.ScrollbarThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollbarTheme'] : null, parentState: hydroState),
                secondaryHeaderColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondaryHeaderColor'] : null, parentState: hydroState),
                selectedRowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedRowColor'] : null, parentState: hydroState),
                shadowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadowColor'] : null, parentState: hydroState),
                sliderTheme: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['sliderTheme'] : null, parentState: hydroState),
                snackBarTheme: _36c2.maybeUnBoxAndBuildArgument<_f366.SnackBarThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['snackBarTheme'] : null, parentState: hydroState),
                splashColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashColor'] : null, parentState: hydroState),
                splashFactory: _36c2.maybeUnBoxAndBuildArgument<_cd32.InteractiveInkFeatureFactory?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashFactory'] : null, parentState: hydroState),
                switchTheme: _36c2.maybeUnBoxAndBuildArgument<_6ec8.SwitchThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['switchTheme'] : null, parentState: hydroState),
                tabBarTheme: _36c2.maybeUnBoxAndBuildArgument<_06d0.TabBarTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tabBarTheme'] : null, parentState: hydroState),
                textButtonTheme: _36c2.maybeUnBoxAndBuildArgument<_85f3.TextButtonThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textButtonTheme'] : null, parentState: hydroState),
                textSelectionColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textSelectionColor'] : null, parentState: hydroState),
                textSelectionHandleColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textSelectionHandleColor'] : null, parentState: hydroState),
                textSelectionTheme: _36c2.maybeUnBoxAndBuildArgument<_3699.TextSelectionThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textSelectionTheme'] : null, parentState: hydroState),
                textTheme: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textTheme'] : null, parentState: hydroState),
                timePickerTheme: _36c2.maybeUnBoxAndBuildArgument<_f792.TimePickerThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['timePickerTheme'] : null, parentState: hydroState),
                toggleButtonsTheme: _36c2.maybeUnBoxAndBuildArgument<_3a57.ToggleButtonsThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toggleButtonsTheme'] : null, parentState: hydroState),
                toggleableActiveColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toggleableActiveColor'] : null, parentState: hydroState),
                tooltipTheme: _36c2.maybeUnBoxAndBuildArgument<_f870.TooltipThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tooltipTheme'] : null, parentState: hydroState),
                typography: _36c2.maybeUnBoxAndBuildArgument<_306e.Typography?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['typography'] : null, parentState: hydroState),
                unselectedWidgetColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedWidgetColor'] : null, parentState: hydroState),
                useTextSelectionTheme: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['useTextSelectionTheme'] : null,
                visualDensity: _36c2.maybeUnBoxAndBuildArgument<_9716.VisualDensity?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['visualDensity'] : null, parentState: hydroState)),
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
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _9716.ThemeData vmObject;
}

void loadThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['themeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_9716.ThemeData>(
          object: _9716.ThemeData(
              accentColor:
                  _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                      luaCallerArguments.length >= 2
                          ? luaCallerArguments[1]['accentColor']
                          : null,
                      parentState: hydroState),
              accentColorBrightness: _36c2.maybeUnBoxEnum(
                  values: _a643.Brightness.values,
                  boxedEnum: luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['accentColorBrightness']
                      : null),
              accentIconTheme:
                  _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(
                      luaCallerArguments.length >= 2 ? luaCallerArguments[1]['accentIconTheme'] : null,
                      parentState: hydroState),
              accentTextTheme: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['accentTextTheme'] : null, parentState: hydroState),
              androidOverscrollIndicator: _36c2.maybeUnBoxEnum(values: _b028.AndroidOverscrollIndicator.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['androidOverscrollIndicator'] : null),
              appBarTheme: _36c2.maybeUnBoxAndBuildArgument<_a931.AppBarTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['appBarTheme'] : null, parentState: hydroState),
              applyElevationOverlayColor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['applyElevationOverlayColor'] : null,
              backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null, parentState: hydroState),
              bannerTheme: _36c2.maybeUnBoxAndBuildArgument<_4761.MaterialBannerThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bannerTheme'] : null, parentState: hydroState),
              bottomAppBarColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bottomAppBarColor'] : null, parentState: hydroState),
              bottomAppBarTheme: _36c2.maybeUnBoxAndBuildArgument<_4353.BottomAppBarTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bottomAppBarTheme'] : null, parentState: hydroState),
              bottomNavigationBarTheme: _36c2.maybeUnBoxAndBuildArgument<_f261.BottomNavigationBarThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bottomNavigationBarTheme'] : null, parentState: hydroState),
              bottomSheetTheme: _36c2.maybeUnBoxAndBuildArgument<_952b.BottomSheetThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bottomSheetTheme'] : null, parentState: hydroState),
              brightness: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['brightness'] : null),
              buttonBarTheme: _36c2.maybeUnBoxAndBuildArgument<_ba38.ButtonBarThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['buttonBarTheme'] : null, parentState: hydroState),
              buttonColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['buttonColor'] : null, parentState: hydroState),
              buttonTheme: _36c2.maybeUnBoxAndBuildArgument<_c547.ButtonThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['buttonTheme'] : null, parentState: hydroState),
              canvasColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['canvasColor'] : null, parentState: hydroState),
              cardColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cardColor'] : null, parentState: hydroState),
              cardTheme: _36c2.maybeUnBoxAndBuildArgument<_50da.CardTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cardTheme'] : null, parentState: hydroState),
              checkboxTheme: _36c2.maybeUnBoxAndBuildArgument<_0ff4.CheckboxThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['checkboxTheme'] : null, parentState: hydroState),
              chipTheme: _36c2.maybeUnBoxAndBuildArgument<_c6ff.ChipThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['chipTheme'] : null, parentState: hydroState),
              colorScheme: _36c2.maybeUnBoxAndBuildArgument<_63b9.ColorScheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['colorScheme'] : null, parentState: hydroState),
              cupertinoOverrideTheme: _36c2.maybeUnBoxAndBuildArgument<_2b5f.NoDefaultCupertinoThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cupertinoOverrideTheme'] : null, parentState: hydroState),
              cursorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cursorColor'] : null, parentState: hydroState),
              dataTableTheme: _36c2.maybeUnBoxAndBuildArgument<_8f52.DataTableThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dataTableTheme'] : null, parentState: hydroState),
              dialogBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dialogBackgroundColor'] : null, parentState: hydroState),
              dialogTheme: _36c2.maybeUnBoxAndBuildArgument<_21bb.DialogTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dialogTheme'] : null, parentState: hydroState),
              disabledColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledColor'] : null, parentState: hydroState),
              dividerColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dividerColor'] : null, parentState: hydroState),
              dividerTheme: _36c2.maybeUnBoxAndBuildArgument<_bcda.DividerThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dividerTheme'] : null, parentState: hydroState),
              drawerTheme: _36c2.maybeUnBoxAndBuildArgument<_e0d9.DrawerThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['drawerTheme'] : null, parentState: hydroState),
              elevatedButtonTheme: _36c2.maybeUnBoxAndBuildArgument<_8227.ElevatedButtonThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevatedButtonTheme'] : null, parentState: hydroState),
              errorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['errorColor'] : null, parentState: hydroState),
              fixTextFieldOutlineLabel: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fixTextFieldOutlineLabel'] : null,
              floatingActionButtonTheme: _36c2.maybeUnBoxAndBuildArgument<_3079.FloatingActionButtonThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingActionButtonTheme'] : null, parentState: hydroState),
              focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
              fontFamily: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fontFamily'] : null,
              highlightColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['highlightColor'] : null, parentState: hydroState),
              hintColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hintColor'] : null, parentState: hydroState),
              hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
              iconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconTheme'] : null, parentState: hydroState),
              indicatorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['indicatorColor'] : null, parentState: hydroState),
              inputDecorationTheme: _36c2.maybeUnBoxAndBuildArgument<_ea86.InputDecorationTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inputDecorationTheme'] : null, parentState: hydroState),
              listTileTheme: _36c2.maybeUnBoxAndBuildArgument<_fe2b.ListTileThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['listTileTheme'] : null, parentState: hydroState),
              materialTapTargetSize: _36c2.maybeUnBoxEnum(values: _9716.MaterialTapTargetSize.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['materialTapTargetSize'] : null),
              navigationBarTheme: _36c2.maybeUnBoxAndBuildArgument<_11e0.NavigationBarThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navigationBarTheme'] : null, parentState: hydroState),
              navigationRailTheme: _36c2.maybeUnBoxAndBuildArgument<_fcbb.NavigationRailThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navigationRailTheme'] : null, parentState: hydroState),
              outlinedButtonTheme: _36c2.maybeUnBoxAndBuildArgument<_915c.OutlinedButtonThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['outlinedButtonTheme'] : null, parentState: hydroState),
              pageTransitionsTheme: _36c2.maybeUnBoxAndBuildArgument<_1602.PageTransitionsTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pageTransitionsTheme'] : null, parentState: hydroState),
              platform: _36c2.maybeUnBoxEnum(values: _9164.TargetPlatform.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['platform'] : null),
              popupMenuTheme: _36c2.maybeUnBoxAndBuildArgument<_2271.PopupMenuThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['popupMenuTheme'] : null, parentState: hydroState),
              primaryColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColor'] : null, parentState: hydroState),
              primaryColorBrightness: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColorBrightness'] : null),
              primaryColorDark: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColorDark'] : null, parentState: hydroState),
              primaryColorLight: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColorLight'] : null, parentState: hydroState),
              primaryIconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryIconTheme'] : null, parentState: hydroState),
              primarySwatch: _36c2.maybeUnBoxAndBuildArgument<_4450.MaterialColor?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primarySwatch'] : null, parentState: hydroState),
              primaryTextTheme: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryTextTheme'] : null, parentState: hydroState),
              progressIndicatorTheme: _36c2.maybeUnBoxAndBuildArgument<_63f1.ProgressIndicatorThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['progressIndicatorTheme'] : null, parentState: hydroState),
              radioTheme: _36c2.maybeUnBoxAndBuildArgument<_f4b1.RadioThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['radioTheme'] : null, parentState: hydroState),
              scaffoldBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scaffoldBackgroundColor'] : null, parentState: hydroState),
              scrollbarTheme: _36c2.maybeUnBoxAndBuildArgument<_ea69.ScrollbarThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollbarTheme'] : null, parentState: hydroState),
              secondaryHeaderColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondaryHeaderColor'] : null, parentState: hydroState),
              selectedRowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedRowColor'] : null, parentState: hydroState),
              shadowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadowColor'] : null, parentState: hydroState),
              sliderTheme: _36c2.maybeUnBoxAndBuildArgument<_4581.SliderThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['sliderTheme'] : null, parentState: hydroState),
              snackBarTheme: _36c2.maybeUnBoxAndBuildArgument<_f366.SnackBarThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['snackBarTheme'] : null, parentState: hydroState),
              splashColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashColor'] : null, parentState: hydroState),
              splashFactory: _36c2.maybeUnBoxAndBuildArgument<_cd32.InteractiveInkFeatureFactory?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashFactory'] : null, parentState: hydroState),
              switchTheme: _36c2.maybeUnBoxAndBuildArgument<_6ec8.SwitchThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['switchTheme'] : null, parentState: hydroState),
              tabBarTheme: _36c2.maybeUnBoxAndBuildArgument<_06d0.TabBarTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tabBarTheme'] : null, parentState: hydroState),
              textButtonTheme: _36c2.maybeUnBoxAndBuildArgument<_85f3.TextButtonThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textButtonTheme'] : null, parentState: hydroState),
              textSelectionColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textSelectionColor'] : null, parentState: hydroState),
              textSelectionHandleColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textSelectionHandleColor'] : null, parentState: hydroState),
              textSelectionTheme: _36c2.maybeUnBoxAndBuildArgument<_3699.TextSelectionThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textSelectionTheme'] : null, parentState: hydroState),
              textTheme: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textTheme'] : null, parentState: hydroState),
              timePickerTheme: _36c2.maybeUnBoxAndBuildArgument<_f792.TimePickerThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['timePickerTheme'] : null, parentState: hydroState),
              toggleButtonsTheme: _36c2.maybeUnBoxAndBuildArgument<_3a57.ToggleButtonsThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toggleButtonsTheme'] : null, parentState: hydroState),
              toggleableActiveColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toggleableActiveColor'] : null, parentState: hydroState),
              tooltipTheme: _36c2.maybeUnBoxAndBuildArgument<_f870.TooltipThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tooltipTheme'] : null, parentState: hydroState),
              typography: _36c2.maybeUnBoxAndBuildArgument<_306e.Typography?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['typography'] : null, parentState: hydroState),
              unselectedWidgetColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedWidgetColor'] : null, parentState: hydroState),
              useTextSelectionTheme: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['useTextSelectionTheme'] : null,
              visualDensity: _36c2.maybeUnBoxAndBuildArgument<_9716.VisualDensity?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['visualDensity'] : null, parentState: hydroState)),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  table['themeDataFrom'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_9716.ThemeData>(
          object: _9716.ThemeData.from(
              textTheme:
                  _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(
                      luaCallerArguments.length >= 2
                          ? luaCallerArguments[1]['textTheme']
                          : null,
                      parentState: hydroState),
              colorScheme: _36c2
                  .maybeUnBoxAndBuildArgument<_63b9.ColorScheme, _fac9.dynamic>(
                      luaCallerArguments.length >= 2
                          ? luaCallerArguments[1]['colorScheme']
                          : null,
                      parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['themeDataLight'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_9716.ThemeData>(
          object: _9716.ThemeData.light(),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['themeDataDark'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_9716.ThemeData>(
          object: _9716.ThemeData.dark(),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['themeDataFallback'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_9716.ThemeData>(
          object: _9716.ThemeData.fallback(),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['themeDataLocalize'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_9716.ThemeData>(
          object: _9716.ThemeData.localize(
              _36c2.maybeUnBoxAndBuildArgument<_9716.ThemeData, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['themeDataEstimateBrightnessForColor'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _a643.Brightness.values.indexWhere((x) {
        return x ==
            _9716.ThemeData.estimateBrightnessForColor(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState));
      }),
    ];
  });
  table['themeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_9716.ThemeData>(
          object: _9716.ThemeData.lerp(
              _36c2.maybeUnBoxAndBuildArgument<_9716.ThemeData, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_9716.ThemeData, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_9716.ThemeData>(boxer: (
      {required _9716.ThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
