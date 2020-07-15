declare const dart: {
    collection: {
        fromArray: <T>(this: void, arr: Array<T>) => List<T>;
    };
};

export class List<T> 
{
    private constructor() 
    {
        this.unwrap = undefined as any;
        this.elementAt = undefined as any;
        this.map = undefined as any;
    }

    public static fromArray<T>(arr: Array<T>): List<T> 
    {
        return dart.collection.fromArray(arr);
    }

    public unwrap: () => Array<T>;
    public elementAt: (index: number) => T;
    public map: (f: (e: T) => T) => List<T>;
}