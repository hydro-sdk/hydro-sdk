import { IFuture } from "../../dart/async/future";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IAndroidMotionEvent } from "./androidMotionEvent";
import { IAndroidViewController } from "./androidViewController";
export interface ISurfaceAndroidViewController extends IAndroidViewController {
    getTextureId: () => number;
    setSize: (size: ISize) => IFuture<void>;
}
