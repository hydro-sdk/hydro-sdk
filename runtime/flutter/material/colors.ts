import {Color} from "../../dart/ui/color";

import {MaterialAccentColor} from "./materialAccentColor";
import {MaterialColor} from "./materialColor";

export class Colors 
{
    public static transparent = new Color(0x00000000);

    public static black = new Color(0xFF000000);

    public static black87 = new Color(0xDD000000);

    public static black54 = new Color(0x8A000000);

    public static black45 = new Color(0x73000000);

    public static black38 = new Color(0x61000000);

    public static black26 = new Color(0x42000000);

    public static black12 = new Color(0x1F000000);

    public static white = new Color(0xFFFFFFFF);

    public static white70 = new Color(0xB3FFFFFF);

    public static white60 = new Color(0x99FFFFFF);

    public static white54 = new Color(0x8AFFFFFF);

    public static white38 = new Color(0x62FFFFFF);

    public static white30 = new Color(0x4DFFFFFF);

    public static white24 = new Color(0x3DFFFFFF);

    public static white12 = new Color(0x1FFFFFFF);

    public static white10 = new Color(0x1AFFFFFF);
    private static redPrimaryValue = 0xFFF44336;
    private static redAccentValue = 0xFFFF5252;
    private static pinkPrimaryValue = 0xFFE91E63;
    private static pinkAccentPrimaryValue = 0xFFFF4081;
    private static purplePrimaryValue = 0xFF9C27B0;
    private static purpleAccentPrimaryValue = 0xFFE040FB;
    private static deepPurplePrimaryValue = 0xFF673AB7;
    private static deepPurpleAccentPrimaryValue = 0xFF7C4DFF;
    private static indigoPrimaryValue = 0xFF3F51B5;
    private static indigoAccentPrimaryValue = 0xFF536DFE;
    private static bluePrimaryValue = 0xFF2196F3;
    private static blueAccentPrimaryValue = 0xFF448AFF;
    private static lightBluePrimaryValue = 0xFF03A9F4;
    private static lightBlueAccentPrimaryValue = 0xFF40C4FF;
    private static cyanPrimaryValue = 0xFF00BCD4;
    private static cyanAccentPrimaryValue = 0xFF18FFFF;
    private static tealPrimaryValue = 0xFF009688;
    private static tealAccentPrimaryValue = 0xFF64FFDA;
    private static greenPrimaryValue = 0xFF4CAF50;
    private static greenAccentPrimaryValue = 0xFF69F0AE;
    private static lightGreenPrimaryValue = 0xFF8BC34A;
    private static lightGreenAccentPrimaryValue = 0xFFB2FF59;
    private static limePrimaryValue = 0xFFCDDC39;
    private static limeAccentPrimaryValue = 0xFFEEFF41;
    private static yellowPrimaryValue = 0xFFFFEB3B;
    private static yellowAccentPrimaryValue = 0xFFFFFF00;
    private static amberPrimaryValue = 0xFFFFC107;
    private static amberAccentPrimaryValue = 0xFFFFD740;
    private static orangePrimaryValue = 0xFFFF9800;
    private static orangeAccentPrimaryValue = 0xFFFFAB40;
    private static deepOrangePrimaryValue = 0xFFFF5722;
    private static deepOrangeAccentPrimaryValue = 0xFFFF6E40;
    private static brownPrimaryValue = 0xFF795548;
    private static greyPrimaryValue = 0xFF9E9E9E;
    private static blueGreyPrimaryValue = 0xFF607D8B;

    public static red = new MaterialColor(
        Colors.redPrimaryValue,
        {
            50: new Color(0xFFFFEBEE),
            100: new Color(0xFFFFCDD2),
            200: new Color(0xFFEF9A9A),
            300: new Color(0xFFE57373),
            400: new Color(0xFFEF5350),
            500: new Color(Colors.redPrimaryValue),
            600: new Color(0xFFE53935),
            700: new Color(0xFFD32F2F),
            800: new Color(0xFFC62828),
            900: new Color(0xFFB71C1C),
        },
    );


    public static redAccent = new MaterialAccentColor(
        Colors.redAccentValue,
        {
            100: new Color(0xFFFF8A80),
            200: new Color(Colors.redAccentValue),
            400: new Color(0xFFFF1744),
            700: new Color(0xFFD50000),
        },
    );


    public static pink = new MaterialColor(
        Colors.pinkPrimaryValue,
        {
            50: new Color(0xFFFCE4EC),
            100: new Color(0xFFF8BBD0),
            200: new Color(0xFFF48FB1),
            300: new Color(0xFFF06292),
            400: new Color(0xFFEC407A),
            500: new Color(Colors.pinkPrimaryValue),
            600: new Color(0xFFD81B60),
            700: new Color(0xFFC2185B),
            800: new Color(0xFFAD1457),
            900: new Color(0xFF880E4F),
        },
    );


    public static pinkAccent = new MaterialAccentColor(
        Colors.pinkAccentPrimaryValue,
        {
            100: new Color(0xFFFF80AB),
            200: new Color(Colors.pinkAccentPrimaryValue),
            400: new Color(0xFFF50057),
            700: new Color(0xFFC51162),
        },
    );


    public static purple = new MaterialColor(
        Colors.purplePrimaryValue,
        {
            50: new Color(0xFFF3E5F5),
            100: new Color(0xFFE1BEE7),
            200: new Color(0xFFCE93D8),
            300: new Color(0xFFBA68C8),
            400: new Color(0xFFAB47BC),
            500: new Color(Colors.purplePrimaryValue),
            600: new Color(0xFF8E24AA),
            700: new Color(0xFF7B1FA2),
            800: new Color(0xFF6A1B9A),
            900: new Color(0xFF4A148C),
        },
    );


    public static purpleAccent = new MaterialAccentColor(
        Colors.purpleAccentPrimaryValue,
        {
            100: new Color(0xFFEA80FC),
            200: new Color(Colors.purpleAccentPrimaryValue),
            400: new Color(0xFFD500F9),
            700: new Color(0xFFAA00FF),
        },
    );


    public static deepPurple = new MaterialColor(
        Colors.deepPurplePrimaryValue,
        {
            50: new Color(0xFFEDE7F6),
            100: new Color(0xFFD1C4E9),
            200: new Color(0xFFB39DDB),
            300: new Color(0xFF9575CD),
            400: new Color(0xFF7E57C2),
            500: new Color(Colors.deepPurplePrimaryValue),
            600: new Color(0xFF5E35B1),
            700: new Color(0xFF512DA8),
            800: new Color(0xFF4527A0),
            900: new Color(0xFF311B92),
        },
    );


    public static deepPurpleAccent = new MaterialAccentColor(
        Colors.deepPurpleAccentPrimaryValue,
        {
            100: new Color(0xFFB388FF),
            200: new Color(Colors.deepPurpleAccentPrimaryValue),
            400: new Color(0xFF651FFF),
            700: new Color(0xFF6200EA),
        },
    );


    public static indigo = new MaterialColor(
        Colors.indigoPrimaryValue,
        {
            50: new Color(0xFFE8EAF6),
            100: new Color(0xFFC5CAE9),
            200: new Color(0xFF9FA8DA),
            300: new Color(0xFF7986CB),
            400: new Color(0xFF5C6BC0),
            500: new Color(Colors.indigoPrimaryValue),
            600: new Color(0xFF3949AB),
            700: new Color(0xFF303F9F),
            800: new Color(0xFF283593),
            900: new Color(0xFF1A237E),
        },
    );


    public static indigoAccent = new MaterialAccentColor(
        Colors.indigoAccentPrimaryValue,
        {
            100: new Color(0xFF8C9EFF),
            200: new Color(Colors.indigoAccentPrimaryValue),
            400: new Color(0xFF3D5AFE),
            700: new Color(0xFF304FFE),
        },
    );


    public static blue = new MaterialColor(
        Colors.bluePrimaryValue,
        {
            50: new Color(0xFFE3F2FD),
            100: new Color(0xFFBBDEFB),
            200: new Color(0xFF90CAF9),
            300: new Color(0xFF64B5F6),
            400: new Color(0xFF42A5F5),
            500: new Color(Colors.bluePrimaryValue),
            600: new Color(0xFF1E88E5),
            700: new Color(0xFF1976D2),
            800: new Color(0xFF1565C0),
            900: new Color(0xFF0D47A1),
        },
    );


    public static blueAccent = new MaterialAccentColor(
        Colors.blueAccentPrimaryValue,
        {
            100: new Color(0xFF82B1FF),
            200: new Color(Colors.blueAccentPrimaryValue),
            400: new Color(0xFF2979FF),
            700: new Color(0xFF2962FF),
        },
    );


    public static lightBlue = new MaterialColor(
        Colors.lightBluePrimaryValue,
        {
            50: new Color(0xFFE1F5FE),
            100: new Color(0xFFB3E5FC),
            200: new Color(0xFF81D4FA),
            300: new Color(0xFF4FC3F7),
            400: new Color(0xFF29B6F6),
            500: new Color(Colors.lightBluePrimaryValue),
            600: new Color(0xFF039BE5),
            700: new Color(0xFF0288D1),
            800: new Color(0xFF0277BD),
            900: new Color(0xFF01579B),
        },
    );


    public static lightBlueAccent = new MaterialAccentColor(
        Colors.lightBlueAccentPrimaryValue,
        {
            100: new Color(0xFF80D8FF),
            200: new Color(Colors.lightBlueAccentPrimaryValue),
            400: new Color(0xFF00B0FF),
            700: new Color(0xFF0091EA),
        },
    );


    public static cyan = new MaterialColor(
        Colors.cyanPrimaryValue,
        {
            50: new Color(0xFFE0F7FA),
            100: new Color(0xFFB2EBF2),
            200: new Color(0xFF80DEEA),
            300: new Color(0xFF4DD0E1),
            400: new Color(0xFF26C6DA),
            500: new Color(Colors.cyanPrimaryValue),
            600: new Color(0xFF00ACC1),
            700: new Color(0xFF0097A7),
            800: new Color(0xFF00838F),
            900: new Color(0xFF006064),
        },
    );


    public static cyanAccent = new MaterialAccentColor(
        Colors.cyanAccentPrimaryValue,
        {
            100: new Color(0xFF84FFFF),
            200: new Color(Colors.cyanAccentPrimaryValue),
            400: new Color(0xFF00E5FF),
            700: new Color(0xFF00B8D4),
        },
    );


    public static teal = new MaterialColor(
        Colors.tealPrimaryValue,
        {
            50: new Color(0xFFE0F2F1),
            100: new Color(0xFFB2DFDB),
            200: new Color(0xFF80CBC4),
            300: new Color(0xFF4DB6AC),
            400: new Color(0xFF26A69A),
            500: new Color(Colors.tealPrimaryValue),
            600: new Color(0xFF00897B),
            700: new Color(0xFF00796B),
            800: new Color(0xFF00695C),
            900: new Color(0xFF004D40),
        },
    );


    public static tealAccent = new MaterialAccentColor(
        Colors.tealAccentPrimaryValue,
        {
            100: new Color(0xFFA7FFEB),
            200: new Color(Colors.tealAccentPrimaryValue),
            400: new Color(0xFF1DE9B6),
            700: new Color(0xFF00BFA5),
        },
    );


    public static green = new MaterialColor(
        Colors.greenPrimaryValue,
        {
            50: new Color(0xFFE8F5E9),
            100: new Color(0xFFC8E6C9),
            200: new Color(0xFFA5D6A7),
            300: new Color(0xFF81C784),
            400: new Color(0xFF66BB6A),
            500: new Color(Colors.greenPrimaryValue),
            600: new Color(0xFF43A047),
            700: new Color(0xFF388E3C),
            800: new Color(0xFF2E7D32),
            900: new Color(0xFF1B5E20),
        },
    );


    public static greenAccent = new MaterialAccentColor(
        Colors.greenAccentPrimaryValue,
        {
            100: new Color(0xFFB9F6CA),
            200: new Color(Colors.greenAccentPrimaryValue),
            400: new Color(0xFF00E676),
            700: new Color(0xFF00C853),
        },
    );


    public static lightGreen = new MaterialColor(
        Colors.lightGreenPrimaryValue,
        {
            50: new Color(0xFFF1F8E9),
            100: new Color(0xFFDCEDC8),
            200: new Color(0xFFC5E1A5),
            300: new Color(0xFFAED581),
            400: new Color(0xFF9CCC65),
            500: new Color(Colors.lightGreenPrimaryValue),
            600: new Color(0xFF7CB342),
            700: new Color(0xFF689F38),
            800: new Color(0xFF558B2F),
            900: new Color(0xFF33691E),
        },
    );


    public static lightGreenAccent = new MaterialAccentColor(
        Colors.lightGreenAccentPrimaryValue,
        {
            100: new Color(0xFFCCFF90),
            200: new Color(Colors.lightGreenAccentPrimaryValue),
            400: new Color(0xFF76FF03),
            700: new Color(0xFF64DD17),
        },
    );


    public static lime = new MaterialColor(
        Colors.limePrimaryValue,
        {
            50: new Color(0xFFF9FBE7),
            100: new Color(0xFFF0F4C3),
            200: new Color(0xFFE6EE9C),
            300: new Color(0xFFDCE775),
            400: new Color(0xFFD4E157),
            500: new Color(Colors.limePrimaryValue),
            600: new Color(0xFFC0CA33),
            700: new Color(0xFFAFB42B),
            800: new Color(0xFF9E9D24),
            900: new Color(0xFF827717),
        },
    );


    public static limeAccent = new MaterialAccentColor(
        Colors.limeAccentPrimaryValue,
        {
            100: new Color(0xFFF4FF81),
            200: new Color(Colors.limeAccentPrimaryValue),
            400: new Color(0xFFC6FF00),
            700: new Color(0xFFAEEA00),
        },
    );


    public static yellow = new MaterialColor(
        Colors.yellowPrimaryValue,
        {
            50: new Color(0xFFFFFDE7),
            100: new Color(0xFFFFF9C4),
            200: new Color(0xFFFFF59D),
            300: new Color(0xFFFFF176),
            400: new Color(0xFFFFEE58),
            500: new Color(Colors.yellowPrimaryValue),
            600: new Color(0xFFFDD835),
            700: new Color(0xFFFBC02D),
            800: new Color(0xFFF9A825),
            900: new Color(0xFFF57F17),
        },
    );


    public static yellowAccent = new MaterialAccentColor(
        Colors.yellowAccentPrimaryValue,
        {
            100: new Color(0xFFFFFF8D),
            200: new Color(Colors.yellowAccentPrimaryValue),
            400: new Color(0xFFFFEA00),
            700: new Color(0xFFFFD600),
        },
    );


    public static amber = new MaterialColor(
        Colors.amberPrimaryValue,
        {
            50: new Color(0xFFFFF8E1),
            100: new Color(0xFFFFECB3),
            200: new Color(0xFFFFE082),
            300: new Color(0xFFFFD54F),
            400: new Color(0xFFFFCA28),
            500: new Color(Colors.amberPrimaryValue),
            600: new Color(0xFFFFB300),
            700: new Color(0xFFFFA000),
            800: new Color(0xFFFF8F00),
            900: new Color(0xFFFF6F00),
        },
    );


    public static amberAccent = new MaterialAccentColor(
        Colors.amberAccentPrimaryValue,
        {
            100: new Color(0xFFFFE57F),
            200: new Color(Colors.amberAccentPrimaryValue),
            400: new Color(0xFFFFC400),
            700: new Color(0xFFFFAB00),
        },
    );


    public static orange = new MaterialColor(
        Colors.orangePrimaryValue,
        {
            50: new Color(0xFFFFF3E0),
            100: new Color(0xFFFFE0B2),
            200: new Color(0xFFFFCC80),
            300: new Color(0xFFFFB74D),
            400: new Color(0xFFFFA726),
            500: new Color(Colors.orangePrimaryValue),
            600: new Color(0xFFFB8C00),
            700: new Color(0xFFF57C00),
            800: new Color(0xFFEF6C00),
            900: new Color(0xFFE65100),
        },
    );


    public static orangeAccent = new MaterialAccentColor(
        Colors.orangeAccentPrimaryValue,
        {
            100: new Color(0xFFFFD180),
            200: new Color(Colors.orangeAccentPrimaryValue),
            400: new Color(0xFFFF9100),
            700: new Color(0xFFFF6D00),
        },
    );


    public static deepOrange = new MaterialColor(
        Colors.deepOrangePrimaryValue,
        {
            50: new Color(0xFFFBE9E7),
            100: new Color(0xFFFFCCBC),
            200: new Color(0xFFFFAB91),
            300: new Color(0xFFFF8A65),
            400: new Color(0xFFFF7043),
            500: new Color(Colors.deepOrangePrimaryValue),
            600: new Color(0xFFF4511E),
            700: new Color(0xFFE64A19),
            800: new Color(0xFFD84315),
            900: new Color(0xFFBF360C),
        },
    );


    public static deepOrangeAccent = new MaterialAccentColor(
        Colors.deepOrangeAccentPrimaryValue,
        {
            100: new Color(0xFFFF9E80),
            200: new Color(Colors.deepOrangeAccentPrimaryValue),
            400: new Color(0xFFFF3D00),
            700: new Color(0xFFDD2C00),
        },
    );


    public static brown = new MaterialColor(
        Colors.brownPrimaryValue,
        {
            50: new Color(0xFFEFEBE9),
            100: new Color(0xFFD7CCC8),
            200: new Color(0xFFBCAAA4),
            300: new Color(0xFFA1887F),
            400: new Color(0xFF8D6E63),
            500: new Color(Colors.brownPrimaryValue),
            600: new Color(0xFF6D4C41),
            700: new Color(0xFF5D4037),
            800: new Color(0xFF4E342E),
            900: new Color(0xFF3E2723),
        },
    );


    public static grey = new MaterialColor(
        Colors.greyPrimaryValue,
        {
            50: new Color(0xFFFAFAFA),
            100: new Color(0xFFF5F5F5),
            200: new Color(0xFFEEEEEE),
            300: new Color(0xFFE0E0E0),
            350: new Color(0xFFD6D6D6), // only for raised button while pressed in light theme
            400: new Color(0xFFBDBDBD),
            500: new Color(Colors.greyPrimaryValue),
            600: new Color(0xFF757575),
            700: new Color(0xFF616161),
            800: new Color(0xFF424242),
            850: new Color(0xFF303030), // only for background color in dark theme
            900: new Color(0xFF212121),
        },
    );


    public static blueGrey = new MaterialColor(
        Colors.blueGreyPrimaryValue,
        {
            50: new Color(0xFFECEFF1),
            100: new Color(0xFFCFD8DC),
            200: new Color(0xFFB0BEC5),
            300: new Color(0xFF90A4AE),
            400: new Color(0xFF78909C),
            500: new Color(Colors.blueGreyPrimaryValue),
            600: new Color(0xFF546E7A),
            700: new Color(0xFF455A64),
            800: new Color(0xFF37474F),
            900: new Color(0xFF263238),
        },
    );


    public static primaries = [
        Colors.red,
        Colors.pink,
        Colors.purple,
        Colors.deepPurple,
        Colors.indigo,
        Colors.blue,
        Colors.lightBlue,
        Colors.cyan,
        Colors.teal,
        Colors.green,
        Colors.lightGreen,
        Colors.lime,
        Colors.yellow,
        Colors.amber,
        Colors.orange,
        Colors.deepOrange,
        Colors.brown,
        Colors.blueGrey,
    ];

    public static accents = [
        Colors.redAccent,
        Colors.pinkAccent,
        Colors.purpleAccent,
        Colors.deepPurpleAccent,
        Colors.indigoAccent,
        Colors.blueAccent,
        Colors.lightBlueAccent,
        Colors.cyanAccent,
        Colors.tealAccent,
        Colors.greenAccent,
        Colors.lightGreenAccent,
        Colors.limeAccent,
        Colors.yellowAccent,
        Colors.amberAccent,
        Colors.orangeAccent,
        Colors.deepOrangeAccent,
    ];
}