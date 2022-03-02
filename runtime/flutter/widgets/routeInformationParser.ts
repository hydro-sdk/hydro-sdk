import { IFuture } from "../../dart/async/future";
import { IRouteInformation } from "./routeInformation";
declare const flutter: {
    widgets: {
        routeInformationParser: <T>(
            this: void,
            routeInformationParser: IRouteInformationParser<T>
        ) => IRouteInformationParser<T>;
    };
};
export interface IRouteInformationParser<T> {
    parseRouteInformation: (routeInformation: IRouteInformation) => IFuture<T>;
    restoreRouteInformation: (
        configuration: T
    ) => IRouteInformation | undefined;
}
export class RouteInformationParser<T> {
    public constructor() {
        flutter.widgets.routeInformationParser(this);
    }
    private readonly _dart_parseRouteInformation: (
        routeInformation: IRouteInformation
    ) => IFuture<T> = undefined as any;
    private readonly _dart_restoreRouteInformation: (
        configuration: T
    ) => IRouteInformation | undefined = undefined as any;
    public parseRouteInformation(
        routeInformation: IRouteInformation
    ): IFuture<T> {
        return this._dart_parseRouteInformation(routeInformation);
    }
    public restoreRouteInformation(
        configuration: T
    ): IRouteInformation | undefined {
        return this._dart_restoreRouteInformation(configuration);
    }
}
