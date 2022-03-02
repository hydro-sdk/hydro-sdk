import { IParentData } from "./parentData";
declare const flutter: {
    rendering: {
        sliverLogicalParentData: (
            this: void,
            sliverLogicalParentData: ISliverLogicalParentData
        ) => ISliverLogicalParentData;
    };
};
export interface ISliverLogicalParentData {
    layoutOffset: number | undefined;
    toString: () => string;
    detach: () => void;
    getHashCode: () => number;
}
export class SliverLogicalParentData implements IParentData {
    public readonly layoutOffset: number | undefined = undefined as any;
    public constructor() {
        flutter.rendering.sliverLogicalParentData(this);
    }
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
