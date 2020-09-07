import { CupertinoColors } from "./cupertinoColors";
import { CupertinoDynamicColor } from "./cupertinoDynamicColor";
import { Color } from "../../dart/ui/color";
import { Border } from "../painting/border";
import { BorderSide } from "../painting/borderSide";
import { BorderStyle } from "../painting/borderStyle";

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
