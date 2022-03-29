import { IFuture } from "../../dart/async/future";
import { ILocalHistoryEntry } from "./localHistoryEntry";
import { RoutePopDisposition } from "./routePopDisposition";
export interface ILocalHistoryRoute<T> {
    addLocalHistoryEntry: (entry: ILocalHistoryEntry) => void;
    removeLocalHistoryEntry: (entry: ILocalHistoryEntry) => void;
    willPop: () => IFuture<RoutePopDisposition>;
    didPop: (result?: T | undefined) => boolean;
    getWillHandlePopInternally: () => boolean;
}
