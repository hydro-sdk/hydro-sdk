import { IPointerSignalEvent } from "./pointerSignalEvent";
declare const flutter: {
    gestures: {
        pointerSignalResolver: (
            this: void,
            pointerSignalResolver: IPointerSignalResolver
        ) => IPointerSignalResolver;
    };
};
export interface IPointerSignalResolver {
    register: (
        event: IPointerSignalEvent,
        callback: (event: IPointerSignalEvent) => void
    ) => void;
    resolve: (event: IPointerSignalEvent) => void;
}
export class PointerSignalResolver {
    public constructor() {
        flutter.gestures.pointerSignalResolver(this);
    }
    private readonly _dart_register: (
        event: IPointerSignalEvent,
        callback: (event: IPointerSignalEvent) => void
    ) => void = undefined as any;
    private readonly _dart_resolve: (event: IPointerSignalEvent) => void =
        undefined as any;
    public register(
        event: IPointerSignalEvent,
        callback: (event: IPointerSignalEvent) => void
    ): void {
        return this._dart_register(event, callback);
    }
    public resolve(event: IPointerSignalEvent): void {
        return this._dart_resolve(event);
    }
}
