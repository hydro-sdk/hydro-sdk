import { ILocalKey } from "../foundation/localKey";
declare const flutter: {
    material: {
        mergeableMaterialItem: (
            this: void,
            mergeableMaterialItem: IMergeableMaterialItem,
            key: ILocalKey
        ) => IMergeableMaterialItem;
    };
};
export interface IMergeableMaterialItem {
    key: ILocalKey;
}
export class MergeableMaterialItem {
    public readonly key: ILocalKey = undefined as any;
    public constructor(key: ILocalKey) {
        flutter.material.mergeableMaterialItem(this, key);
    }
}
