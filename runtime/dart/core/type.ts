export class Type<T extends Function = Function> {
    protected displayName: string;
    public constructor(func: T) {
        this.displayName = func.name;
    }
}
