import { IDuration } from "../../dart/core/duration";
import { IOffset, Offset } from "../../dart/ui/offset";
declare const flutter: {
    gestures: {
        dragUpdateDetails: (
            this: void,
            dragUpdateDetails: IDragUpdateDetails,
            props: {
                delta: IOffset;
                localPosition?: IOffset | undefined;
                primaryDelta?: number | undefined;
                sourceTimeStamp?: IDuration | undefined;
                globalPosition: IOffset;
            }
        ) => IDragUpdateDetails;
    };
};
export interface IDragUpdateDetails {
    sourceTimeStamp: IDuration | undefined;
    delta: IOffset;
    primaryDelta: number | undefined;
    globalPosition: IOffset;
    localPosition: IOffset;
    toString: () => string;
}
export class DragUpdateDetails {
    public readonly sourceTimeStamp: IDuration | undefined = undefined as any;
    public readonly delta: IOffset = undefined as any;
    public readonly primaryDelta: number | undefined = undefined as any;
    public readonly globalPosition: IOffset = undefined as any;
    public readonly localPosition: IOffset = undefined as any;
    public constructor(props: {
        delta?: IOffset;
        localPosition?: IOffset | undefined;
        primaryDelta?: number | undefined;
        sourceTimeStamp?: IDuration | undefined;
        globalPosition: IOffset;
    }) {
        flutter.gestures.dragUpdateDetails(this, {
            ...dragUpdateDetailsDefaultProps,
            ...props,
        });
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
const dragUpdateDetailsDefaultProps = {
    delta: Offset.zero,
};
