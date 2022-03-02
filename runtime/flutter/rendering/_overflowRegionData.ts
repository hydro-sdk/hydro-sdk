import { IOffset, Offset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { _OverflowSide } from "./_overflowSide";
declare const flutter: {
    rendering: {
        _overflowRegionData: (
            this: void,
            _overflowRegionData: I_OverflowRegionData,
            props: {
                label: string;
                labelOffset: IOffset;
                rotation: number;
                rect: IRect;
                side: _OverflowSide;
            }
        ) => I_OverflowRegionData;
    };
};
export interface I_OverflowRegionData {
    rect: IRect;
    label: string;
    labelOffset: IOffset;
    rotation: number;
    side: _OverflowSide;
}
export class _OverflowRegionData {
    public readonly rect: IRect = undefined as any;
    public readonly label: string = undefined as any;
    public readonly labelOffset: IOffset = undefined as any;
    public readonly rotation: number = undefined as any;
    public readonly side: _OverflowSide = undefined as any;
    public constructor(props: {
        label?: string;
        labelOffset?: IOffset;
        rotation?: number;
        rect: IRect;
        side: _OverflowSide;
    }) {
        flutter.rendering._overflowRegionData(this, {
            ..._overflowRegionDataDefaultProps,
            ...props,
        });
    }
}
const _overflowRegionDataDefaultProps = {
    label: "",
    labelOffset: Offset.zero,
    rotation: 0.0,
};
