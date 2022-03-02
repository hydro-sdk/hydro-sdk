import { IFuture } from "../../dart/async/future";
import { IMouseCursor } from "./mouseCursor";
import { IMouseCursorSession } from "./mouseCursorSession";
import { ISystemMouseCursor } from "./systemMouseCursor";
declare const flutter: {
    services: {
        _systemMouseCursorSession: (
            this: void,
            _systemMouseCursorSession: I_SystemMouseCursorSession,
            cursor: ISystemMouseCursor,
            device: number
        ) => I_SystemMouseCursorSession;
    };
};
export interface I_SystemMouseCursorSession {
    cursor: IMouseCursor;
    device: number;
    getCursor: () => ISystemMouseCursor;
    activate: () => IFuture<void>;
    dispose: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _SystemMouseCursorSession implements IMouseCursorSession {
    public readonly cursor: IMouseCursor = undefined as any;
    public readonly device: number = undefined as any;
    public constructor(cursor: ISystemMouseCursor, device: number) {
        flutter.services._systemMouseCursorSession(this, cursor, device);
    }
    private readonly _dart_getCursor: () => ISystemMouseCursor =
        undefined as any;
    private readonly _dart_activate: () => IFuture<void> = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getCursor(): ISystemMouseCursor {
        return this._dart_getCursor();
    }
    public activate(): IFuture<void> {
        return this._dart_activate();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
