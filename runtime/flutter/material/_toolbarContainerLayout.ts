import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { ISingleChildLayoutDelegate } from "../rendering/singleChildLayoutDelegate";
declare const flutter: {
    material: {
        _toolbarContainerLayout: (
            this: void,
            _toolbarContainerLayout: I_ToolbarContainerLayout,
            toolbarHeight: number
        ) => I_ToolbarContainerLayout;
    };
};
export interface I_ToolbarContainerLayout {
    toolbarHeight: number;
    getConstraintsForChild: (constraints: IBoxConstraints) => IBoxConstraints;
    getSize: (constraints: IBoxConstraints) => ISize;
    getPositionForChild: (size: ISize, childSize: ISize) => IOffset;
    shouldRelayout: (oldDelegate: unknown) => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class _ToolbarContainerLayout implements ISingleChildLayoutDelegate {
    public readonly toolbarHeight: number = undefined as any;
    public constructor(toolbarHeight: number) {
        flutter.material._toolbarContainerLayout(this, toolbarHeight);
    }
    private readonly _dart_getConstraintsForChild: (
        constraints: IBoxConstraints
    ) => IBoxConstraints = undefined as any;
    private readonly _dart_getSize: (constraints: IBoxConstraints) => ISize =
        undefined as any;
    private readonly _dart_getPositionForChild: (
        size: ISize,
        childSize: ISize
    ) => IOffset = undefined as any;
    private readonly _dart_shouldRelayout: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getConstraintsForChild(
        constraints: IBoxConstraints
    ): IBoxConstraints {
        return this._dart_getConstraintsForChild(constraints);
    }
    public getSize(constraints: IBoxConstraints): ISize {
        return this._dart_getSize(constraints);
    }
    public getPositionForChild(size: ISize, childSize: ISize): IOffset {
        return this._dart_getPositionForChild(size, childSize);
    }
    public shouldRelayout(oldDelegate: any): boolean {
        return this._dart_shouldRelayout(oldDelegate);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
