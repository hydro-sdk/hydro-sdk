import { Color } from "../../dart/ui/color";
import { MaterialAccentColor } from "./materialAccentColor";
import { MaterialColor } from "./materialColor";

export class Colors {
    public static transparent = new Color(0x00000000);

    public static black = new Color(0xff000000);

    public static black87 = new Color(0xdd000000);

    public static black54 = new Color(0x8a000000);

    public static black45 = new Color(0x73000000);

    public static black38 = new Color(0x61000000);

    public static black26 = new Color(0x42000000);

    public static black12 = new Color(0x1f000000);

    public static white = new Color(0xffffffff);

    public static white70 = new Color(0xb3ffffff);

    public static white60 = new Color(0x99ffffff);

    public static white54 = new Color(0x8affffff);

    public static white38 = new Color(0x62ffffff);

    public static white30 = new Color(0x4dffffff);

    public static white24 = new Color(0x3dffffff);

    public static white12 = new Color(0x1fffffff);

    public static white10 = new Color(0x1affffff);
    private static redPrimaryValue = 0xfff44336;
    private static redAccentValue = 0xffff5252;
    private static pinkPrimaryValue = 0xffe91e63;
    private static pinkAccentPrimaryValue = 0xffff4081;
    private static purplePrimaryValue = 0xff9c27b0;
    private static purpleAccentPrimaryValue = 0xffe040fb;
    private static deepPurplePrimaryValue = 0xff673ab7;
    private static deepPurpleAccentPrimaryValue = 0xff7c4dff;
    private static indigoPrimaryValue = 0xff3f51b5;
    private static indigoAccentPrimaryValue = 0xff536dfe;
    private static bluePrimaryValue = 0xff2196f3;
    private static blueAccentPrimaryValue = 0xff448aff;
    private static lightBluePrimaryValue = 0xff03a9f4;
    private static lightBlueAccentPrimaryValue = 0xff40c4ff;
    private static cyanPrimaryValue = 0xff00bcd4;
    private static cyanAccentPrimaryValue = 0xff18ffff;
    private static tealPrimaryValue = 0xff009688;
    private static tealAccentPrimaryValue = 0xff64ffda;
    private static greenPrimaryValue = 0xff4caf50;
    private static greenAccentPrimaryValue = 0xff69f0ae;
    private static lightGreenPrimaryValue = 0xff8bc34a;
    private static lightGreenAccentPrimaryValue = 0xffb2ff59;
    private static limePrimaryValue = 0xffcddc39;
    private static limeAccentPrimaryValue = 0xffeeff41;
    private static yellowPrimaryValue = 0xffffeb3b;
    private static yellowAccentPrimaryValue = 0xffffff00;
    private static amberPrimaryValue = 0xffffc107;
    private static amberAccentPrimaryValue = 0xffffd740;
    private static orangePrimaryValue = 0xffff9800;
    private static orangeAccentPrimaryValue = 0xffffab40;
    private static deepOrangePrimaryValue = 0xffff5722;
    private static deepOrangeAccentPrimaryValue = 0xffff6e40;
    private static brownPrimaryValue = 0xff795548;
    private static greyPrimaryValue = 0xff9e9e9e;
    private static blueGreyPrimaryValue = 0xff607d8b;

    public static red = new MaterialColor(Colors.redPrimaryValue, {
        50: new Color(0xffffebee),
        100: new Color(0xffffcdd2),
        200: new Color(0xffef9a9a),
        300: new Color(0xffe57373),
        400: new Color(0xffef5350),
        500: new Color(Colors.redPrimaryValue),
        600: new Color(0xffe53935),
        700: new Color(0xffd32f2f),
        800: new Color(0xffc62828),
        900: new Color(0xffb71c1c),
    });

    public static redAccent = new MaterialAccentColor(Colors.redAccentValue, {
        100: new Color(0xffff8a80),
        200: new Color(Colors.redAccentValue),
        400: new Color(0xffff1744),
        700: new Color(0xffd50000),
    });

    public static pink = new MaterialColor(Colors.pinkPrimaryValue, {
        50: new Color(0xfffce4ec),
        100: new Color(0xfff8bbd0),
        200: new Color(0xfff48fb1),
        300: new Color(0xfff06292),
        400: new Color(0xffec407a),
        500: new Color(Colors.pinkPrimaryValue),
        600: new Color(0xffd81b60),
        700: new Color(0xffc2185b),
        800: new Color(0xffad1457),
        900: new Color(0xff880e4f),
    });

    public static pinkAccent = new MaterialAccentColor(
        Colors.pinkAccentPrimaryValue,
        {
            100: new Color(0xffff80ab),
            200: new Color(Colors.pinkAccentPrimaryValue),
            400: new Color(0xfff50057),
            700: new Color(0xffc51162),
        }
    );

    public static purple = new MaterialColor(Colors.purplePrimaryValue, {
        50: new Color(0xfff3e5f5),
        100: new Color(0xffe1bee7),
        200: new Color(0xffce93d8),
        300: new Color(0xffba68c8),
        400: new Color(0xffab47bc),
        500: new Color(Colors.purplePrimaryValue),
        600: new Color(0xff8e24aa),
        700: new Color(0xff7b1fa2),
        800: new Color(0xff6a1b9a),
        900: new Color(0xff4a148c),
    });

    public static purpleAccent = new MaterialAccentColor(
        Colors.purpleAccentPrimaryValue,
        {
            100: new Color(0xffea80fc),
            200: new Color(Colors.purpleAccentPrimaryValue),
            400: new Color(0xffd500f9),
            700: new Color(0xffaa00ff),
        }
    );

    public static deepPurple = new MaterialColor(
        Colors.deepPurplePrimaryValue,
        {
            50: new Color(0xffede7f6),
            100: new Color(0xffd1c4e9),
            200: new Color(0xffb39ddb),
            300: new Color(0xff9575cd),
            400: new Color(0xff7e57c2),
            500: new Color(Colors.deepPurplePrimaryValue),
            600: new Color(0xff5e35b1),
            700: new Color(0xff512da8),
            800: new Color(0xff4527a0),
            900: new Color(0xff311b92),
        }
    );

    public static deepPurpleAccent = new MaterialAccentColor(
        Colors.deepPurpleAccentPrimaryValue,
        {
            100: new Color(0xffb388ff),
            200: new Color(Colors.deepPurpleAccentPrimaryValue),
            400: new Color(0xff651fff),
            700: new Color(0xff6200ea),
        }
    );

    public static indigo = new MaterialColor(Colors.indigoPrimaryValue, {
        50: new Color(0xffe8eaf6),
        100: new Color(0xffc5cae9),
        200: new Color(0xff9fa8da),
        300: new Color(0xff7986cb),
        400: new Color(0xff5c6bc0),
        500: new Color(Colors.indigoPrimaryValue),
        600: new Color(0xff3949ab),
        700: new Color(0xff303f9f),
        800: new Color(0xff283593),
        900: new Color(0xff1a237e),
    });

    public static indigoAccent = new MaterialAccentColor(
        Colors.indigoAccentPrimaryValue,
        {
            100: new Color(0xff8c9eff),
            200: new Color(Colors.indigoAccentPrimaryValue),
            400: new Color(0xff3d5afe),
            700: new Color(0xff304ffe),
        }
    );

    public static blue = new MaterialColor(Colors.bluePrimaryValue, {
        50: new Color(0xffe3f2fd),
        100: new Color(0xffbbdefb),
        200: new Color(0xff90caf9),
        300: new Color(0xff64b5f6),
        400: new Color(0xff42a5f5),
        500: new Color(Colors.bluePrimaryValue),
        600: new Color(0xff1e88e5),
        700: new Color(0xff1976d2),
        800: new Color(0xff1565c0),
        900: new Color(0xff0d47a1),
    });

    public static blueAccent = new MaterialAccentColor(
        Colors.blueAccentPrimaryValue,
        {
            100: new Color(0xff82b1ff),
            200: new Color(Colors.blueAccentPrimaryValue),
            400: new Color(0xff2979ff),
            700: new Color(0xff2962ff),
        }
    );

    public static lightBlue = new MaterialColor(Colors.lightBluePrimaryValue, {
        50: new Color(0xffe1f5fe),
        100: new Color(0xffb3e5fc),
        200: new Color(0xff81d4fa),
        300: new Color(0xff4fc3f7),
        400: new Color(0xff29b6f6),
        500: new Color(Colors.lightBluePrimaryValue),
        600: new Color(0xff039be5),
        700: new Color(0xff0288d1),
        800: new Color(0xff0277bd),
        900: new Color(0xff01579b),
    });

    public static lightBlueAccent = new MaterialAccentColor(
        Colors.lightBlueAccentPrimaryValue,
        {
            100: new Color(0xff80d8ff),
            200: new Color(Colors.lightBlueAccentPrimaryValue),
            400: new Color(0xff00b0ff),
            700: new Color(0xff0091ea),
        }
    );

    public static cyan = new MaterialColor(Colors.cyanPrimaryValue, {
        50: new Color(0xffe0f7fa),
        100: new Color(0xffb2ebf2),
        200: new Color(0xff80deea),
        300: new Color(0xff4dd0e1),
        400: new Color(0xff26c6da),
        500: new Color(Colors.cyanPrimaryValue),
        600: new Color(0xff00acc1),
        700: new Color(0xff0097a7),
        800: new Color(0xff00838f),
        900: new Color(0xff006064),
    });

    public static cyanAccent = new MaterialAccentColor(
        Colors.cyanAccentPrimaryValue,
        {
            100: new Color(0xff84ffff),
            200: new Color(Colors.cyanAccentPrimaryValue),
            400: new Color(0xff00e5ff),
            700: new Color(0xff00b8d4),
        }
    );

    public static teal = new MaterialColor(Colors.tealPrimaryValue, {
        50: new Color(0xffe0f2f1),
        100: new Color(0xffb2dfdb),
        200: new Color(0xff80cbc4),
        300: new Color(0xff4db6ac),
        400: new Color(0xff26a69a),
        500: new Color(Colors.tealPrimaryValue),
        600: new Color(0xff00897b),
        700: new Color(0xff00796b),
        800: new Color(0xff00695c),
        900: new Color(0xff004d40),
    });

    public static tealAccent = new MaterialAccentColor(
        Colors.tealAccentPrimaryValue,
        {
            100: new Color(0xffa7ffeb),
            200: new Color(Colors.tealAccentPrimaryValue),
            400: new Color(0xff1de9b6),
            700: new Color(0xff00bfa5),
        }
    );

    public static green = new MaterialColor(Colors.greenPrimaryValue, {
        50: new Color(0xffe8f5e9),
        100: new Color(0xffc8e6c9),
        200: new Color(0xffa5d6a7),
        300: new Color(0xff81c784),
        400: new Color(0xff66bb6a),
        500: new Color(Colors.greenPrimaryValue),
        600: new Color(0xff43a047),
        700: new Color(0xff388e3c),
        800: new Color(0xff2e7d32),
        900: new Color(0xff1b5e20),
    });

    public static greenAccent = new MaterialAccentColor(
        Colors.greenAccentPrimaryValue,
        {
            100: new Color(0xffb9f6ca),
            200: new Color(Colors.greenAccentPrimaryValue),
            400: new Color(0xff00e676),
            700: new Color(0xff00c853),
        }
    );

    public static lightGreen = new MaterialColor(
        Colors.lightGreenPrimaryValue,
        {
            50: new Color(0xfff1f8e9),
            100: new Color(0xffdcedc8),
            200: new Color(0xffc5e1a5),
            300: new Color(0xffaed581),
            400: new Color(0xff9ccc65),
            500: new Color(Colors.lightGreenPrimaryValue),
            600: new Color(0xff7cb342),
            700: new Color(0xff689f38),
            800: new Color(0xff558b2f),
            900: new Color(0xff33691e),
        }
    );

    public static lightGreenAccent = new MaterialAccentColor(
        Colors.lightGreenAccentPrimaryValue,
        {
            100: new Color(0xffccff90),
            200: new Color(Colors.lightGreenAccentPrimaryValue),
            400: new Color(0xff76ff03),
            700: new Color(0xff64dd17),
        }
    );

    public static lime = new MaterialColor(Colors.limePrimaryValue, {
        50: new Color(0xfff9fbe7),
        100: new Color(0xfff0f4c3),
        200: new Color(0xffe6ee9c),
        300: new Color(0xffdce775),
        400: new Color(0xffd4e157),
        500: new Color(Colors.limePrimaryValue),
        600: new Color(0xffc0ca33),
        700: new Color(0xffafb42b),
        800: new Color(0xff9e9d24),
        900: new Color(0xff827717),
    });

    public static limeAccent = new MaterialAccentColor(
        Colors.limeAccentPrimaryValue,
        {
            100: new Color(0xfff4ff81),
            200: new Color(Colors.limeAccentPrimaryValue),
            400: new Color(0xffc6ff00),
            700: new Color(0xffaeea00),
        }
    );

    public static yellow = new MaterialColor(Colors.yellowPrimaryValue, {
        50: new Color(0xfffffde7),
        100: new Color(0xfffff9c4),
        200: new Color(0xfffff59d),
        300: new Color(0xfffff176),
        400: new Color(0xffffee58),
        500: new Color(Colors.yellowPrimaryValue),
        600: new Color(0xfffdd835),
        700: new Color(0xfffbc02d),
        800: new Color(0xfff9a825),
        900: new Color(0xfff57f17),
    });

    public static yellowAccent = new MaterialAccentColor(
        Colors.yellowAccentPrimaryValue,
        {
            100: new Color(0xffffff8d),
            200: new Color(Colors.yellowAccentPrimaryValue),
            400: new Color(0xffffea00),
            700: new Color(0xffffd600),
        }
    );

    public static amber = new MaterialColor(Colors.amberPrimaryValue, {
        50: new Color(0xfffff8e1),
        100: new Color(0xffffecb3),
        200: new Color(0xffffe082),
        300: new Color(0xffffd54f),
        400: new Color(0xffffca28),
        500: new Color(Colors.amberPrimaryValue),
        600: new Color(0xffffb300),
        700: new Color(0xffffa000),
        800: new Color(0xffff8f00),
        900: new Color(0xffff6f00),
    });

    public static amberAccent = new MaterialAccentColor(
        Colors.amberAccentPrimaryValue,
        {
            100: new Color(0xffffe57f),
            200: new Color(Colors.amberAccentPrimaryValue),
            400: new Color(0xffffc400),
            700: new Color(0xffffab00),
        }
    );

    public static orange = new MaterialColor(Colors.orangePrimaryValue, {
        50: new Color(0xfffff3e0),
        100: new Color(0xffffe0b2),
        200: new Color(0xffffcc80),
        300: new Color(0xffffb74d),
        400: new Color(0xffffa726),
        500: new Color(Colors.orangePrimaryValue),
        600: new Color(0xfffb8c00),
        700: new Color(0xfff57c00),
        800: new Color(0xffef6c00),
        900: new Color(0xffe65100),
    });

    public static orangeAccent = new MaterialAccentColor(
        Colors.orangeAccentPrimaryValue,
        {
            100: new Color(0xffffd180),
            200: new Color(Colors.orangeAccentPrimaryValue),
            400: new Color(0xffff9100),
            700: new Color(0xffff6d00),
        }
    );

    public static deepOrange = new MaterialColor(
        Colors.deepOrangePrimaryValue,
        {
            50: new Color(0xfffbe9e7),
            100: new Color(0xffffccbc),
            200: new Color(0xffffab91),
            300: new Color(0xffff8a65),
            400: new Color(0xffff7043),
            500: new Color(Colors.deepOrangePrimaryValue),
            600: new Color(0xfff4511e),
            700: new Color(0xffe64a19),
            800: new Color(0xffd84315),
            900: new Color(0xffbf360c),
        }
    );

    public static deepOrangeAccent = new MaterialAccentColor(
        Colors.deepOrangeAccentPrimaryValue,
        {
            100: new Color(0xffff9e80),
            200: new Color(Colors.deepOrangeAccentPrimaryValue),
            400: new Color(0xffff3d00),
            700: new Color(0xffdd2c00),
        }
    );

    public static brown = new MaterialColor(Colors.brownPrimaryValue, {
        50: new Color(0xffefebe9),
        100: new Color(0xffd7ccc8),
        200: new Color(0xffbcaaa4),
        300: new Color(0xffa1887f),
        400: new Color(0xff8d6e63),
        500: new Color(Colors.brownPrimaryValue),
        600: new Color(0xff6d4c41),
        700: new Color(0xff5d4037),
        800: new Color(0xff4e342e),
        900: new Color(0xff3e2723),
    });

    public static grey = new MaterialColor(Colors.greyPrimaryValue, {
        50: new Color(0xfffafafa),
        100: new Color(0xfff5f5f5),
        200: new Color(0xffeeeeee),
        300: new Color(0xffe0e0e0),
        350: new Color(0xffd6d6d6), // only for raised button while pressed in light theme
        400: new Color(0xffbdbdbd),
        500: new Color(Colors.greyPrimaryValue),
        600: new Color(0xff757575),
        700: new Color(0xff616161),
        800: new Color(0xff424242),
        850: new Color(0xff303030), // only for background color in dark theme
        900: new Color(0xff212121),
    });

    public static blueGrey = new MaterialColor(Colors.blueGreyPrimaryValue, {
        50: new Color(0xffeceff1),
        100: new Color(0xffcfd8dc),
        200: new Color(0xffb0bec5),
        300: new Color(0xff90a4ae),
        400: new Color(0xff78909c),
        500: new Color(Colors.blueGreyPrimaryValue),
        600: new Color(0xff546e7a),
        700: new Color(0xff455a64),
        800: new Color(0xff37474f),
        900: new Color(0xff263238),
    });

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
