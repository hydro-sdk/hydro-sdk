import { IFlutterView } from "./flutterView";
import { IPlatformDispatcher } from "./platformDispatcher";
import { IViewConfiguration } from "./viewConfiguration";
export interface IFlutterWindow extends IFlutterView {
    platformDispatcher: IPlatformDispatcher;
    getViewConfiguration: () => IViewConfiguration;
}
