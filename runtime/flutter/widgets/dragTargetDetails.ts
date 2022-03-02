import { IOffset } from "../../dart/ui/offset";
declare const flutter: {
    widgets: {
        dragTargetDetails: <T>(
            this: void,
            dragTargetDetails: IDragTargetDetails<T>,
            props: { data: T; offset: IOffset }
        ) => IDragTargetDetails<T>;
    };
};
export interface IDragTargetDetails<T> {
    offset: IOffset;
}
export class DragTargetDetails<T> {
    public readonly offset: IOffset = undefined as any;
    public constructor(props: { data: T; offset: IOffset }) {
        flutter.widgets.dragTargetDetails(this, props);
    }
}
