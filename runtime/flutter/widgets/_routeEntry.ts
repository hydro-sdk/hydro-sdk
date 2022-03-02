import { I_RestorationInformation } from "./_restorationInformation";
import { _RouteLifecycle } from "./_routeLifecycle";
import { INavigatorState } from "./navigatorState";
import { IPage } from "./page";
import { IRoute } from "./route";
import { IRouteTransitionRecord } from "./routeTransitionRecord";
declare const flutter: {
    widgets: {
        _routeEntry: (
            this: void,
            _routeEntry: I_RouteEntry,
            route: IRoute<any>,
            props: {
                restorationInformation?: I_RestorationInformation | undefined;
                initialState: _RouteLifecycle;
            }
        ) => I_RouteEntry;
        _routeEntryIsPresentPredicate: (entry: I_RouteEntry) => boolean;
        _routeEntrySuitableForTransitionAnimationPredicate: (
            entry: I_RouteEntry
        ) => boolean;
        _routeEntryWillBePresentPredicate: (entry: I_RouteEntry) => boolean;
        _routeEntryIsRoutePredicate: (
            route: IRoute<any>
        ) => (entry: I_RouteEntry) => boolean;
    };
};
export interface I_RouteEntry {
    route: IRoute<any>;
    restorationInformation: I_RestorationInformation | undefined;
    currentState: _RouteLifecycle;
    lastAnnouncedPreviousRoute: IRoute<any> | undefined;
    lastAnnouncedPoppedNextRoute: IRoute<any>;
    lastAnnouncedNextRoute: IRoute<any> | undefined;
    doingPop: boolean;
    getRestorationId: () => string | undefined;
    getHasPage: () => boolean;
    canUpdateFrom: (page: IPage<any>) => boolean;
    handleAdd: (props: {
        navigator: INavigatorState;
        previousPresent?: IRoute<any> | undefined;
    }) => void;
    handlePush: (props: {
        isNewFirst: boolean;
        navigator: INavigatorState;
        previous?: IRoute<any> | undefined;
        previousPresent?: IRoute<any> | undefined;
    }) => void;
    handleDidPopNext: (poppedRoute: IRoute<any>) => void;
    handlePop: (props: {
        navigator: INavigatorState;
        previousPresent?: IRoute<any> | undefined;
    }) => void;
    handleRemoval: (props: {
        navigator: INavigatorState;
        previousPresent?: IRoute<any> | undefined;
    }) => void;
    didAdd: (props: {
        isNewFirst: boolean;
        navigator: INavigatorState;
    }) => void;
    pop: <T>(result?: T | undefined) => void;
    remove: (props: { isReplaced: boolean }) => void;
    complete: <T>(result: T, props: { isReplaced: boolean }) => void;
    finalize: () => void;
    dispose: () => void;
    getWillBePresent: () => boolean;
    getIsPresent: () => boolean;
    getIsPresentForRestoration: () => boolean;
    getSuitableForAnnouncement: () => boolean;
    getSuitableForTransitionAnimation: () => boolean;
    shouldAnnounceChangeToNext: (
        nextRoute?: IRoute<any> | undefined
    ) => boolean;
    getIsWaitingForEnteringDecision: () => boolean;
    getIsWaitingForExitingDecision: () => boolean;
    markNeedsExitingDecision: () => void;
    markForPush: () => void;
    markForAdd: () => void;
    markForPop: (result: any) => void;
    markForComplete: (result: any) => void;
    markForRemove: () => void;
    getRestorationEnabled: () => boolean;
    setRestorationEnabled: (value: boolean) => void;
    getRoute: () => IRoute<any>;
    toString: () => string;
    getHashCode: () => number;
}
export class _RouteEntry implements IRouteTransitionRecord {
    public readonly route: IRoute<any> = undefined as any;
    public readonly restorationInformation:
        | I_RestorationInformation
        | undefined = undefined as any;
    public readonly currentState: _RouteLifecycle = undefined as any;
    public readonly lastAnnouncedPreviousRoute: IRoute<any> | undefined =
        undefined as any;
    public readonly lastAnnouncedPoppedNextRoute: IRoute<any> =
        undefined as any;
    public readonly lastAnnouncedNextRoute: IRoute<any> | undefined =
        undefined as any;
    public readonly doingPop: boolean = undefined as any;
    public constructor(
        route: IRoute<any>,
        props: {
            restorationInformation?: I_RestorationInformation | undefined;
            initialState: _RouteLifecycle;
        }
    ) {
        flutter.widgets._routeEntry(this, route, props);
    }
    public static isPresentPredicate(entry: I_RouteEntry): boolean {
        return flutter.widgets._routeEntryIsPresentPredicate(entry);
    }
    public static suitableForTransitionAnimationPredicate(
        entry: I_RouteEntry
    ): boolean {
        return flutter.widgets._routeEntrySuitableForTransitionAnimationPredicate(
            entry
        );
    }
    public static willBePresentPredicate(entry: I_RouteEntry): boolean {
        return flutter.widgets._routeEntryWillBePresentPredicate(entry);
    }
    public static isRoutePredicate(
        route: IRoute<any>
    ): (entry: I_RouteEntry) => boolean {
        return flutter.widgets._routeEntryIsRoutePredicate(route);
    }
    private readonly _dart_getRestorationId: () => string | undefined =
        undefined as any;
    private readonly _dart_getHasPage: () => boolean = undefined as any;
    private readonly _dart_canUpdateFrom: (page: IPage<any>) => boolean =
        undefined as any;
    private readonly _dart_handleAdd: (props: {
        navigator: INavigatorState;
        previousPresent?: IRoute<any> | undefined;
    }) => void = undefined as any;
    private readonly _dart_handlePush: (props: {
        isNewFirst: boolean;
        navigator: INavigatorState;
        previous?: IRoute<any> | undefined;
        previousPresent?: IRoute<any> | undefined;
    }) => void = undefined as any;
    private readonly _dart_handleDidPopNext: (
        poppedRoute: IRoute<any>
    ) => void = undefined as any;
    private readonly _dart_handlePop: (props: {
        navigator: INavigatorState;
        previousPresent?: IRoute<any> | undefined;
    }) => void = undefined as any;
    private readonly _dart_handleRemoval: (props: {
        navigator: INavigatorState;
        previousPresent?: IRoute<any> | undefined;
    }) => void = undefined as any;
    private readonly _dart_didAdd: (props: {
        isNewFirst: boolean;
        navigator: INavigatorState;
    }) => void = undefined as any;
    private readonly _dart_pop: <T>(result?: T | undefined) => void =
        undefined as any;
    private readonly _dart_remove: (props: { isReplaced: boolean }) => void =
        undefined as any;
    private readonly _dart_complete: <T>(
        result: T,
        props: { isReplaced: boolean }
    ) => void = undefined as any;
    private readonly _dart_finalize: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getWillBePresent: () => boolean = undefined as any;
    private readonly _dart_getIsPresent: () => boolean = undefined as any;
    private readonly _dart_getIsPresentForRestoration: () => boolean =
        undefined as any;
    private readonly _dart_getSuitableForAnnouncement: () => boolean =
        undefined as any;
    private readonly _dart_getSuitableForTransitionAnimation: () => boolean =
        undefined as any;
    private readonly _dart_shouldAnnounceChangeToNext: (
        nextRoute?: IRoute<any> | undefined
    ) => boolean = undefined as any;
    private readonly _dart_getIsWaitingForEnteringDecision: () => boolean =
        undefined as any;
    private readonly _dart_getIsWaitingForExitingDecision: () => boolean =
        undefined as any;
    private readonly _dart_markNeedsExitingDecision: () => void =
        undefined as any;
    private readonly _dart_markForPush: () => void = undefined as any;
    private readonly _dart_markForAdd: () => void = undefined as any;
    private readonly _dart_markForPop: (result: any) => void = undefined as any;
    private readonly _dart_markForComplete: (result: any) => void =
        undefined as any;
    private readonly _dart_markForRemove: () => void = undefined as any;
    private readonly _dart_getRestorationEnabled: () => boolean =
        undefined as any;
    private readonly _dart_setRestorationEnabled: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getRoute: () => IRoute<any> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getRestorationId(): string | undefined {
        return this._dart_getRestorationId();
    }
    public getHasPage(): boolean {
        return this._dart_getHasPage();
    }
    public canUpdateFrom(page: IPage<any>): boolean {
        return this._dart_canUpdateFrom(page);
    }
    public handleAdd(props: {
        navigator: INavigatorState;
        previousPresent?: IRoute<any> | undefined;
    }): void {
        return this._dart_handleAdd(props);
    }
    public handlePush(props: {
        isNewFirst: boolean;
        navigator: INavigatorState;
        previous?: IRoute<any> | undefined;
        previousPresent?: IRoute<any> | undefined;
    }): void {
        return this._dart_handlePush(props);
    }
    public handleDidPopNext(poppedRoute: IRoute<any>): void {
        return this._dart_handleDidPopNext(poppedRoute);
    }
    public handlePop(props: {
        navigator: INavigatorState;
        previousPresent?: IRoute<any> | undefined;
    }): void {
        return this._dart_handlePop(props);
    }
    public handleRemoval(props: {
        navigator: INavigatorState;
        previousPresent?: IRoute<any> | undefined;
    }): void {
        return this._dart_handleRemoval(props);
    }
    public didAdd(props: {
        isNewFirst: boolean;
        navigator: INavigatorState;
    }): void {
        return this._dart_didAdd(props);
    }
    public pop<T>(result?: T | undefined): void {
        return this._dart_pop(result);
    }
    public remove(props: { isReplaced?: boolean }): void {
        return this._dart_remove({
            ...removeDefaultProps,
            ...props,
        });
    }
    public complete<T>(result: T, props: { isReplaced?: boolean }): void {
        return this._dart_complete(result, {
            ...completeDefaultProps,
            ...props,
        });
    }
    public finalize(): void {
        return this._dart_finalize();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getWillBePresent(): boolean {
        return this._dart_getWillBePresent();
    }
    public getIsPresent(): boolean {
        return this._dart_getIsPresent();
    }
    public getIsPresentForRestoration(): boolean {
        return this._dart_getIsPresentForRestoration();
    }
    public getSuitableForAnnouncement(): boolean {
        return this._dart_getSuitableForAnnouncement();
    }
    public getSuitableForTransitionAnimation(): boolean {
        return this._dart_getSuitableForTransitionAnimation();
    }
    public shouldAnnounceChangeToNext(
        nextRoute?: IRoute<any> | undefined
    ): boolean {
        return this._dart_shouldAnnounceChangeToNext(nextRoute);
    }
    public getIsWaitingForEnteringDecision(): boolean {
        return this._dart_getIsWaitingForEnteringDecision();
    }
    public getIsWaitingForExitingDecision(): boolean {
        return this._dart_getIsWaitingForExitingDecision();
    }
    public markNeedsExitingDecision(): void {
        return this._dart_markNeedsExitingDecision();
    }
    public markForPush(): void {
        return this._dart_markForPush();
    }
    public markForAdd(): void {
        return this._dart_markForAdd();
    }
    public markForPop(result: any): void {
        return this._dart_markForPop(result);
    }
    public markForComplete(result: any): void {
        return this._dart_markForComplete(result);
    }
    public markForRemove(): void {
        return this._dart_markForRemove();
    }
    public getRestorationEnabled(): boolean {
        return this._dart_getRestorationEnabled();
    }
    public setRestorationEnabled(value: boolean): void {
        return this._dart_setRestorationEnabled(value);
    }
    public getRoute(): IRoute<any> {
        return this._dart_getRoute();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const removeDefaultProps = {
    isReplaced: false,
};
const completeDefaultProps = {
    isReplaced: false,
};
