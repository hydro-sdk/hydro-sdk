declare const flutter: {
    widgets: {
        routeInformation: (
            this: void,
            routeInformation: IRouteInformation,
            props?: {
                location?: string | undefined;
                state?: Object | undefined;
            }
        ) => IRouteInformation;
    };
};
export interface IRouteInformation {
    location: string | undefined;
    state: Object | undefined;
}
export class RouteInformation {
    public readonly location: string | undefined = undefined as any;
    public readonly state: Object | undefined = undefined as any;
    public constructor(props?: {
        location?: string | undefined;
        state?: Object | undefined;
    }) {
        flutter.widgets.routeInformation(this, props);
    }
}
