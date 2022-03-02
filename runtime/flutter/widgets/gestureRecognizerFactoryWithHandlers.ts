import { IGestureRecognizer } from "../gestures/gestureRecognizer";
import { IGestureRecognizerFactory } from "./gestureRecognizerFactory";
declare const flutter: {
    widgets: {
        gestureRecognizerFactoryWithHandlers: <T>(
            this: void,
            gestureRecognizerFactoryWithHandlers: IGestureRecognizerFactoryWithHandlers<T>,
            _constructor: () => T,
            _initializer: (instance: T) => void
        ) => IGestureRecognizerFactoryWithHandlers<T>;
    };
};
export interface IGestureRecognizerFactoryWithHandlers<T> {
    constructor: () => T;
    initializer: (instance: T) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class GestureRecognizerFactoryWithHandlers<T>
    implements IGestureRecognizerFactory<T>
{
    public constructor(
        _constructor: () => T,
        _initializer: (instance: T) => void
    ) {
        flutter.widgets.gestureRecognizerFactoryWithHandlers(
            this,
            _constructor,
            _initializer
        );
    }
    private readonly _dart_constructor: () => T = undefined as any;
    private readonly _dart_initializer: (instance: T) => void =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public constructor(): T {
        return this._dart_constructor();
    }
    public initializer(instance: T): void {
        return this._dart_initializer(instance);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
