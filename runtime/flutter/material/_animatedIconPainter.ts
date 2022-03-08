import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { IPath } from "../../dart/ui/path";
import { ISize } from "../../dart/ui/size";
import { IAnimation } from "../animation/animation";
import { ICustomPainter } from "../rendering/customPainter";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
import { I_PathFrames } from "./_pathFrames";
declare const flutter: {
    material: {
        _animatedIconPainter: (
            this: void,
            _animatedIconPainter: I_AnimatedIconPainter,
            props: {
                color: IColor;
                paths: IList<I_PathFrames>;
                progress: IAnimation<number>;
                scale: number;
                shouldMirror: boolean;
                uiPathFactory: () => IPath;
            }
        ) => I_AnimatedIconPainter;
    };
};
export interface I_AnimatedIconPainter {
    paths: IList<I_PathFrames>;
    progress: IAnimation<number>;
    color: IColor;
    scale: number;
    shouldMirror: boolean;
    paint: (canvas: ICanvas, size: ISize) => void;
    shouldRepaint: (oldDelegate: unknown) => boolean;
    hitTest: (position: IOffset) => boolean | undefined;
    shouldRebuildSemantics: (oldDelegate: unknown) => boolean;
    getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _AnimatedIconPainter implements ICustomPainter {
    public readonly paths: IList<I_PathFrames> = undefined as any;
    public readonly progress: IAnimation<number> = undefined as any;
    public readonly color: IColor = undefined as any;
    public readonly scale: number = undefined as any;
    public readonly shouldMirror: boolean = undefined as any;
    public constructor(props: {
        color: IColor;
        paths: IList<I_PathFrames>;
        progress: IAnimation<number>;
        scale: number;
        shouldMirror: boolean;
        uiPathFactory: () => IPath;
    }) {
        flutter.material._animatedIconPainter(this, props);
    }
    private readonly _dart_paint: (canvas: ICanvas, size: ISize) => void =
        undefined as any;
    private readonly _dart_shouldRepaint: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_hitTest: (position: IOffset) => boolean | undefined =
        undefined as any;
    private readonly _dart_shouldRebuildSemantics: (
        oldDelegate: any
    ) => boolean = undefined as any;
    private readonly _dart_getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public paint(canvas: ICanvas, size: ISize): void {
        return this._dart_paint(canvas, size);
    }
    public shouldRepaint(oldDelegate: any): boolean {
        return this._dart_shouldRepaint(oldDelegate);
    }
    public hitTest(position: IOffset): boolean | undefined {
        return this._dart_hitTest(position);
    }
    public shouldRebuildSemantics(oldDelegate: any): boolean {
        return this._dart_shouldRebuildSemantics(oldDelegate);
    }
    public getSemanticsBuilder(): (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined {
        return this._dart_getSemanticsBuilder();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
