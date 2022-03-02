import { Color } from "../../dart/ui/color";
import { CupertinoDynamicColor } from "./cupertinoDynamicColor";
export interface ICupertinoColors {}
export class CupertinoColors {
    public static activeBlue = CupertinoDynamicColor.systemBlue;
    public static activeGreen = CupertinoDynamicColor.systemGreen;
    public static activeOrange = CupertinoDynamicColor.systemOrange;
    public static white = new Color(0xffffffff);
    public static black = new Color(0xff000000);
    public static lightBackgroundGray = new Color(0xffe5e5ea);
    public static extraLightBackgroundGray = new Color(0xffefeff4);
    public static darkBackgroundGray = new Color(0xff171717);
    public static inactiveGray = CupertinoDynamicColor.withBrightness({
        debugLabel: "inactiveGray",
    });
    public static destructiveRed = CupertinoDynamicColor.systemRed;
    public static systemBlue = CupertinoDynamicColor.withBrightnessAndContrast({
        debugLabel: "systemBlue",
    });
    public static systemGreen = CupertinoDynamicColor.withBrightnessAndContrast(
        { debugLabel: "systemGreen" }
    );
    public static systemIndigo =
        CupertinoDynamicColor.withBrightnessAndContrast({
            debugLabel: "systemIndigo",
        });
    public static systemOrange =
        CupertinoDynamicColor.withBrightnessAndContrast({
            debugLabel: "systemOrange",
        });
    public static systemPink = CupertinoDynamicColor.withBrightnessAndContrast({
        debugLabel: "systemPink",
    });
    public static systemPurple =
        CupertinoDynamicColor.withBrightnessAndContrast({
            debugLabel: "systemPurple",
        });
    public static systemRed = CupertinoDynamicColor.withBrightnessAndContrast({
        debugLabel: "systemRed",
    });
    public static systemTeal = CupertinoDynamicColor.withBrightnessAndContrast({
        debugLabel: "systemTeal",
    });
    public static systemYellow =
        CupertinoDynamicColor.withBrightnessAndContrast({
            debugLabel: "systemYellow",
        });
    public static systemGrey = CupertinoDynamicColor.withBrightnessAndContrast({
        debugLabel: "systemGrey",
    });
    public static systemGrey2 = CupertinoDynamicColor.withBrightnessAndContrast(
        { debugLabel: "systemGrey2" }
    );
    public static systemGrey3 = CupertinoDynamicColor.withBrightnessAndContrast(
        { debugLabel: "systemGrey3" }
    );
    public static systemGrey4 = CupertinoDynamicColor.withBrightnessAndContrast(
        { debugLabel: "systemGrey4" }
    );
    public static systemGrey5 = CupertinoDynamicColor.withBrightnessAndContrast(
        { debugLabel: "systemGrey5" }
    );
    public static systemGrey6 = CupertinoDynamicColor.withBrightnessAndContrast(
        { debugLabel: "systemGrey6" }
    );
    public static label = new CupertinoDynamicColor({ debugLabel: "label" });
    public static secondaryLabel = new CupertinoDynamicColor({
        debugLabel: "secondaryLabel",
    });
    public static tertiaryLabel = new CupertinoDynamicColor({
        debugLabel: "tertiaryLabel",
    });
    public static quaternaryLabel = new CupertinoDynamicColor({
        debugLabel: "quaternaryLabel",
    });
    public static systemFill = new CupertinoDynamicColor({
        debugLabel: "systemFill",
    });
    public static secondarySystemFill = new CupertinoDynamicColor({
        debugLabel: "secondarySystemFill",
    });
    public static tertiarySystemFill = new CupertinoDynamicColor({
        debugLabel: "tertiarySystemFill",
    });
    public static quaternarySystemFill = new CupertinoDynamicColor({
        debugLabel: "quaternarySystemFill",
    });
    public static placeholderText = new CupertinoDynamicColor({
        debugLabel: "placeholderText",
    });
    public static systemBackground = new CupertinoDynamicColor({
        debugLabel: "systemBackground",
    });
    public static secondarySystemBackground = new CupertinoDynamicColor({
        debugLabel: "secondarySystemBackground",
    });
    public static tertiarySystemBackground = new CupertinoDynamicColor({
        debugLabel: "tertiarySystemBackground",
    });
    public static systemGroupedBackground = new CupertinoDynamicColor({
        debugLabel: "systemGroupedBackground",
    });
    public static secondarySystemGroupedBackground = new CupertinoDynamicColor({
        debugLabel: "secondarySystemGroupedBackground",
    });
    public static tertiarySystemGroupedBackground = new CupertinoDynamicColor({
        debugLabel: "tertiarySystemGroupedBackground",
    });
    public static separator = new CupertinoDynamicColor({
        debugLabel: "separator",
    });
    public static opaqueSeparator = new CupertinoDynamicColor({
        debugLabel: "opaqueSeparator",
    });
    public static link = new CupertinoDynamicColor({ debugLabel: "link" });
}
