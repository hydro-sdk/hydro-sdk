declare const dart: {
    core: {
        stackTrace: (this: void, stackTrace: IStackTrace) => IStackTrace;
        stackTraceFromString: (stackTraceString: string) => IStackTrace;
        stackTraceCurrent: () => IStackTrace;
    };
};
export interface IStackTrace {
    toString: () => string;
}
export class StackTrace {
    public constructor() {
        dart.core.stackTrace(this);
    }
    public static fromString(stackTraceString: string): IStackTrace {
        return dart.core.stackTraceFromString(stackTraceString);
    }
    public static current(): IStackTrace {
        return dart.core.stackTraceCurrent();
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
