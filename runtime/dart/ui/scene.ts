import { IFuture } from "../async/future";
import { IImage } from "./image";
declare const dart: {
    ui: {};
};
export interface IScene {
    toImage: (width: number, height: number) => IFuture<IImage>;
    dispose: () => void;
}
export class Scene {
    private readonly _dart_toImage: (
        width: number,
        height: number
    ) => IFuture<IImage> = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    public toImage(width: number, height: number): IFuture<IImage> {
        return this._dart_toImage(width, height);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
}
