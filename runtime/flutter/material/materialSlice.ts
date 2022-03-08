import { IColor } from "../../dart/ui/color";
import { ILocalKey } from "../foundation/localKey";
import { IWidget } from "../widgets/widget";
import { IMergeableMaterialItem } from "./mergeableMaterialItem";
declare const flutter: {
    material: {
        materialSlice: (
            this: void,
            materialSlice: IMaterialSlice,
            props: {
                color?: IColor | undefined;
                child: IWidget;
                key: ILocalKey;
            }
        ) => IMaterialSlice;
    };
};
export interface IMaterialSlice {
    child: IWidget;
    color: IColor | undefined;
    key: ILocalKey;
    toString: () => string;
    getHashCode: () => number;
}
export class MaterialSlice implements IMergeableMaterialItem {
    public readonly child: IWidget = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly key: ILocalKey = undefined as any;
    public constructor(props: {
        color?: IColor | undefined;
        child: IWidget;
        key: ILocalKey;
    }) {
        flutter.material.materialSlice(this, props);
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
