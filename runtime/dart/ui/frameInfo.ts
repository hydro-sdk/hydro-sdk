import { IDuration } from "../core/duration";
import { IImage } from "./image";
declare const dart: {
    ui: {};
};
export interface IFrameInfo {
    duration: IDuration;
    image: IImage;
}
export class FrameInfo {
    public readonly duration: IDuration = undefined as any;
    public readonly image: IImage = undefined as any;
}
