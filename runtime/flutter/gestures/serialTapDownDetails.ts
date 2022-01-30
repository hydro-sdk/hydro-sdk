import { IOffset, Offset } from "../../dart/ui/offset";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
declare const flutter: {
    gestures: {
        serialTapDownDetails: (
            this: void,
            serialTapDownDetails: ISerialTapDownDetails,
            props: {
                buttons: number;
                count: number;
                globalPosition: IOffset;
                localPosition?: IOffset | undefined;
                kind: PointerDeviceKind;
            }
        ) => ISerialTapDownDetails;
    };
};
export interface ISerialTapDownDetails {
    globalPosition: IOffset;
    localPosition: IOffset;
    kind: PointerDeviceKind;
    buttons: number;
    count: number;
}
export class SerialTapDownDetails {
    public readonly globalPosition: IOffset = undefined as any;
    public readonly localPosition: IOffset = undefined as any;
    public readonly kind: PointerDeviceKind = undefined as any;
    public readonly buttons: number = undefined as any;
    public readonly count: number = undefined as any;
    public constructor(props: {
        buttons?: number;
        count?: number;
        globalPosition?: IOffset;
        localPosition?: IOffset | undefined;
        kind: PointerDeviceKind;
    }) {
        flutter.gestures.serialTapDownDetails(this, {
            ...serialTapDownDetailsDefaultProps,
            ...props,
        });
    }
}
const serialTapDownDetailsDefaultProps = {
    buttons: 0,
    count: 1,
    globalPosition: Offset.zero,
};
