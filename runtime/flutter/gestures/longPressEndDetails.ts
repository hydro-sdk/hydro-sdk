import { IOffset, Offset } from "../../dart/ui/offset";
import { IVelocity, Velocity } from "./velocity";
declare const flutter: {
    gestures: {
        longPressEndDetails: (
            this: void,
            longPressEndDetails: ILongPressEndDetails,
            props: {
                globalPosition: IOffset;
                localPosition?: IOffset | undefined;
                velocity: IVelocity;
            }
        ) => ILongPressEndDetails;
    };
};
export interface ILongPressEndDetails {
    globalPosition: IOffset;
    localPosition: IOffset;
    velocity: IVelocity;
}
export class LongPressEndDetails {
    public readonly globalPosition: IOffset = undefined as any;
    public readonly localPosition: IOffset = undefined as any;
    public readonly velocity: IVelocity = undefined as any;
    public constructor(props: {
        globalPosition?: IOffset;
        localPosition?: IOffset | undefined;
        velocity?: IVelocity;
    }) {
        flutter.gestures.longPressEndDetails(this, {
            ...longPressEndDetailsDefaultProps,
            ...props,
        });
    }
}
const longPressEndDetailsDefaultProps = {
    globalPosition: Offset.zero,
    velocity: Velocity.zero,
};
