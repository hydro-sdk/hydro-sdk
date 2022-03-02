import { I_NavigatorObservation } from "./_navigatorObservation";
import { INavigatorObserver } from "./navigatorObserver";
import { IRoute } from "./route";
declare const flutter: {
    widgets: {
        _navigatorReplaceObservation: (
            this: void,
            _navigatorReplaceObservation: I_NavigatorReplaceObservation,
            primaryRoute: IRoute<any>,
            secondaryRoute?: IRoute<any> | undefined
        ) => I_NavigatorReplaceObservation;
    };
};
export interface I_NavigatorReplaceObservation {
    primaryRoute: IRoute<any>;
    secondaryRoute: IRoute<any> | undefined;
    notify: (observer: INavigatorObserver) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _NavigatorReplaceObservation implements I_NavigatorObservation {
    public readonly primaryRoute: IRoute<any> = undefined as any;
    public readonly secondaryRoute: IRoute<any> | undefined = undefined as any;
    public constructor(
        primaryRoute: IRoute<any>,
        secondaryRoute?: IRoute<any> | undefined
    ) {
        flutter.widgets._navigatorReplaceObservation(
            this,
            primaryRoute,
            secondaryRoute
        );
    }
    private readonly _dart_notify: (observer: INavigatorObserver) => void =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public notify(observer: INavigatorObserver): void {
        return this._dart_notify(observer);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
