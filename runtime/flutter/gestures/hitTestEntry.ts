import { IMatrix4 } from "../../vector_math/matrix4";
import { IHitTestTarget } from "./hitTestTarget";
declare const flutter: {
    gestures: {
        hitTestEntry: (
            this: void,
            hitTestEntry: IHitTestEntry,
            target: IHitTestTarget
        ) => IHitTestEntry;
    };
};
export interface IHitTestEntry {
    target: IHitTestTarget;
    toString: () => string;
    getTransform: () => IMatrix4 | undefined;
}
export class HitTestEntry {
    public readonly target: IHitTestTarget = undefined as any;
    public constructor(target: IHitTestTarget) {
        flutter.gestures.hitTestEntry(this, target);
    }
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getTransform: () => IMatrix4 | undefined =
        undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
    public getTransform(): IMatrix4 | undefined {
        return this._dart_getTransform();
    }
}
