export interface IRestorationBucket {
    getDebugOwner: () => Object | undefined;
    getIsReplacing: () => boolean;
    getRestorationId: () => string;
    read: <P>(restorationId: string) => P | undefined;
    write: <P>(restorationId: string, value: P) => void;
    remove: <P>(restorationId: string) => P | undefined;
    contains: (restorationId: string) => boolean;
    claimChild: (
        restorationId: string,
        props?: { debugOwner?: Object | undefined }
    ) => IRestorationBucket;
    adoptChild: (child: IRestorationBucket) => void;
    rename: (newRestorationId: string) => void;
    dispose: () => void;
    toString: () => string;
}
export class RestorationBucket {
    public static _childrenMapKey = "c";
    public static _valuesMapKey = "v";
    private readonly _dart_getDebugOwner: () => Object | undefined =
        undefined as any;
    private readonly _dart_getIsReplacing: () => boolean = undefined as any;
    private readonly _dart_getRestorationId: () => string = undefined as any;
    private readonly _dart_read: <P>(restorationId: string) => P | undefined =
        undefined as any;
    private readonly _dart_write: <P>(restorationId: string, value: P) => void =
        undefined as any;
    private readonly _dart_remove: <P>(restorationId: string) => P | undefined =
        undefined as any;
    private readonly _dart_contains: (restorationId: string) => boolean =
        undefined as any;
    private readonly _dart_claimChild: (
        restorationId: string,
        props?: { debugOwner?: Object | undefined }
    ) => IRestorationBucket = undefined as any;
    private readonly _dart_adoptChild: (child: IRestorationBucket) => void =
        undefined as any;
    private readonly _dart_rename: (newRestorationId: string) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getDebugOwner(): Object | undefined {
        return this._dart_getDebugOwner();
    }
    public getIsReplacing(): boolean {
        return this._dart_getIsReplacing();
    }
    public getRestorationId(): string {
        return this._dart_getRestorationId();
    }
    public read<P>(restorationId: string): P | undefined {
        return this._dart_read(restorationId);
    }
    public write<P>(restorationId: string, value: P): void {
        return this._dart_write(restorationId, value);
    }
    public remove<P>(restorationId: string): P | undefined {
        return this._dart_remove(restorationId);
    }
    public contains(restorationId: string): boolean {
        return this._dart_contains(restorationId);
    }
    public claimChild(
        restorationId: string,
        props?: { debugOwner?: Object | undefined }
    ): IRestorationBucket {
        return this._dart_claimChild(restorationId, props);
    }
    public adoptChild(child: IRestorationBucket): void {
        return this._dart_adoptChild(child);
    }
    public rename(newRestorationId: string): void {
        return this._dart_rename(newRestorationId);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
