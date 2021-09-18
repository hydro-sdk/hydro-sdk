import { IFlutterView } from "./flutterView";
import { IPlatformDispatcher } from "./platformDispatcher";
import { IRect } from "./rect";
import { IScene } from "./scene";
import { ISize } from "./size";
import { IViewConfiguration } from "./viewConfiguration";
import { IWindowPadding } from "./windowPadding";
export interface IFlutterWindow extends IFlutterView {
    platformDispatcher: IPlatformDispatcher;
    getViewConfiguration: () => IViewConfiguration;
}
