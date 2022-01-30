import { IOffset, Offset } from "../../dart/ui/offset";
declare const flutter: {
    gestures: {
        dragDownDetails: (
            this: void,
            dragDownDetails: IDragDownDetails,
            props: {
                globalPosition: IOffset;
                localPosition?: IOffset | undefined;
            }
        ) => IDragDownDetails;
    };
};
export interface IDragDownDetails {
    globalPosition: IOffset;
    localPosition: IOffset;
    toString: () => string;
}
export class DragDownDetails {
    public readonly globalPosition: IOffset = undefined as any;
    public readonly localPosition: IOffset = undefined as any;
    public constructor(props: {
        globalPosition?: IOffset;
        localPosition?: IOffset | undefined;
    }) {
        flutter.gestures.dragDownDetails(this, {
            ...dragDownDetailsDefaultProps,
            ...props,
        });
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
const dragDownDetailsDefaultProps = {
    globalPosition: Offset.zero,
};
