import { IOffset, Offset } from "../../dart/ui/offset";
declare const flutter: {
    gestures: {
        longPressStartDetails: (
            this: void,
            longPressStartDetails: ILongPressStartDetails,
            props: {
                globalPosition: IOffset;
                localPosition?: IOffset | undefined;
            }
        ) => ILongPressStartDetails;
    };
};
export interface ILongPressStartDetails {
    globalPosition: IOffset;
    localPosition: IOffset;
}
export class LongPressStartDetails {
    public readonly globalPosition: IOffset = undefined as any;
    public readonly localPosition: IOffset = undefined as any;
    public constructor(props: {
        globalPosition?: IOffset;
        localPosition?: IOffset | undefined;
    }) {
        flutter.gestures.longPressStartDetails(this, {
            ...longPressStartDetailsDefaultProps,
            ...props,
        });
    }
}
const longPressStartDetailsDefaultProps = {
    globalPosition: Offset.zero,
};
