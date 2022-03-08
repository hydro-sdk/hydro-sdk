import { IColor } from "../../dart/ui/color";
import { IBuildContext } from "../widgets/buildContext";
declare const flutter: {
    material: {
        elevationOverlayApplyOverlay: (
            context: IBuildContext,
            color: IColor,
            elevation: number
        ) => IColor;
        elevationOverlayOverlayColor: (
            context: IBuildContext,
            elevation: number
        ) => IColor;
        elevationOverlayColorWithOverlay: (
            surface: IColor,
            overlay: IColor,
            elevation: number
        ) => IColor;
    };
};
export interface IElevationOverlay {}
export class ElevationOverlay {
    public static applyOverlay(
        context: IBuildContext,
        color: IColor,
        elevation: number
    ): IColor {
        return flutter.material.elevationOverlayApplyOverlay(
            context,
            color,
            elevation
        );
    }
    public static overlayColor(
        context: IBuildContext,
        elevation: number
    ): IColor {
        return flutter.material.elevationOverlayOverlayColor(
            context,
            elevation
        );
    }
    public static colorWithOverlay(
        surface: IColor,
        overlay: IColor,
        elevation: number
    ): IColor {
        return flutter.material.elevationOverlayColorWithOverlay(
            surface,
            overlay,
            elevation
        );
    }
}
