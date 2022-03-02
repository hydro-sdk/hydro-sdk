import { IMatrix4 } from "../../vector_math/matrix4";
import { IPointerEvent } from "./pointerEvent";
declare const flutter: {
    gestures: {
        pointerRouter: (
            this: void,
            pointerRouter: IPointerRouter
        ) => IPointerRouter;
    };
};
export interface IPointerRouter {
    addRoute: (
        pointer: number,
        route: (event: IPointerEvent) => void,
        transform?: IMatrix4 | undefined
    ) => void;
    removeRoute: (
        pointer: number,
        route: (event: IPointerEvent) => void
    ) => void;
    addGlobalRoute: (
        route: (event: IPointerEvent) => void,
        transform?: IMatrix4 | undefined
    ) => void;
    removeGlobalRoute: (route: (event: IPointerEvent) => void) => void;
    getDebugGlobalRouteCount: () => number;
    route: (event: IPointerEvent) => void;
}
export class PointerRouter {
    public constructor() {
        flutter.gestures.pointerRouter(this);
    }
    private readonly _dart_addRoute: (
        pointer: number,
        route: (event: IPointerEvent) => void,
        transform?: IMatrix4 | undefined
    ) => void = undefined as any;
    private readonly _dart_removeRoute: (
        pointer: number,
        route: (event: IPointerEvent) => void
    ) => void = undefined as any;
    private readonly _dart_addGlobalRoute: (
        route: (event: IPointerEvent) => void,
        transform?: IMatrix4 | undefined
    ) => void = undefined as any;
    private readonly _dart_removeGlobalRoute: (
        route: (event: IPointerEvent) => void
    ) => void = undefined as any;
    private readonly _dart_getDebugGlobalRouteCount: () => number =
        undefined as any;
    private readonly _dart_route: (event: IPointerEvent) => void =
        undefined as any;
    public addRoute(
        pointer: number,
        route: (event: IPointerEvent) => void,
        transform?: IMatrix4 | undefined
    ): void {
        return this._dart_addRoute(pointer, route, transform);
    }
    public removeRoute(
        pointer: number,
        route: (event: IPointerEvent) => void
    ): void {
        return this._dart_removeRoute(pointer, route);
    }
    public addGlobalRoute(
        route: (event: IPointerEvent) => void,
        transform?: IMatrix4 | undefined
    ): void {
        return this._dart_addGlobalRoute(route, transform);
    }
    public removeGlobalRoute(route: (event: IPointerEvent) => void): void {
        return this._dart_removeGlobalRoute(route);
    }
    public getDebugGlobalRouteCount(): number {
        return this._dart_getDebugGlobalRouteCount();
    }
    public route(event: IPointerEvent): void {
        return this._dart_route(event);
    }
}
