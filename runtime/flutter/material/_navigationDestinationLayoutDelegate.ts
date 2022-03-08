import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { IAnimation } from "../animation/animation";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { IMultiChildLayoutDelegate } from "../rendering/multiChildLayoutDelegate";
declare const flutter: {
    material: {
        _navigationDestinationLayoutDelegate: (
            this: void,
            _navigationDestinationLayoutDelegate: I_NavigationDestinationLayoutDelegate,
            props: { animation: IAnimation<number> }
        ) => I_NavigationDestinationLayoutDelegate;
    };
};
export interface I_NavigationDestinationLayoutDelegate {
    animation: IAnimation<number>;
    performLayout: (size: ISize) => void;
    shouldRelayout: (oldDelegate: unknown) => boolean;
    hasChild: (childId: Object) => boolean;
    layoutChild: (childId: Object, constraints: IBoxConstraints) => ISize;
    positionChild: (childId: Object, offset: IOffset) => void;
    getSize: (constraints: IBoxConstraints) => ISize;
    toString: () => string;
    getHashCode: () => number;
}
export class _NavigationDestinationLayoutDelegate
    implements IMultiChildLayoutDelegate
{
    public static iconId = 1;
    public static labelId = 2;
    public readonly animation: IAnimation<number> = undefined as any;
    public constructor(props: { animation: IAnimation<number> }) {
        flutter.material._navigationDestinationLayoutDelegate(this, props);
    }
    private readonly _dart_performLayout: (size: ISize) => void =
        undefined as any;
    private readonly _dart_shouldRelayout: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_hasChild: (childId: Object) => boolean =
        undefined as any;
    private readonly _dart_layoutChild: (
        childId: Object,
        constraints: IBoxConstraints
    ) => ISize = undefined as any;
    private readonly _dart_positionChild: (
        childId: Object,
        offset: IOffset
    ) => void = undefined as any;
    private readonly _dart_getSize: (constraints: IBoxConstraints) => ISize =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public performLayout(size: ISize): void {
        return this._dart_performLayout(size);
    }
    public shouldRelayout(oldDelegate: any): boolean {
        return this._dart_shouldRelayout(oldDelegate);
    }
    public hasChild(childId: Object): boolean {
        return this._dart_hasChild(childId);
    }
    public layoutChild(childId: Object, constraints: IBoxConstraints): ISize {
        return this._dart_layoutChild(childId, constraints);
    }
    public positionChild(childId: Object, offset: IOffset): void {
        return this._dart_positionChild(childId, offset);
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
