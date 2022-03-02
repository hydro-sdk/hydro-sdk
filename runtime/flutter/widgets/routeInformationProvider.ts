import { IValueListenable } from "../foundation/valueListenable";
import { IRouteInformation } from "./routeInformation";
import { RouteInformationReportingType } from "./routeInformationReportingType";
declare const flutter: {
    widgets: {
        routeInformationProvider: (
            this: void,
            routeInformationProvider: IRouteInformationProvider
        ) => IRouteInformationProvider;
    };
};
export interface IRouteInformationProvider {
    routerReportsNewRouteInformation: (
        routeInformation: IRouteInformation,
        props: { type: RouteInformationReportingType }
    ) => void;
    getValue: () => IRouteInformation;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class RouteInformationProvider
    implements IValueListenable<IRouteInformation>
{
    public constructor() {
        flutter.widgets.routeInformationProvider(this);
    }
    private readonly _dart_routerReportsNewRouteInformation: (
        routeInformation: IRouteInformation,
        props: { type: RouteInformationReportingType }
    ) => void = undefined as any;
    private readonly _dart_getValue: () => IRouteInformation = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public routerReportsNewRouteInformation(
        routeInformation: IRouteInformation,
        props: { type: RouteInformationReportingType }
    ): void {
        return this._dart_routerReportsNewRouteInformation(
            routeInformation,
            props
        );
    }
    public getValue(): IRouteInformation {
        return this._dart_getValue();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
