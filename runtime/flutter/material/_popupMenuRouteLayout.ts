import { IList } from "../../dart/core/list";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IEdgeInsets } from "../painting/edgeInsets";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { IRelativeRect } from "../rendering/relativeRect";
import { ISingleChildLayoutDelegate } from "../rendering/singleChildLayoutDelegate";
declare const flutter: {
    material: {
        _popupMenuRouteLayout: (
            this: void,
            _popupMenuRouteLayout: I_PopupMenuRouteLayout,
            position: IRelativeRect,
            itemSizes: IList<ISize | undefined>,
            selectedItemIndex: number | undefined,
            textDirection: TextDirection,
            padding: IEdgeInsets
        ) => I_PopupMenuRouteLayout;
    };
};
export interface I_PopupMenuRouteLayout {
    position: IRelativeRect;
    itemSizes: IList<ISize | undefined>;
    selectedItemIndex: number | undefined;
    textDirection: TextDirection;
    padding: IEdgeInsets;
    getConstraintsForChild: (constraints: IBoxConstraints) => IBoxConstraints;
    getPositionForChild: (size: ISize, childSize: ISize) => IOffset;
    shouldRelayout: (oldDelegate: unknown) => boolean;
    getSize: (constraints: IBoxConstraints) => ISize;
    toString: () => string;
    getHashCode: () => number;
}
export class _PopupMenuRouteLayout implements ISingleChildLayoutDelegate {
    public readonly position: IRelativeRect = undefined as any;
    public readonly itemSizes: IList<ISize | undefined> = undefined as any;
    public readonly selectedItemIndex: number | undefined = undefined as any;
    public readonly textDirection: TextDirection = undefined as any;
    public readonly padding: IEdgeInsets = undefined as any;
    public constructor(
        position: IRelativeRect,
        itemSizes: IList<ISize | undefined>,
        selectedItemIndex: number | undefined,
        textDirection: TextDirection,
        padding: IEdgeInsets
    ) {
        flutter.material._popupMenuRouteLayout(
            this,
            position,
            itemSizes,
            selectedItemIndex,
            textDirection,
            padding
        );
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
