import { Radius } from "../../dart/ui/radius";
import { Color } from "../../dart/ui/color";
import { Border } from "../painting/border";
import { BorderSide } from "../painting/borderSide";
import { BorderStyle } from "../painting/borderStyle";
import { BoxDecoration } from "../painting/boxDecoration";
import { BorderRadius } from "../painting/borderRadius";
import { CupertinoColors } from "./cupertinoColors";
import { CupertinoDynamicColor } from "./cupertinoDynamicColor";

export const kMinInteractiveDimensionCupertino = 44.0;

export const kDefaultTabBarBorderColor = CupertinoDynamicColor.withBrightness({
    color: new Color(0x4C000000),
    darkColor: new Color(0x29000000),
});

export const kDefaultTabBarInactiveColor = CupertinoColors.inactiveGray.color;

export const kDefaultNavBarBorderColor = new Color(0x4D000000);

export const kDefaultNavBarBorder = new Border({
    bottom: new BorderSide({
        color: kDefaultNavBarBorderColor,
        width: 0.0,
        style: BorderStyle.solid,
    })
});

export const kDefaultRoundedBorderSide = new BorderSide({
    color: CupertinoDynamicColor.withBrightness({
        color: new Color(0x33000000),
        darkColor: new Color(0x33FFFFFF),
    }).color,
    style: BorderStyle.solid,
    width: 0.0,
});

export const kDefaultRoundedBorder = new Border({
    top: kDefaultRoundedBorderSide,
    bottom: kDefaultRoundedBorderSide,
    left: kDefaultRoundedBorderSide,
    right: kDefaultRoundedBorderSide,
});

export const kDefaultRoundedBorderDecoration = new BoxDecoration({
    color: CupertinoDynamicColor.withBrightness({
        color: CupertinoColors.white,
        darkColor: CupertinoColors.black,
    }).color,
    border: kDefaultRoundedBorder,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
});
