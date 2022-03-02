declare const flutter: {
    services: {
        clipboardData: (
            this: void,
            clipboardData: IClipboardData,
            props?: { text?: string | undefined }
        ) => IClipboardData;
    };
};
export interface IClipboardData {
    text: string | undefined;
}
export class ClipboardData {
    public readonly text: string | undefined = undefined as any;
    public constructor(props?: { text?: string | undefined }) {
        flutter.services.clipboardData(this, props);
    }
}
