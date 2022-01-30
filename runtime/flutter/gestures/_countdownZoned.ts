import { IDuration } from "../../dart/core/duration";
declare const flutter: {
    gestures: {
        _countdownZoned: (
            this: void,
            _countdownZoned: I_CountdownZoned,
            props: { duration: IDuration }
        ) => I_CountdownZoned;
    };
};
export interface I_CountdownZoned {
    getTimeout: () => boolean;
}
export class _CountdownZoned {
    public constructor(props: { duration: IDuration }) {
        flutter.gestures._countdownZoned(this, props);
    }
    private readonly _dart_getTimeout: () => boolean = undefined as any;
    public getTimeout(): boolean {
        return this._dart_getTimeout();
    }
}
