declare const dart: {
    collection: {
        fromArray: <T>(this: void, arr: Array<T>) => List<T>;
    };
};

export interface IList<T> {
    unwrap: () => Array<T>;
    first: () => T | never;
    isEmpty: () => boolean;
    isNotEmpty: () => boolean;
    last: () => T | never;
    length: () => number;
    elementAt: (index: number) => T;
    map: <R>(f: (e: T) => R) => IList<R>;
    where: (f: (e: T) => boolean) => IList<T>;
}

export class List<T> {
    private constructor() {
        this.unwrap = undefined as any;
        this.getFirst = undefined as any;
        this.getIsEmpty = undefined as any;
        this.getIsNotEmpty = undefined as any;
        this.getLast = undefined as any;
        this.getLength = undefined as any;
        this.elementAt = undefined as any;
        this.map = undefined as any;
        this.where = undefined as any;
    }

    public static fromArray<T>(arr: Array<T>): List<T> {
        return dart.collection.fromArray(arr);
    }

    public unwrap: () => Array<T>;
    public getFirst: () => T | never;
    public getIsEmpty: () => boolean;
    public getIsNotEmpty: () => boolean;
    public getLast: () => T | never;
    public getLength: () => number;
    public elementAt: (index: number) => T;
    public map: <R>(f: (e: T) => R) => List<R>;
    public where: (f: (e: T) => boolean) => List<T>;
}
