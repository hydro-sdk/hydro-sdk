import { AxisDirection } from "../painting/axisDirection";
import { IScrollController } from "./scrollController";
declare const flutter: {
    widgets: {
        scrollableDetails: (
            this: void,
            scrollableDetails: IScrollableDetails,
            props: { controller: IScrollController; direction: AxisDirection }
        ) => IScrollableDetails;
    };
};
export interface IScrollableDetails {
    direction: AxisDirection;
    controller: IScrollController;
}
export class ScrollableDetails {
    public readonly direction: AxisDirection = undefined as any;
    public readonly controller: IScrollController = undefined as any;
    public constructor(props: {
        controller: IScrollController;
        direction: AxisDirection;
    }) {
        flutter.widgets.scrollableDetails(this, props);
    }
}
