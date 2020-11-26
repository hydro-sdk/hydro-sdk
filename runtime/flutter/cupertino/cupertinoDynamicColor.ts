import { Color } from "./../../dart/ui/color";

export class CupertinoDynamicColor {
    public debugLabel: string;
    public color: Color;
    public darkColor: Color;
    public highContrastColor: Color;
    public darkHighContrastColor: Color;
    public elevatedColor: Color;
    public darkElevatedColor: Color;
    public highContrastElevatedColor: Color;
    public darkHighContrastElevatedColor: Color;
    public constructor(props: {
        debugLabel?: string | undefined;
        color: Color;
        darkColor: Color;
        highContrastColor: Color;
        darkHighContrastColor: Color;
        elevatedColor: Color;
        darkElevatedColor: Color;
        highContrastElevatedColor: Color;
        darkHighContrastElevatedColor: Color;
    }) {
        this.debugLabel = props.debugLabel ? props.debugLabel : "";
        this.color = props.color;
        this.darkColor = props.darkColor;
        this.highContrastColor = props.highContrastColor;
        this.darkHighContrastColor = props.darkHighContrastColor;
        this.elevatedColor = props.elevatedColor;
        this.darkElevatedColor = props.darkElevatedColor;
        this.highContrastElevatedColor = props.highContrastElevatedColor;
        this.darkHighContrastElevatedColor = props.highContrastElevatedColor;
    }

    public static withBrightnessAndContrast(props: {
        debugLabel?: string | undefined;
        color: Color;
        darkColor: Color;
        highContrastColor: Color;
        darkHighContrastColor: Color;
    }): CupertinoDynamicColor {
        return new CupertinoDynamicColor({
            ...props,
            elevatedColor: props.color,
            darkElevatedColor: props.darkColor,
            highContrastElevatedColor: props.highContrastColor,
            darkHighContrastElevatedColor: props.darkHighContrastColor,
        });
    }

    public static withBrightness(props: {
        debugLabel?: string | undefined;
        color: Color;
        darkColor: Color;
    }): CupertinoDynamicColor {
        return new CupertinoDynamicColor({
            ...props,
            highContrastColor: props.color,
            darkHighContrastColor: props.darkColor,
            elevatedColor: props.color,
            darkElevatedColor: props.darkColor,
            highContrastElevatedColor: props.color,
            darkHighContrastElevatedColor: props.darkColor,
        });
    }
}
