import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
declare const flutter: {
    material: {
        _chipSizes: (
            this: void,
            _chipSizes: I_ChipSizes,
            props: {
                avatar: ISize;
                content: number;
                deleteIcon: ISize;
                densityAdjustment: IOffset;
                label: ISize;
                overall: ISize;
                size: ISize;
            }
        ) => I_ChipSizes;
    };
};
export interface I_ChipSizes {
    size: ISize;
    overall: ISize;
    content: number;
    avatar: ISize;
    label: ISize;
    deleteIcon: ISize;
    densityAdjustment: IOffset;
}
export class _ChipSizes {
    public readonly size: ISize = undefined as any;
    public readonly overall: ISize = undefined as any;
    public readonly content: number = undefined as any;
    public readonly avatar: ISize = undefined as any;
    public readonly label: ISize = undefined as any;
    public readonly deleteIcon: ISize = undefined as any;
    public readonly densityAdjustment: IOffset = undefined as any;
    public constructor(props: {
        avatar: ISize;
        content: number;
        deleteIcon: ISize;
        densityAdjustment: IOffset;
        label: ISize;
        overall: ISize;
        size: ISize;
    }) {
        flutter.material._chipSizes(this, props);
    }
}
