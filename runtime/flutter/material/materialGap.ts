import { ILocalKey } from "../foundation/localKey";
import { IMergeableMaterialItem } from "./mergeableMaterialItem";
declare const flutter: {
    material: {
        materialGap: (
            this: void,
            materialGap: IMaterialGap,
            props: { size: number; key: ILocalKey }
        ) => IMaterialGap;
    };
};
export interface IMaterialGap {
    size: number;
    key: ILocalKey;
    toString: () => string;
    getHashCode: () => number;
}
export class MaterialGap implements IMergeableMaterialItem {
    public readonly size: number = undefined as any;
    public readonly key: ILocalKey = undefined as any;
    public constructor(props: { size?: number; key: ILocalKey }) {
        flutter.material.materialGap(this, {
            ...materialGapDefaultProps,
            ...props,
        });
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
const materialGapDefaultProps = {
    size: 16.0,
};
