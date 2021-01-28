declare const dart: {
    math: {
        random: (
            this: void,
            random: IRandom,
            seed?: number | undefined
        ) => IRandom;
        randomSecure: () => IRandom;
    };
};
export interface IRandom {
    nextInt: (max: number) => number;
    nextDouble: () => number;
    nextBool: () => boolean;
}
export class Random {
    public constructor(seed?: number | undefined) {
        dart.math.random(this, seed);
    }
    public static secure(): IRandom {
        return dart.math.randomSecure();
    }
    private readonly _dart_nextInt: (max: number) => number = undefined as any;
    private readonly _dart_nextDouble: () => number = undefined as any;
    private readonly _dart_nextBool: () => boolean = undefined as any;
    public nextInt(max: number): number {
        return this._dart_nextInt(max);
    }
    public nextDouble(): number {
        return this._dart_nextDouble();
    }
    public nextBool(): boolean {
        return this._dart_nextBool();
    }
}
