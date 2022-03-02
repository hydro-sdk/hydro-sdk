import { ILocalKey } from "../foundation/localKey";
declare const flutter: {
    widgets: {
        uniqueKey: (this: void, uniqueKey: IUniqueKey) => IUniqueKey;
    };
};
export interface IUniqueKey {
    toString: () => string;
    getHashCode: () => number;
}
export class UniqueKey implements ILocalKey {
    public constructor() {
        flutter.widgets.uniqueKey(this);
    }
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
