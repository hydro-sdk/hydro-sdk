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
        this.first = undefined as any;
        this.isEmpty = undefined as any;
        this.isNotEmpty = undefined as any;
        this.last = undefined as any;
        this.length = undefined as any;
        this.elementAt = undefined as any;
        this.map = undefined as any;
        this.where = undefined as any;
    }

    public static fromArray<T>(arr: Array<T>): List<T> 
    {
        return dart.collection.fromArray(arr);
    }

    public unwrap: () => Array<T>;
    public first: () => T | never;
    public isEmpty: () => boolean;
    public isNotEmpty: () => boolean;
    public last: () => T | never;
    public length: () => number;
    public elementAt: (index: number) => T;
    public map: <R>(f: (e: T) => R) => List<R>;
    public where: (f: (e: T) => boolean) => List<T>;
}