import { CupertinoColors } from "./cupertinoColors";
import { CupertinoDynamicColor } from "./cupertinoDynamicColor";
import { Color } from "../../dart/ui/color";

export const kMinInteractiveDimensionCupertino = 44.0;
export const kDefaultTabBarBorderColor = CupertinoDynamicColor.withBrightness({
    color: new Color(0x4C000000),
    darkColor: new Color(0x29000000),
});
export const kDefaultTabBarInactiveColor = CupertinoColors.inactiveGray.color;