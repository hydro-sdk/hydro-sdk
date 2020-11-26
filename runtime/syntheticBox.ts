export abstract class JITAllocatingRTManagedBox<T, U> {
    public abstract props: T;
    private vmObject: never;
    public abstract unwrap(): U;
    public constructor() {}
}

export abstract class RTManagedBox<T> {
    protected abstract vmObject: T;
    protected abstract unwrap(): T;
}
