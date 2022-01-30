import { IIterable } from "../../dart/core/iterable";
import { IOffset } from "../../dart/ui/offset";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IHitTestEntry } from "./hitTestEntry";
declare const flutter: {
    gestures: {
        hitTestResult: (
            this: void,
            hitTestResult: IHitTestResult
        ) => IHitTestResult;
    };
};
export interface IHitTestResult {
    getPath: () => IIterable<IHitTestEntry>;
    add: (entry: IHitTestEntry) => void;
    pushTransform: (transform: IMatrix4) => void;
    pushOffset: (offset: IOffset) => void;
    popTransform: () => void;
    toString: () => string;
}
export class HitTestResult {
    public constructor() {
        flutter.gestures.hitTestResult(this);
    }
    private readonly _dart_getPath: () => IIterable<IHitTestEntry> =
        undefined as any;
    private readonly _dart_add: (entry: IHitTestEntry) => void =
        undefined as any;
    private readonly _dart_pushTransform: (transform: IMatrix4) => void =
        undefined as any;
    private readonly _dart_pushOffset: (offset: IOffset) => void =
        undefined as any;
    private readonly _dart_popTransform: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getPath(): IIterable<IHitTestEntry> {
        return this._dart_getPath();
    }
    public add(entry: IHitTestEntry): void {
        return this._dart_add(entry);
    }
    public pushTransform(transform: IMatrix4): void {
        return this._dart_pushTransform(transform);
    }
    public pushOffset(offset: IOffset): void {
        return this._dart_pushOffset(offset);
    }
    public popTransform(): void {
        return this._dart_popTransform();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
