import { Inull } from "../core/null";
import { IFuture } from "./future";
declare const dart: {
    async: {
        deferredLibrary: (
            this: void,
            deferredLibrary: IDeferredLibrary,
            libraryName: string,
            props: { uri?: string | undefined }
        ) => IDeferredLibrary;
    };
};
export interface IDeferredLibrary {
    libraryName: string;
    uri: string | undefined;
    load: () => IFuture<Inull>;
}
export class DeferredLibrary {
    public readonly libraryName: string = undefined as any;
    public readonly uri: string | undefined = undefined as any;
    public constructor(
        libraryName: string,
        props: { uri?: string | undefined }
    ) {
        dart.async.deferredLibrary(this, libraryName, props);
    }
    private readonly _dart_load: () => IFuture<Inull> = undefined as any;
    public load(): IFuture<Inull> {
        return this._dart_load();
    }
}
