declare const flutter: {
    widgets: {
        routeAware: (this: void, routeAware: IRouteAware) => IRouteAware;
    };
};
export interface IRouteAware {
    didPopNext: () => void;
    didPush: () => void;
    didPop: () => void;
    didPushNext: () => void;
}
export class RouteAware {
    public constructor() {
        flutter.widgets.routeAware(this);
    }
    private readonly _dart_didPopNext: () => void = undefined as any;
    private readonly _dart_didPush: () => void = undefined as any;
    private readonly _dart_didPop: () => void = undefined as any;
    private readonly _dart_didPushNext: () => void = undefined as any;
    public didPopNext(): void {
        return this._dart_didPopNext();
    }
    public didPush(): void {
        return this._dart_didPush();
    }
    public didPop(): void {
        return this._dart_didPop();
    }
    public didPushNext(): void {
        return this._dart_didPushNext();
    }
}
