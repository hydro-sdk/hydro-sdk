import { IIterable } from "../../dart/core/iterable";
import { IOffset } from "../../dart/ui/offset";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IHitTestEntry } from "../gestures/hitTestEntry";
import { IHitTestResult } from "../gestures/hitTestResult";
declare const flutter: {
    rendering: {
        sliverHitTestResult: (
            this: void,
            sliverHitTestResult: ISliverHitTestResult
        ) => ISliverHitTestResult;
    };
};
export interface ISliverHitTestResult {
    addWithAxisOffset: (props: {
        crossAxisOffset: number;
        crossAxisPosition: number;
        hitTest: (
            result: ISliverHitTestResult,
            props: { crossAxisPosition: number; mainAxisPosition: number }
        ) => boolean;
        mainAxisOffset: number;
        mainAxisPosition: number;
        paintOffset?: IOffset | undefined;
    }) => boolean;
    add: (entry: IHitTestEntry) => void;
    pushTransform: (transform: IMatrix4) => void;
    pushOffset: (offset: IOffset) => void;
    popTransform: () => void;
    toString: () => string;
    getPath: () => IIterable<IHitTestEntry>;
    getHashCode: () => number;
}
export class SliverHitTestResult implements IHitTestResult {
    public constructor() {
        flutter.rendering.sliverHitTestResult(this);
    }
    private readonly _dart_addWithAxisOffset: (props: {
        crossAxisOffset: number;
        crossAxisPosition: number;
        hitTest: (
            result: ISliverHitTestResult,
            props: { crossAxisPosition: number; mainAxisPosition: number }
        ) => boolean;
        mainAxisOffset: number;
        mainAxisPosition: number;
        paintOffset?: IOffset | undefined;
    }) => boolean = undefined as any;
    private readonly _dart_add: (entry: IHitTestEntry) => void =
        undefined as any;
    private readonly _dart_pushTransform: (transform: IMatrix4) => void =
        undefined as any;
    private readonly _dart_pushOffset: (offset: IOffset) => void =
        undefined as any;
    private readonly _dart_popTransform: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getPath: () => IIterable<IHitTestEntry> =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public addWithAxisOffset(props: {
        crossAxisOffset: number;
        crossAxisPosition: number;
        hitTest: (
            result: ISliverHitTestResult,
            props: { crossAxisPosition: number; mainAxisPosition: number }
        ) => boolean;
        mainAxisOffset: number;
        mainAxisPosition: number;
        paintOffset?: IOffset | undefined;
    }): boolean {
        return this._dart_addWithAxisOffset(props);
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
    public getPath(): IIterable<IHitTestEntry> {
        return this._dart_getPath();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
