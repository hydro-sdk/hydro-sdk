import { INavigatorObserver } from "./navigatorObserver";
import { IRoute } from "./route";
export interface I_NavigatorObservation {
    primaryRoute: IRoute<any>;
    secondaryRoute: IRoute<any> | undefined;
    notify: (observer: INavigatorObserver) => void;
}
