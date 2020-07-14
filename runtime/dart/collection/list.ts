declare const dart: {
    collection: {
        fromArray: <T>(this: void, arr: Array<T>) => List<T>;
    }
}

export class List<T> {
    private constructor() {
        this.elementAt = undefined as any;
        this.map = undefined as any;
    }

    public static fromArray<T>(arr: Array<T>): List<T> {
        return dart.collection.fromArray(arr);
    }

    public elementAt: (index: number) => T;
    public map: (f: (e: T) => T) => List<T>;
}