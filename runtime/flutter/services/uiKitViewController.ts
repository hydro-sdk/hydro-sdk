import { IFuture } from "../../dart/async/future";
import { TextDirection } from "../../dart/ui/textDirection";
export interface IUiKitViewController {
    id: number;
    setLayoutDirection: (layoutDirection: TextDirection) => IFuture<void>;
    acceptGesture: () => IFuture<void>;
    rejectGesture: () => IFuture<void>;
    dispose: () => IFuture<void>;
}
