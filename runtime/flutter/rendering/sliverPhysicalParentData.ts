import { IOffset } from "../../dart/ui/offset";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IParentData } from "./parentData";
declare const flutter: {
    rendering: {
        sliverPhysicalParentData: (
            this: void,
            sliverPhysicalParentData: ISliverPhysicalParentData
        ) => ISliverPhysicalParentData;
    };
};
export interface ISliverPhysicalParentData {
    paintOffset: IOffset;
    applyPaintTransform: (transform: IMatrix4) => void;
    toString: () => string;
    detach: () => void;
    getHashCode: () => number;
}
export class SliverPhysicalParentData implements IParentData {
    public readonly paintOffset: IOffset = undefined as any;
    public constructor() {
        flutter.rendering.sliverPhysicalParentData(this);
    }
    private readonly _dart_applyPaintTransform: (transform: IMatrix4) => void =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public applyPaintTransform(transform: IMatrix4): void {
        return this._dart_applyPaintTransform(transform);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public detach(): void {
        return this._dart_detach();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
