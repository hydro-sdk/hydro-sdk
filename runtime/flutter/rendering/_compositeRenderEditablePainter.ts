import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { ISize } from "../../dart/ui/size";
import { IListenable } from "../foundation/listenable";
import { IRenderEditable } from "./renderEditable";
import { IRenderEditablePainter } from "./renderEditablePainter";
declare const flutter: {
    rendering: {
        _compositeRenderEditablePainter: (
            this: void,
            _compositeRenderEditablePainter: I_CompositeRenderEditablePainter,
            props: { painters: IList<IRenderEditablePainter> }
        ) => I_CompositeRenderEditablePainter;
    };
};
export interface I_CompositeRenderEditablePainter {
    painters: IList<IRenderEditablePainter>;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    paint: (
        canvas: ICanvas,
        size: ISize,
        renderEditable: IRenderEditable
    ) => void;
    shouldRepaint: (
        oldDelegate?: IRenderEditablePainter | undefined
    ) => boolean;
    dispose: () => void;
    getHasListeners: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class _CompositeRenderEditablePainter
    implements IRenderEditablePainter, IListenable
{
    public readonly painters: IList<IRenderEditablePainter> = undefined as any;
    public constructor(props: { painters: IList<IRenderEditablePainter> }) {
        flutter.rendering._compositeRenderEditablePainter(this, props);
    }
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_paint: (
        canvas: ICanvas,
        size: ISize,
        renderEditable: IRenderEditable
    ) => void = undefined as any;
    private readonly _dart_shouldRepaint: (
        oldDelegate?: IRenderEditablePainter | undefined
    ) => boolean = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public paint(
        canvas: ICanvas,
        size: ISize,
        renderEditable: IRenderEditable
    ): void {
        return this._dart_paint(canvas, size, renderEditable);
    }
    public shouldRepaint(
        oldDelegate?: IRenderEditablePainter | undefined
    ): boolean {
        return this._dart_shouldRepaint(oldDelegate);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public notifyListeners(): void {
        return this._dart_notifyListeners();
    }
    public getHasListeners(): boolean {
        return this._dart_getHasListeners();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
