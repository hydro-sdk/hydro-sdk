import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { ISingleChildLayoutDelegate } from "../rendering/singleChildLayoutDelegate";
declare const flutter: {
    widgets: {
        desktopTextSelectionToolbarLayoutDelegate: (
            this: void,
            desktopTextSelectionToolbarLayoutDelegate: IDesktopTextSelectionToolbarLayoutDelegate,
            props: { anchor: IOffset }
        ) => IDesktopTextSelectionToolbarLayoutDelegate;
    };
};
export interface IDesktopTextSelectionToolbarLayoutDelegate {
    anchor: IOffset;
    getConstraintsForChild: (constraints: IBoxConstraints) => IBoxConstraints;
    getPositionForChild: (size: ISize, childSize: ISize) => IOffset;
    shouldRelayout: (oldDelegate: unknown) => boolean;
    getSize: (constraints: IBoxConstraints) => ISize;
    toString: () => string;
    getHashCode: () => number;
}
export class DesktopTextSelectionToolbarLayoutDelegate
    implements ISingleChildLayoutDelegate
{
    public readonly anchor: IOffset = undefined as any;
    public constructor(props: { anchor: IOffset }) {
        flutter.widgets.desktopTextSelectionToolbarLayoutDelegate(this, props);
    }
    private readonly _dart_getConstraintsForChild: (
        constraints: IBoxConstraints
    ) => IBoxConstraints = undefined as any;
    private readonly _dart_getPositionForChild: (
        size: ISize,
        childSize: ISize
    ) => IOffset = undefined as any;
    private readonly _dart_shouldRelayout: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_getSize: (constraints: IBoxConstraints) => ISize =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getConstraintsForChild(
        constraints: IBoxConstraints
    ): IBoxConstraints {
        return this._dart_getConstraintsForChild(constraints);
    }
    public getPositionForChild(size: ISize, childSize: ISize): IOffset {
        return this._dart_getPositionForChild(size, childSize);
    }
    public shouldRelayout(oldDelegate: any): boolean {
        return this._dart_shouldRelayout(oldDelegate);
    }
    public getSize(constraints: IBoxConstraints): ISize {
        return this._dart_getSize(constraints);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
