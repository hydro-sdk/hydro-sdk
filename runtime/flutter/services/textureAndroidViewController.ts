import { IFuture } from "../../dart/async/future";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IAndroidMotionEvent } from "./androidMotionEvent";
import { IAndroidViewController } from "./androidViewController";
export interface ITextureAndroidViewController extends IAndroidViewController {
    getTextureId: () => number | undefined;
    setSize: (size: ISize) => IFuture<void>;
    create: () => IFuture<void>;
}
