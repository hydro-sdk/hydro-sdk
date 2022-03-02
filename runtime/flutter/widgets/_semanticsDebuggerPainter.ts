import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { ITextStyle } from "../painting/textStyle";
import { ICustomPainter } from "../rendering/customPainter";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
import { IPipelineOwner } from "../rendering/pipelineOwner";
import { ISemanticsNode } from "../semantics/semanticsNode";
declare const flutter: {
    widgets: {
        _semanticsDebuggerPainter: (
            this: void,
            _semanticsDebuggerPainter: I_SemanticsDebuggerPainter,
            owner: IPipelineOwner,
            generation: number,
            pointerPosition: IOffset | undefined,
            devicePixelRatio: number,
            labelStyle: ITextStyle
        ) => I_SemanticsDebuggerPainter;
    };
};
export interface I_SemanticsDebuggerPainter {
    owner: IPipelineOwner;
    generation: number;
    pointerPosition: IOffset | undefined;
    devicePixelRatio: number;
    labelStyle: ITextStyle;
    paint: (canvas: ICanvas, size: ISize) => void;
    shouldRepaint: (oldDelegate: unknown) => boolean;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    shouldRebuildSemantics: (oldDelegate: unknown) => boolean;
    hitTest: (position: IOffset) => boolean | undefined;
    toString: () => string;
    getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined;
    getHashCode: () => number;
}
export class _SemanticsDebuggerPainter implements ICustomPainter {
    public readonly owner: IPipelineOwner = undefined as any;
    public readonly generation: number = undefined as any;
    public readonly pointerPosition: IOffset | undefined = undefined as any;
    public readonly devicePixelRatio: number = undefined as any;
    public readonly labelStyle: ITextStyle = undefined as any;
    public constructor(
        owner: IPipelineOwner,
        generation: number,
        pointerPosition: IOffset | undefined,
        devicePixelRatio: number,
        labelStyle: ITextStyle
    ) {
        flutter.widgets._semanticsDebuggerPainter(
            this,
            owner,
            generation,
            pointerPosition,
            devicePixelRatio,
            labelStyle
        );
    }
    private readonly _dart_paint: (canvas: ICanvas, size: ISize) => void =
        undefined as any;
    private readonly _dart_shouldRepaint: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_shouldRebuildSemantics: (
        oldDelegate: any
    ) => boolean = undefined as any;
    private readonly _dart_hitTest: (position: IOffset) => boolean | undefined =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public paint(canvas: ICanvas, size: ISize): void {
        return this._dart_paint(canvas, size);
    }
    public shouldRepaint(oldDelegate: any): boolean {
        return this._dart_shouldRepaint(oldDelegate);
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public shouldRebuildSemantics(oldDelegate: any): boolean {
        return this._dart_shouldRebuildSemantics(oldDelegate);
    }
    public hitTest(position: IOffset): boolean | undefined {
        return this._dart_hitTest(position);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getSemanticsBuilder(): (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined {
        return this._dart_getSemanticsBuilder();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
