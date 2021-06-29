import { IIterator } from "../core/iterator";
import { IPathMetric } from "./pathMetric";
declare const dart: {
    ui: {};
};
export interface IPathMetricIterator {
    getCurrent: () => IPathMetric;
    moveNext: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class PathMetricIterator implements IIterator<IPathMetric> {
    private readonly _dart_getCurrent: () => IPathMetric = undefined as any;
    private readonly _dart_moveNext: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getCurrent(): IPathMetric {
        return this._dart_getCurrent();
    }
    public moveNext(): boolean {
        return this._dart_moveNext();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
