import { IOffset, Offset } from "../../dart/ui/offset";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
declare const flutter: {
    gestures: {
        serialTapUpDetails: (
            this: void,
            serialTapUpDetails: ISerialTapUpDetails,
            props: {
                count: number;
                globalPosition: IOffset;
                kind?: PointerDeviceKind | undefined;
                localPosition?: IOffset | undefined;
            }
        ) => ISerialTapUpDetails;
    };
};
export interface ISerialTapUpDetails {
    globalPosition: IOffset;
    localPosition: IOffset;
    kind: PointerDeviceKind | undefined;
    count: number;
}
export class SerialTapUpDetails {
    public readonly globalPosition: IOffset = undefined as any;
    public readonly localPosition: IOffset = undefined as any;
    public readonly kind: PointerDeviceKind | undefined = undefined as any;
    public readonly count: number = undefined as any;
    public constructor(props: {
        count?: number;
        globalPosition?: IOffset;
        kind?: PointerDeviceKind | undefined;
        localPosition?: IOffset | undefined;
    }) {
        flutter.gestures.serialTapUpDetails(this, {
            ...serialTapUpDetailsDefaultProps,
            ...props,
        });
    }
}
const serialTapUpDetailsDefaultProps = {
    count: 1,
    globalPosition: Offset.zero,
};
