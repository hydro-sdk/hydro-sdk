import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { ISingleChildLayoutDelegate } from "../rendering/singleChildLayoutDelegate";
import { I_DropdownRoute } from "./_dropdownRoute";
declare const flutter: {
    material: {
        _dropdownMenuRouteLayout: <T>(
            this: void,
            _dropdownMenuRouteLayout: I_DropdownMenuRouteLayout<T>,
            props: {
                buttonRect: IRect;
                route: I_DropdownRoute<T>;
                textDirection?: TextDirection | undefined;
            }
        ) => I_DropdownMenuRouteLayout<T>;
    };
};
export interface I_DropdownMenuRouteLayout<T> {
    buttonRect: IRect;
    route: I_DropdownRoute<T>;
    textDirection: TextDirection | undefined;
    getConstraintsForChild: (constraints: IBoxConstraints) => IBoxConstraints;
    getPositionForChild: (size: ISize, childSize: ISize) => IOffset;
    shouldRelayout: (oldDelegate: unknown) => boolean;
    getSize: (constraints: IBoxConstraints) => ISize;
    toString: () => string;
    getHashCode: () => number;
}
export class _DropdownMenuRouteLayout<T> implements ISingleChildLayoutDelegate {
    public readonly buttonRect: IRect = undefined as any;
    public readonly route: I_DropdownRoute<T> = undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public constructor(props: {
        buttonRect: IRect;
        route: I_DropdownRoute<T>;
        textDirection?: TextDirection | undefined;
    }) {
        flutter.material._dropdownMenuRouteLayout(this, props);
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
