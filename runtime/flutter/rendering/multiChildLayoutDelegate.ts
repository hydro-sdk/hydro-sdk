import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { IListenable } from "../foundation/listenable";
import { IBoxConstraints } from "./boxConstraints";
declare const flutter: {
    rendering: {
        multiChildLayoutDelegate: (
            this: void,
            multiChildLayoutDelegate: IMultiChildLayoutDelegate,
            props?: { relayout?: IListenable | undefined }
        ) => IMultiChildLayoutDelegate;
    };
};
export interface IMultiChildLayoutDelegate {
    hasChild: (childId: Object) => boolean;
    layoutChild: (childId: Object, constraints: IBoxConstraints) => ISize;
    positionChild: (childId: Object, offset: IOffset) => void;
    getSize: (constraints: IBoxConstraints) => ISize;
    performLayout: (size: ISize) => void;
    shouldRelayout: (oldDelegate: unknown) => boolean;
    toString: () => string;
}
export class MultiChildLayoutDelegate {
    public constructor(props?: { relayout?: IListenable | undefined }) {
        flutter.rendering.multiChildLayoutDelegate(this, props);
    }
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
    private readonly _dart_performLayout: (size: ISize) => void =
        undefined as any;
    private readonly _dart_shouldRelayout: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
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
    public performLayout(size: ISize): void {
        return this._dart_performLayout(size);
    }
    public shouldRelayout(oldDelegate: any): boolean {
        return this._dart_shouldRelayout(oldDelegate);
    }
    public toString(): string {
        return this._dart_toString();
    }
}
