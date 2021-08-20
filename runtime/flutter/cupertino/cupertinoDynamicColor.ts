import { IColor } from "./../../dart/ui/color";

export class CupertinoDynamicColor {
    public debugLabel: string;
    public color: IColor;
    public darkColor: IColor;
    public highContrastColor: IColor;
    public darkHighContrastColor: IColor;
    public elevatedColor: IColor;
    public darkElevatedColor: IColor;
    public highContrastElevatedColor: IColor;
    public darkHighContrastElevatedColor: IColor;
    public constructor(props: {
        debugLabel?: string | undefined;
        color: IColor;
        darkColor: IColor;
        highContrastColor: IColor;
        darkHighContrastColor: IColor;
        elevatedColor: IColor;
        darkElevatedColor: IColor;
        highContrastElevatedColor: IColor;
        darkHighContrastElevatedColor: IColor;
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
        color: IColor;
        darkColor: IColor;
        highContrastColor: IColor;
        darkHighContrastColor: IColor;
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
        color: IColor;
        darkColor: IColor;
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
