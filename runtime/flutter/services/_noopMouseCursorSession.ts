import { IFuture } from "../../dart/async/future";
import { I_NoopMouseCursor } from "./_noopMouseCursor";
import { IMouseCursor } from "./mouseCursor";
import { IMouseCursorSession } from "./mouseCursorSession";
declare const flutter: {
    services: {
        _noopMouseCursorSession: (
            this: void,
            _noopMouseCursorSession: I_NoopMouseCursorSession,
            cursor: I_NoopMouseCursor,
            device: number
        ) => I_NoopMouseCursorSession;
    };
};
export interface I_NoopMouseCursorSession {
    cursor: IMouseCursor;
    device: number;
    activate: () => IFuture<void>;
    dispose: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _NoopMouseCursorSession implements IMouseCursorSession {
    public readonly cursor: IMouseCursor = undefined as any;
    public readonly device: number = undefined as any;
    public constructor(cursor: I_NoopMouseCursor, device: number) {
        flutter.services._noopMouseCursorSession(this, cursor, device);
    }
    private readonly _dart_activate: () => IFuture<void> = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
