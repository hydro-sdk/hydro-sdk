import { IFuture } from "../../dart/async/future";
import { IGlobalKey } from "./globalKey";
import { INavigatorState } from "./navigatorState";
export interface IPopNavigatorRouterDelegateMixin<T> {
    getNavigatorKey: () => IGlobalKey<INavigatorState> | undefined;
    popRoute: () => IFuture<boolean>;
}
