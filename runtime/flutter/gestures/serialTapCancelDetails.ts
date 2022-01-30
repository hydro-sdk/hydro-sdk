declare const flutter: {
    gestures: {
        serialTapCancelDetails: (
            this: void,
            serialTapCancelDetails: ISerialTapCancelDetails,
            props: { count: number }
        ) => ISerialTapCancelDetails;
    };
};
export interface ISerialTapCancelDetails {
    count: number;
}
export class SerialTapCancelDetails {
    public readonly count: number = undefined as any;
    public constructor(props: { count?: number }) {
        flutter.gestures.serialTapCancelDetails(this, {
            ...serialTapCancelDetailsDefaultProps,
            ...props,
        });
    }
}
const serialTapCancelDetailsDefaultProps = {
    count: 1,
};
