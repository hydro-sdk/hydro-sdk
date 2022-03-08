import { List } from "../../dart/core/list";
import { Map } from "../../dart/core/map";
import { MapEntry } from "../../dart/core/mapEntry";
import { Color } from "../../dart/ui/color";
import { MaterialAccentColor } from "./materialAccentColor";
import { MaterialColor } from "./materialColor";
export interface IColors {}
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
    public static red = new MaterialColor(
        Colors._redPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xffffebee)),
                        new MapEntry(100, new Color(0xffffcdd2)),
                        new MapEntry(200, new Color(0xffef9a9a)),
                        new MapEntry(300, new Color(0xffe57373)),
                        new MapEntry(400, new Color(0xffef5350)),
                        new MapEntry(500, new Color(Colors._redPrimaryValue)),
                        new MapEntry(600, new Color(0xffe53935)),
                        new MapEntry(700, new Color(0xffd32f2f)),
                        new MapEntry(800, new Color(0xffc62828)),
                        new MapEntry(900, new Color(0xffb71c1c)),
                    ])
                ))
            )
        )
    );
    public static _redPrimaryValue = 0xfff44336;
    public static redAccent = new MaterialAccentColor(
        Colors._redAccentValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xffff8a80)),
                        new MapEntry(200, new Color(Colors._redAccentValue)),
                        new MapEntry(400, new Color(0xffff1744)),
                        new MapEntry(700, new Color(0xffd50000)),
                    ])
                ))
            )
        )
    );
    public static _redAccentValue = 0xffff5252;
    public static pink = new MaterialColor(
        Colors._pinkPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xfffce4ec)),
                        new MapEntry(100, new Color(0xfff8bbd0)),
                        new MapEntry(200, new Color(0xfff48fb1)),
                        new MapEntry(300, new Color(0xfff06292)),
                        new MapEntry(400, new Color(0xffec407a)),
                        new MapEntry(500, new Color(Colors._pinkPrimaryValue)),
                        new MapEntry(600, new Color(0xffd81b60)),
                        new MapEntry(700, new Color(0xffc2185b)),
                        new MapEntry(800, new Color(0xffad1457)),
                        new MapEntry(900, new Color(0xff880e4f)),
                    ])
                ))
            )
        )
    );
    public static _pinkPrimaryValue = 0xffe91e63;
    public static pinkAccent = new MaterialAccentColor(
        Colors._pinkAccentPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xffff80ab)),
                        new MapEntry(
                            200,
                            new Color(Colors._pinkAccentPrimaryValue)
                        ),
                        new MapEntry(400, new Color(0xfff50057)),
                        new MapEntry(700, new Color(0xffc51162)),
                    ])
                ))
            )
        )
    );
    public static _pinkAccentPrimaryValue = 0xffff4081;
    public static purple = new MaterialColor(
        Colors._purplePrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xfff3e5f5)),
                        new MapEntry(100, new Color(0xffe1bee7)),
                        new MapEntry(200, new Color(0xffce93d8)),
                        new MapEntry(300, new Color(0xffba68c8)),
                        new MapEntry(400, new Color(0xffab47bc)),
                        new MapEntry(
                            500,
                            new Color(Colors._purplePrimaryValue)
                        ),
                        new MapEntry(600, new Color(0xff8e24aa)),
                        new MapEntry(700, new Color(0xff7b1fa2)),
                        new MapEntry(800, new Color(0xff6a1b9a)),
                        new MapEntry(900, new Color(0xff4a148c)),
                    ])
                ))
            )
        )
    );
    public static _purplePrimaryValue = 0xff9c27b0;
    public static purpleAccent = new MaterialAccentColor(
        Colors._purpleAccentPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xffea80fc)),
                        new MapEntry(
                            200,
                            new Color(Colors._purpleAccentPrimaryValue)
                        ),
                        new MapEntry(400, new Color(0xffd500f9)),
                        new MapEntry(700, new Color(0xffaa00ff)),
                    ])
                ))
            )
        )
    );
    public static _purpleAccentPrimaryValue = 0xffe040fb;
    public static deepPurple = new MaterialColor(
        Colors._deepPurplePrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xffede7f6)),
                        new MapEntry(100, new Color(0xffd1c4e9)),
                        new MapEntry(200, new Color(0xffb39ddb)),
                        new MapEntry(300, new Color(0xff9575cd)),
                        new MapEntry(400, new Color(0xff7e57c2)),
                        new MapEntry(
                            500,
                            new Color(Colors._deepPurplePrimaryValue)
                        ),
                        new MapEntry(600, new Color(0xff5e35b1)),
                        new MapEntry(700, new Color(0xff512da8)),
                        new MapEntry(800, new Color(0xff4527a0)),
                        new MapEntry(900, new Color(0xff311b92)),
                    ])
                ))
            )
        )
    );
    public static _deepPurplePrimaryValue = 0xff673ab7;
    public static deepPurpleAccent = new MaterialAccentColor(
        Colors._deepPurpleAccentPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xffb388ff)),
                        new MapEntry(
                            200,
                            new Color(Colors._deepPurpleAccentPrimaryValue)
                        ),
                        new MapEntry(400, new Color(0xff651fff)),
                        new MapEntry(700, new Color(0xff6200ea)),
                    ])
                ))
            )
        )
    );
    public static _deepPurpleAccentPrimaryValue = 0xff7c4dff;
    public static indigo = new MaterialColor(
        Colors._indigoPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xffe8eaf6)),
                        new MapEntry(100, new Color(0xffc5cae9)),
                        new MapEntry(200, new Color(0xff9fa8da)),
                        new MapEntry(300, new Color(0xff7986cb)),
                        new MapEntry(400, new Color(0xff5c6bc0)),
                        new MapEntry(
                            500,
                            new Color(Colors._indigoPrimaryValue)
                        ),
                        new MapEntry(600, new Color(0xff3949ab)),
                        new MapEntry(700, new Color(0xff303f9f)),
                        new MapEntry(800, new Color(0xff283593)),
                        new MapEntry(900, new Color(0xff1a237e)),
                    ])
                ))
            )
        )
    );
    public static _indigoPrimaryValue = 0xff3f51b5;
    public static indigoAccent = new MaterialAccentColor(
        Colors._indigoAccentPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xff8c9eff)),
                        new MapEntry(
                            200,
                            new Color(Colors._indigoAccentPrimaryValue)
                        ),
                        new MapEntry(400, new Color(0xff3d5afe)),
                        new MapEntry(700, new Color(0xff304ffe)),
                    ])
                ))
            )
        )
    );
    public static _indigoAccentPrimaryValue = 0xff536dfe;
    public static blue = new MaterialColor(
        Colors._bluePrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xffe3f2fd)),
                        new MapEntry(100, new Color(0xffbbdefb)),
                        new MapEntry(200, new Color(0xff90caf9)),
                        new MapEntry(300, new Color(0xff64b5f6)),
                        new MapEntry(400, new Color(0xff42a5f5)),
                        new MapEntry(500, new Color(Colors._bluePrimaryValue)),
                        new MapEntry(600, new Color(0xff1e88e5)),
                        new MapEntry(700, new Color(0xff1976d2)),
                        new MapEntry(800, new Color(0xff1565c0)),
                        new MapEntry(900, new Color(0xff0d47a1)),
                    ])
                ))
            )
        )
    );
    public static _bluePrimaryValue = 0xff2196f3;
    public static blueAccent = new MaterialAccentColor(
        Colors._blueAccentPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xff82b1ff)),
                        new MapEntry(
                            200,
                            new Color(Colors._blueAccentPrimaryValue)
                        ),
                        new MapEntry(400, new Color(0xff2979ff)),
                        new MapEntry(700, new Color(0xff2962ff)),
                    ])
                ))
            )
        )
    );
    public static _blueAccentPrimaryValue = 0xff448aff;
    public static lightBlue = new MaterialColor(
        Colors._lightBluePrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xffe1f5fe)),
                        new MapEntry(100, new Color(0xffb3e5fc)),
                        new MapEntry(200, new Color(0xff81d4fa)),
                        new MapEntry(300, new Color(0xff4fc3f7)),
                        new MapEntry(400, new Color(0xff29b6f6)),
                        new MapEntry(
                            500,
                            new Color(Colors._lightBluePrimaryValue)
                        ),
                        new MapEntry(600, new Color(0xff039be5)),
                        new MapEntry(700, new Color(0xff0288d1)),
                        new MapEntry(800, new Color(0xff0277bd)),
                        new MapEntry(900, new Color(0xff01579b)),
                    ])
                ))
            )
        )
    );
    public static _lightBluePrimaryValue = 0xff03a9f4;
    public static lightBlueAccent = new MaterialAccentColor(
        Colors._lightBlueAccentPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xff80d8ff)),
                        new MapEntry(
                            200,
                            new Color(Colors._lightBlueAccentPrimaryValue)
                        ),
                        new MapEntry(400, new Color(0xff00b0ff)),
                        new MapEntry(700, new Color(0xff0091ea)),
                    ])
                ))
            )
        )
    );
    public static _lightBlueAccentPrimaryValue = 0xff40c4ff;
    public static cyan = new MaterialColor(
        Colors._cyanPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xffe0f7fa)),
                        new MapEntry(100, new Color(0xffb2ebf2)),
                        new MapEntry(200, new Color(0xff80deea)),
                        new MapEntry(300, new Color(0xff4dd0e1)),
                        new MapEntry(400, new Color(0xff26c6da)),
                        new MapEntry(500, new Color(Colors._cyanPrimaryValue)),
                        new MapEntry(600, new Color(0xff00acc1)),
                        new MapEntry(700, new Color(0xff0097a7)),
                        new MapEntry(800, new Color(0xff00838f)),
                        new MapEntry(900, new Color(0xff006064)),
                    ])
                ))
            )
        )
    );
    public static _cyanPrimaryValue = 0xff00bcd4;
    public static cyanAccent = new MaterialAccentColor(
        Colors._cyanAccentPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xff84ffff)),
                        new MapEntry(
                            200,
                            new Color(Colors._cyanAccentPrimaryValue)
                        ),
                        new MapEntry(400, new Color(0xff00e5ff)),
                        new MapEntry(700, new Color(0xff00b8d4)),
                    ])
                ))
            )
        )
    );
    public static _cyanAccentPrimaryValue = 0xff18ffff;
    public static teal = new MaterialColor(
        Colors._tealPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xffe0f2f1)),
                        new MapEntry(100, new Color(0xffb2dfdb)),
                        new MapEntry(200, new Color(0xff80cbc4)),
                        new MapEntry(300, new Color(0xff4db6ac)),
                        new MapEntry(400, new Color(0xff26a69a)),
                        new MapEntry(500, new Color(Colors._tealPrimaryValue)),
                        new MapEntry(600, new Color(0xff00897b)),
                        new MapEntry(700, new Color(0xff00796b)),
                        new MapEntry(800, new Color(0xff00695c)),
                        new MapEntry(900, new Color(0xff004d40)),
                    ])
                ))
            )
        )
    );
    public static _tealPrimaryValue = 0xff009688;
    public static tealAccent = new MaterialAccentColor(
        Colors._tealAccentPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xffa7ffeb)),
                        new MapEntry(
                            200,
                            new Color(Colors._tealAccentPrimaryValue)
                        ),
                        new MapEntry(400, new Color(0xff1de9b6)),
                        new MapEntry(700, new Color(0xff00bfa5)),
                    ])
                ))
            )
        )
    );
    public static _tealAccentPrimaryValue = 0xff64ffda;
    public static green = new MaterialColor(
        Colors._greenPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xffe8f5e9)),
                        new MapEntry(100, new Color(0xffc8e6c9)),
                        new MapEntry(200, new Color(0xffa5d6a7)),
                        new MapEntry(300, new Color(0xff81c784)),
                        new MapEntry(400, new Color(0xff66bb6a)),
                        new MapEntry(500, new Color(Colors._greenPrimaryValue)),
                        new MapEntry(600, new Color(0xff43a047)),
                        new MapEntry(700, new Color(0xff388e3c)),
                        new MapEntry(800, new Color(0xff2e7d32)),
                        new MapEntry(900, new Color(0xff1b5e20)),
                    ])
                ))
            )
        )
    );
    public static _greenPrimaryValue = 0xff4caf50;
    public static greenAccent = new MaterialAccentColor(
        Colors._greenAccentPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xffb9f6ca)),
                        new MapEntry(
                            200,
                            new Color(Colors._greenAccentPrimaryValue)
                        ),
                        new MapEntry(400, new Color(0xff00e676)),
                        new MapEntry(700, new Color(0xff00c853)),
                    ])
                ))
            )
        )
    );
    public static _greenAccentPrimaryValue = 0xff69f0ae;
    public static lightGreen = new MaterialColor(
        Colors._lightGreenPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xfff1f8e9)),
                        new MapEntry(100, new Color(0xffdcedc8)),
                        new MapEntry(200, new Color(0xffc5e1a5)),
                        new MapEntry(300, new Color(0xffaed581)),
                        new MapEntry(400, new Color(0xff9ccc65)),
                        new MapEntry(
                            500,
                            new Color(Colors._lightGreenPrimaryValue)
                        ),
                        new MapEntry(600, new Color(0xff7cb342)),
                        new MapEntry(700, new Color(0xff689f38)),
                        new MapEntry(800, new Color(0xff558b2f)),
                        new MapEntry(900, new Color(0xff33691e)),
                    ])
                ))
            )
        )
    );
    public static _lightGreenPrimaryValue = 0xff8bc34a;
    public static lightGreenAccent = new MaterialAccentColor(
        Colors._lightGreenAccentPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xffccff90)),
                        new MapEntry(
                            200,
                            new Color(Colors._lightGreenAccentPrimaryValue)
                        ),
                        new MapEntry(400, new Color(0xff76ff03)),
                        new MapEntry(700, new Color(0xff64dd17)),
                    ])
                ))
            )
        )
    );
    public static _lightGreenAccentPrimaryValue = 0xffb2ff59;
    public static lime = new MaterialColor(
        Colors._limePrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xfff9fbe7)),
                        new MapEntry(100, new Color(0xfff0f4c3)),
                        new MapEntry(200, new Color(0xffe6ee9c)),
                        new MapEntry(300, new Color(0xffdce775)),
                        new MapEntry(400, new Color(0xffd4e157)),
                        new MapEntry(500, new Color(Colors._limePrimaryValue)),
                        new MapEntry(600, new Color(0xffc0ca33)),
                        new MapEntry(700, new Color(0xffafb42b)),
                        new MapEntry(800, new Color(0xff9e9d24)),
                        new MapEntry(900, new Color(0xff827717)),
                    ])
                ))
            )
        )
    );
    public static _limePrimaryValue = 0xffcddc39;
    public static limeAccent = new MaterialAccentColor(
        Colors._limeAccentPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xfff4ff81)),
                        new MapEntry(
                            200,
                            new Color(Colors._limeAccentPrimaryValue)
                        ),
                        new MapEntry(400, new Color(0xffc6ff00)),
                        new MapEntry(700, new Color(0xffaeea00)),
                    ])
                ))
            )
        )
    );
    public static _limeAccentPrimaryValue = 0xffeeff41;
    public static yellow = new MaterialColor(
        Colors._yellowPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xfffffde7)),
                        new MapEntry(100, new Color(0xfffff9c4)),
                        new MapEntry(200, new Color(0xfffff59d)),
                        new MapEntry(300, new Color(0xfffff176)),
                        new MapEntry(400, new Color(0xffffee58)),
                        new MapEntry(
                            500,
                            new Color(Colors._yellowPrimaryValue)
                        ),
                        new MapEntry(600, new Color(0xfffdd835)),
                        new MapEntry(700, new Color(0xfffbc02d)),
                        new MapEntry(800, new Color(0xfff9a825)),
                        new MapEntry(900, new Color(0xfff57f17)),
                    ])
                ))
            )
        )
    );
    public static _yellowPrimaryValue = 0xffffeb3b;
    public static yellowAccent = new MaterialAccentColor(
        Colors._yellowAccentPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xffffff8d)),
                        new MapEntry(
                            200,
                            new Color(Colors._yellowAccentPrimaryValue)
                        ),
                        new MapEntry(400, new Color(0xffffea00)),
                        new MapEntry(700, new Color(0xffffd600)),
                    ])
                ))
            )
        )
    );
    public static _yellowAccentPrimaryValue = 0xffffff00;
    public static amber = new MaterialColor(
        Colors._amberPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xfffff8e1)),
                        new MapEntry(100, new Color(0xffffecb3)),
                        new MapEntry(200, new Color(0xffffe082)),
                        new MapEntry(300, new Color(0xffffd54f)),
                        new MapEntry(400, new Color(0xffffca28)),
                        new MapEntry(500, new Color(Colors._amberPrimaryValue)),
                        new MapEntry(600, new Color(0xffffb300)),
                        new MapEntry(700, new Color(0xffffa000)),
                        new MapEntry(800, new Color(0xffff8f00)),
                        new MapEntry(900, new Color(0xffff6f00)),
                    ])
                ))
            )
        )
    );
    public static _amberPrimaryValue = 0xffffc107;
    public static amberAccent = new MaterialAccentColor(
        Colors._amberAccentPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xffffe57f)),
                        new MapEntry(
                            200,
                            new Color(Colors._amberAccentPrimaryValue)
                        ),
                        new MapEntry(400, new Color(0xffffc400)),
                        new MapEntry(700, new Color(0xffffab00)),
                    ])
                ))
            )
        )
    );
    public static _amberAccentPrimaryValue = 0xffffd740;
    public static orange = new MaterialColor(
        Colors._orangePrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xfffff3e0)),
                        new MapEntry(100, new Color(0xffffe0b2)),
                        new MapEntry(200, new Color(0xffffcc80)),
                        new MapEntry(300, new Color(0xffffb74d)),
                        new MapEntry(400, new Color(0xffffa726)),
                        new MapEntry(
                            500,
                            new Color(Colors._orangePrimaryValue)
                        ),
                        new MapEntry(600, new Color(0xfffb8c00)),
                        new MapEntry(700, new Color(0xfff57c00)),
                        new MapEntry(800, new Color(0xffef6c00)),
                        new MapEntry(900, new Color(0xffe65100)),
                    ])
                ))
            )
        )
    );
    public static _orangePrimaryValue = 0xffff9800;
    public static orangeAccent = new MaterialAccentColor(
        Colors._orangeAccentPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xffffd180)),
                        new MapEntry(
                            200,
                            new Color(Colors._orangeAccentPrimaryValue)
                        ),
                        new MapEntry(400, new Color(0xffff9100)),
                        new MapEntry(700, new Color(0xffff6d00)),
                    ])
                ))
            )
        )
    );
    public static _orangeAccentPrimaryValue = 0xffffab40;
    public static deepOrange = new MaterialColor(
        Colors._deepOrangePrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xfffbe9e7)),
                        new MapEntry(100, new Color(0xffffccbc)),
                        new MapEntry(200, new Color(0xffffab91)),
                        new MapEntry(300, new Color(0xffff8a65)),
                        new MapEntry(400, new Color(0xffff7043)),
                        new MapEntry(
                            500,
                            new Color(Colors._deepOrangePrimaryValue)
                        ),
                        new MapEntry(600, new Color(0xfff4511e)),
                        new MapEntry(700, new Color(0xffe64a19)),
                        new MapEntry(800, new Color(0xffd84315)),
                        new MapEntry(900, new Color(0xffbf360c)),
                    ])
                ))
            )
        )
    );
    public static _deepOrangePrimaryValue = 0xffff5722;
    public static deepOrangeAccent = new MaterialAccentColor(
        Colors._deepOrangeAccentPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(100, new Color(0xffff9e80)),
                        new MapEntry(
                            200,
                            new Color(Colors._deepOrangeAccentPrimaryValue)
                        ),
                        new MapEntry(400, new Color(0xffff3d00)),
                        new MapEntry(700, new Color(0xffdd2c00)),
                    ])
                ))
            )
        )
    );
    public static _deepOrangeAccentPrimaryValue = 0xffff6e40;
    public static brown = new MaterialColor(
        Colors._brownPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xffefebe9)),
                        new MapEntry(100, new Color(0xffd7ccc8)),
                        new MapEntry(200, new Color(0xffbcaaa4)),
                        new MapEntry(300, new Color(0xffa1887f)),
                        new MapEntry(400, new Color(0xff8d6e63)),
                        new MapEntry(500, new Color(Colors._brownPrimaryValue)),
                        new MapEntry(600, new Color(0xff6d4c41)),
                        new MapEntry(700, new Color(0xff5d4037)),
                        new MapEntry(800, new Color(0xff4e342e)),
                        new MapEntry(900, new Color(0xff3e2723)),
                    ])
                ))
            )
        )
    );
    public static _brownPrimaryValue = 0xff795548;
    public static grey = new MaterialColor(
        Colors._greyPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xfffafafa)),
                        new MapEntry(100, new Color(0xfff5f5f5)),
                        new MapEntry(200, new Color(0xffeeeeee)),
                        new MapEntry(300, new Color(0xffe0e0e0)),
                        new MapEntry(350, new Color(0xffd6d6d6)),
                        new MapEntry(400, new Color(0xffbdbdbd)),
                        new MapEntry(500, new Color(Colors._greyPrimaryValue)),
                        new MapEntry(600, new Color(0xff757575)),
                        new MapEntry(700, new Color(0xff616161)),
                        new MapEntry(800, new Color(0xff424242)),
                        new MapEntry(850, new Color(0xff303030)),
                        new MapEntry(900, new Color(0xff212121)),
                    ])
                ))
            )
        )
    );
    public static _greyPrimaryValue = 0xff9e9e9e;
    public static blueGrey = new MaterialColor(
        Colors._blueGreyPrimaryValue,
        Map.fromEntries(
            <IIterable<IMapEntry<number, IColor>>>(
                (<unknown>(
                    List.fromArray([
                        new MapEntry(50, new Color(0xffeceff1)),
                        new MapEntry(100, new Color(0xffcfd8dc)),
                        new MapEntry(200, new Color(0xffb0bec5)),
                        new MapEntry(300, new Color(0xff90a4ae)),
                        new MapEntry(400, new Color(0xff78909c)),
                        new MapEntry(
                            500,
                            new Color(Colors._blueGreyPrimaryValue)
                        ),
                        new MapEntry(600, new Color(0xff546e7a)),
                        new MapEntry(700, new Color(0xff455a64)),
                        new MapEntry(800, new Color(0xff37474f)),
                        new MapEntry(900, new Color(0xff263238)),
                    ])
                ))
            )
        )
    );
    public static _blueGreyPrimaryValue = 0xff607d8b;
    public static primaries = List.fromArray([
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
    ]);
    public static accents = List.fromArray([
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
    ]);
}
