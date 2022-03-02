import { IFuture } from "../../dart/async/future";
declare const flutter: {
    services: {
        systemNavigatorPop: (props?: {
            animated?: boolean | undefined;
        }) => IFuture<void>;
        systemNavigatorSelectSingleEntryHistory: () => IFuture<void>;
        systemNavigatorSelectMultiEntryHistory: () => IFuture<void>;
        systemNavigatorRouteInformationUpdated: (props: {
            replace: boolean;
            state?: Object | undefined;
            location: string;
        }) => IFuture<void>;
        systemNavigatorRouteUpdated: (props?: {
            previousRouteName?: string | undefined;
            routeName?: string | undefined;
        }) => IFuture<void>;
    };
};
export interface ISystemNavigator {}
export class SystemNavigator {
    public static pop(props?: {
        animated?: boolean | undefined;
    }): IFuture<void> {
        return flutter.services.systemNavigatorPop(props);
    }
    public static selectSingleEntryHistory(): IFuture<void> {
        return flutter.services.systemNavigatorSelectSingleEntryHistory();
    }
    public static selectMultiEntryHistory(): IFuture<void> {
        return flutter.services.systemNavigatorSelectMultiEntryHistory();
    }
    public static routeInformationUpdated(props: {
        replace?: boolean;
        state?: Object | undefined;
        location: string;
    }): IFuture<void> {
        return flutter.services.systemNavigatorRouteInformationUpdated({
            ...routeInformationUpdatedDefaultProps,
            ...props,
        });
    }
    public static routeUpdated(props?: {
        previousRouteName?: string | undefined;
        routeName?: string | undefined;
    }): IFuture<void> {
        return flutter.services.systemNavigatorRouteUpdated(props);
    }
}
const routeInformationUpdatedDefaultProps = {
    replace: false,
};
