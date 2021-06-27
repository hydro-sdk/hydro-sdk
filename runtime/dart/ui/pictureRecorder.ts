import { IPicture } from "./picture";
declare const dart: {
    ui: {
        pictureRecorder: (
            this: void,
            pictureRecorder: IPictureRecorder
        ) => IPictureRecorder;
    };
};
export interface IPictureRecorder {
    getIsRecording: () => boolean;
    endRecording: () => IPicture;
}
export class PictureRecorder {
    public constructor() {
        dart.ui.pictureRecorder(this);
    }
    private readonly _dart_getIsRecording: () => boolean = undefined as any;
    private readonly _dart_endRecording: () => IPicture = undefined as any;
    public getIsRecording(): boolean {
        return this._dart_getIsRecording();
    }
    public endRecording(): IPicture {
        return this._dart_endRecording();
    }
}
