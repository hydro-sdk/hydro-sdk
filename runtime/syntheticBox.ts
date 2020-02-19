export abstract class JITAllocatingManagedBox<T, U>
{
    public abstract props: T;
    private vmObject: never;
    public abstract unwrap(): U;
    public constructor()
    {}
}