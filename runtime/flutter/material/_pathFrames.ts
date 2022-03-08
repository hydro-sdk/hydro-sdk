import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IPath } from "../../dart/ui/path";
import { I_PathCommand } from "./_pathCommand";
declare const flutter: {
    material: {
        _pathFrames: (
            this: void,
            _pathFrames: I_PathFrames,
            props: { commands: IList<I_PathCommand>; opacities: IList<number> }
        ) => I_PathFrames;
    };
};
export interface I_PathFrames {
    commands: IList<I_PathCommand>;
    opacities: IList<number>;
    paint: (
        canvas: ICanvas,
        color: IColor,
        uiPathFactory: () => IPath,
        progress: number
    ) => void;
}
export class _PathFrames {
    public readonly commands: IList<I_PathCommand> = undefined as any;
    public readonly opacities: IList<number> = undefined as any;
    public constructor(props: {
        commands: IList<I_PathCommand>;
        opacities: IList<number>;
    }) {
        flutter.material._pathFrames(this, props);
    }
    private readonly _dart_paint: (
        canvas: ICanvas,
        color: IColor,
        uiPathFactory: () => IPath,
        progress: number
    ) => void = undefined as any;
    public paint(
        canvas: ICanvas,
        color: IColor,
        uiPathFactory: () => IPath,
        progress: number
    ): void {
        return this._dart_paint(canvas, color, uiPathFactory, progress);
    }
}
