import { IFuture } from "../../dart/async/future";
import { SystemSoundType } from "./systemSoundType";
declare const flutter: {
    services: {
        systemSoundPlay: (type: SystemSoundType) => IFuture<void>;
    };
};
export interface ISystemSound {}
export class SystemSound {
    public static play(type: SystemSoundType): IFuture<void> {
        return flutter.services.systemSoundPlay(type);
    }
}
