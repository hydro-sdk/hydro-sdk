import { IFocusNode } from "./focusNode";
import { IFocusOrder } from "./focusOrder";
declare const flutter: {
    widgets: {
        _orderedFocusInfo: (
            this: void,
            _orderedFocusInfo: I_OrderedFocusInfo,
            props: { node: IFocusNode; order: IFocusOrder }
        ) => I_OrderedFocusInfo;
    };
};
export interface I_OrderedFocusInfo {
    node: IFocusNode;
    order: IFocusOrder;
}
export class _OrderedFocusInfo {
    public readonly node: IFocusNode = undefined as any;
    public readonly order: IFocusOrder = undefined as any;
    public constructor(props: { node: IFocusNode; order: IFocusOrder }) {
        flutter.widgets._orderedFocusInfo(this, props);
    }
}
