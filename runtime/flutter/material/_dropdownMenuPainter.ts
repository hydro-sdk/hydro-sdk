import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { IAnimation } from "../animation/animation";
import { IBorderRadius } from "../painting/borderRadius";
import { ICustomPainter } from "../rendering/customPainter";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
declare const flutter: {
    material: {
        _dropdownMenuPainter: (
            this: void,
            _dropdownMenuPainter: I_DropdownMenuPainter,
            props: {
                borderRadius?: IBorderRadius | undefined;
                color?: IColor | undefined;
                elevation?: number | undefined;
                selectedIndex?: number | undefined;
                getSelectedItemOffset: () => number;
                resize: IAnimation<number>;
            }
        ) => I_DropdownMenuPainter;
    };
};
export interface I_DropdownMenuPainter {
    color: IColor | undefined;
    elevation: number | undefined;
    selectedIndex: number | undefined;
    borderRadius: IBorderRadius | undefined;
    resize: IAnimation<number>;
    paint: (canvas: ICanvas, size: ISize) => void;
    shouldRepaint: (oldPainter: unknown) => boolean;
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
export class _DropdownMenuPainter implements ICustomPainter {
    public readonly color: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly selectedIndex: number | undefined = undefined as any;
    public readonly borderRadius: IBorderRadius | undefined = undefined as any;
    public readonly resize: IAnimation<number> = undefined as any;
    public constructor(props: {
        borderRadius?: IBorderRadius | undefined;
        color?: IColor | undefined;
        elevation?: number | undefined;
        selectedIndex?: number | undefined;
        getSelectedItemOffset: () => number;
        resize: IAnimation<number>;
    }) {
        flutter.material._dropdownMenuPainter(this, props);
    }
    private readonly _dart_paint: (canvas: ICanvas, size: ISize) => void =
        undefined as any;
    private readonly _dart_shouldRepaint: (oldPainter: any) => boolean =
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
    public shouldRepaint(oldPainter: any): boolean {
        return this._dart_shouldRepaint(oldPainter);
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
