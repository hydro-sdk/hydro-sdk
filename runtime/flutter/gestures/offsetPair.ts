import { IOffset } from "../../dart/ui/offset";
import { IPointerEvent } from "./pointerEvent";
declare const flutter: {
    gestures: {
        offsetPair: (
            this: void,
            offsetPair: IOffsetPair,
            props: { global: IOffset; local: IOffset }
        ) => IOffsetPair;
        offsetPairFromEventPosition: (event: IPointerEvent) => IOffsetPair;
        offsetPairFromEventDelta: (event: IPointerEvent) => IOffsetPair;
    };
};
export interface IOffsetPair {
    local: IOffset;
    global: IOffset;
    toString: () => string;
}
export class OffsetPair {
    public static zero = new OffsetPair();
    public readonly local: IOffset = undefined as any;
    public readonly global: IOffset = undefined as any;
    public constructor(props: { global: IOffset; local: IOffset }) {
        flutter.gestures.offsetPair(this, props);
    }
    public static fromEventPosition(event: IPointerEvent): IOffsetPair {
        return flutter.gestures.offsetPairFromEventPosition(event);
    }
    public static fromEventDelta(event: IPointerEvent): IOffsetPair {
        return flutter.gestures.offsetPairFromEventDelta(event);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
