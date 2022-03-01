
import { IRoute } from "./route";
import { INavigatorObserver } from "./navigatorObserver";
export interface I_NavigatorObservation


{
primaryRoute: IRoute<any>;
secondaryRoute: IRoute<any> | undefined;
notify: (observer: INavigatorObserver) => void;
}