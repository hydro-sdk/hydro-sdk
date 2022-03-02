import { IOffset } from "../../dart/ui/offset";
declare const flutter: {
    gestures: {
        forcePressDetails: (
            this: void,
            forcePressDetails: IForcePressDetails,
            props: {
                localPosition?: IOffset | undefined;
                globalPosition: IOffset;
                pressure: number;
            }
        ) => IForcePressDetails;
    };
};
export interface IForcePressDetails {
    globalPosition: IOffset;
    localPosition: IOffset;
    pressure: number;
}
export class ForcePressDetails {
    public readonly globalPosition: IOffset = undefined as any;
    public readonly localPosition: IOffset = undefined as any;
    public readonly pressure: number = undefined as any;
    public constructor(props: {
        localPosition?: IOffset | undefined;
        globalPosition: IOffset;
        pressure: number;
    }) {
        flutter.gestures.forcePressDetails(this, props);
    }
}
