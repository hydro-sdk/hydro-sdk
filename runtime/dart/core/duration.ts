export interface DurationProps {
    days?: number;
    hours?: number;
    minutes?: number;
    seconds?: number;
    milliseconds?: number;
    microseconds?: number;
}

const durationDefaultProps = {
    days: 0,
    hours: 0,
    minutes: 0,
    seconds: 0,
    milliseconds: 0,
    microseconds: 0,
};

declare const dart: {
    core: {
        duration: (
            this: void,
            duration: Duration,
            props: DurationProps
        ) => Duration;
    };
};

export class Duration {
    private readonly _dart_getInDays: () => number = undefined as any;
    private readonly _dart_getInHours: () => number = undefined as any;
    private readonly _dart_getInMinutes: () => number = undefined as any;
    private readonly _dart_getInSeconds: () => number = undefined as any;
    private readonly _dart_getInMilliseconds: () => number = undefined as any;
    private readonly _dart_getInMicroseconds: () => number = undefined as any;
    private readonly _dart_compareTo: (
        other: Duration
    ) => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getIsNegative: () => boolean = undefined as any;
    private readonly _dart_abs: () => Duration = undefined as any;

    public getInDays() {
        return this._dart_getInDays();
    }

    public getInHours() {
        return this._dart_getInHours();
    }

    public getInMinutes() {
        return this._dart_getInMinutes();
    }

    public getInSeconds() {
        return this._dart_getInSeconds();
    }

    public getInMilliseconds() {
        return this._dart_getInMilliseconds();
    }

    public getInMicroseconds() {
        return this._dart_getInMicroseconds();
    }

    public compareTo(other: Duration) {
        return this._dart_compareTo(other);
    }

    public toString() {
        return this._dart_toString();
    }

    public getIsNegative() {
        return this._dart_getIsNegative();
    }

    public abs() {
        return this._dart_abs();
    }

    public constructor(props: DurationProps) {
        dart.core.duration(this, {
            ...durationDefaultProps,
            ...props,
        });
    }
}
