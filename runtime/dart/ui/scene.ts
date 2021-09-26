import { IFuture } from "../async/future";
import { IImage } from "./image";
export interface IScene {
    toImage: (width: number, height: number) => IFuture<IImage>;
    dispose: () => void;
}
