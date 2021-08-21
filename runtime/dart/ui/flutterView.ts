import { IPlatformDispatcher } from "./platformDispatcher";
import { IRect } from "./rect";
import { IScene } from "./scene";
import { ISize } from "./size";
import { IViewConfiguration } from "./viewConfiguration";
import { IWindowPadding } from "./windowPadding";
export interface IFlutterView {
    getPlatformDispatcher: () => IPlatformDispatcher;
    getViewConfiguration: () => IViewConfiguration;
    getDevicePixelRatio: () => number;
    getPhysicalGeometry: () => IRect;
    getPhysicalSize: () => ISize;
    getViewInsets: () => IWindowPadding;
    getViewPadding: () => IWindowPadding;
    getSystemGestureInsets: () => IWindowPadding;
    getPadding: () => IWindowPadding;
    render: (scene: IScene) => void;
}
