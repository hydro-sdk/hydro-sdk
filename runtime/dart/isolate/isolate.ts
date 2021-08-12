import { IFuture } from "../async/future";
import { IStream } from "../async/stream";
import { IList } from "../core/list";
import { IUri } from "../core/uri";
import { ICapability } from "./capability";
import { ISendPort } from "./sendPort";
declare const dart: {
    isolate: {
        isolate: (
            this: void,
            isolate: IIsolate,
            controlPort: ISendPort,
            props: {
                pauseCapability?: ICapability | undefined;
                terminateCapability?: ICapability | undefined;
            }
        ) => IIsolate;
        isolateCurrent: () => IIsolate;
        isolatePackageRoot: () => IFuture<IUri | undefined>;
        isolatePackageConfig: () => IFuture<IUri | undefined>;
        isolateResolvePackageUri: (
            packageUri: IUri
        ) => IFuture<IUri | undefined>;
        isolateSpawn: <T>(
            entryPoint: (message: T) => void,
            message: T,
            props: {
                debugName?: string | undefined;
                errorsAreFatal: boolean;
                onError?: ISendPort | undefined;
                onExit?: ISendPort | undefined;
                paused: boolean;
            }
        ) => IFuture<IIsolate>;
        isolateSpawnUri: (
            uri: IUri,
            args: IList<string>,
            message: any,
            props: {
                automaticPackageResolution: boolean;
                checked?: boolean | undefined;
                debugName?: string | undefined;
                environment?: { [index: string]: string } | undefined;
                errorsAreFatal: boolean;
                onError?: ISendPort | undefined;
                onExit?: ISendPort | undefined;
                packageConfig?: IUri | undefined;
                packageRoot?: IUri | undefined;
                paused: boolean;
            }
        ) => IFuture<IIsolate>;
    };
};
export interface IIsolate {
    controlPort: ISendPort;
    pauseCapability: ICapability | undefined;
    terminateCapability: ICapability | undefined;
    getDebugName: () => string | undefined;
    pause: (resumeCapability?: ICapability | undefined) => ICapability;
    resume: (resumeCapability: ICapability) => void;
    addOnExitListener: (
        responsePort: ISendPort,
        props: { response?: Object | undefined }
    ) => void;
    removeOnExitListener: (responsePort: ISendPort) => void;
    setErrorsFatal: (errorsAreFatal: boolean) => void;
    kill: (props: { priority: number }) => void;
    ping: (
        responsePort: ISendPort,
        props: { priority: number; response?: Object | undefined }
    ) => void;
    addErrorListener: (port: ISendPort) => void;
    removeErrorListener: (port: ISendPort) => void;
    getErrors: () => IStream<any>;
}
export class Isolate {
    public static immediate = 0;
    public static beforeNextEvent = 1;
    public readonly controlPort: ISendPort = undefined as any;
    public readonly pauseCapability: ICapability | undefined = undefined as any;
    public readonly terminateCapability: ICapability | undefined =
        undefined as any;
    public constructor(
        controlPort: ISendPort,
        props: {
            pauseCapability?: ICapability | undefined;
            terminateCapability?: ICapability | undefined;
        }
    ) {
        dart.isolate.isolate(this, controlPort, props);
    }
    public static current(): IIsolate {
        return dart.isolate.isolateCurrent();
    }
    public static packageRoot(): IFuture<IUri | undefined> {
        return dart.isolate.isolatePackageRoot();
    }
    public static packageConfig(): IFuture<IUri | undefined> {
        return dart.isolate.isolatePackageConfig();
    }
    public static resolvePackageUri(
        packageUri: IUri
    ): IFuture<IUri | undefined> {
        return dart.isolate.isolateResolvePackageUri(packageUri);
    }
    public static spawn<T>(
        entryPoint: (message: T) => void,
        message: T,
        props: {
            debugName?: string | undefined;
            errorsAreFatal?: boolean;
            onError?: ISendPort | undefined;
            onExit?: ISendPort | undefined;
            paused?: boolean;
        }
    ): IFuture<IIsolate> {
        return dart.isolate.isolateSpawn(entryPoint, message, {
            ...spawnDefaultProps,
            ...props,
        });
    }
    public static spawnUri(
        uri: IUri,
        args: IList<string>,
        message: any,
        props: {
            automaticPackageResolution?: boolean;
            checked?: boolean | undefined;
            debugName?: string | undefined;
            environment?: { [index: string]: string } | undefined;
            errorsAreFatal?: boolean;
            onError?: ISendPort | undefined;
            onExit?: ISendPort | undefined;
            packageConfig?: IUri | undefined;
            packageRoot?: IUri | undefined;
            paused?: boolean;
        }
    ): IFuture<IIsolate> {
        return dart.isolate.isolateSpawnUri(uri, args, message, {
            ...spawnUriDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getDebugName: () => string | undefined =
        undefined as any;
    private readonly _dart_pause: (
        resumeCapability?: ICapability | undefined
    ) => ICapability = undefined as any;
    private readonly _dart_resume: (resumeCapability: ICapability) => void =
        undefined as any;
    private readonly _dart_addOnExitListener: (
        responsePort: ISendPort,
        props: { response?: Object | undefined }
    ) => void = undefined as any;
    private readonly _dart_removeOnExitListener: (
        responsePort: ISendPort
    ) => void = undefined as any;
    private readonly _dart_setErrorsFatal: (errorsAreFatal: boolean) => void =
        undefined as any;
    private readonly _dart_kill: (props: { priority: number }) => void =
        undefined as any;
    private readonly _dart_ping: (
        responsePort: ISendPort,
        props: { priority: number; response?: Object | undefined }
    ) => void = undefined as any;
    private readonly _dart_addErrorListener: (port: ISendPort) => void =
        undefined as any;
    private readonly _dart_removeErrorListener: (port: ISendPort) => void =
        undefined as any;
    private readonly _dart_getErrors: () => IStream<any> = undefined as any;
    public getDebugName(): string | undefined {
        return this._dart_getDebugName();
    }
    public pause(resumeCapability?: ICapability | undefined): ICapability {
        return this._dart_pause(resumeCapability);
    }
    public resume(resumeCapability: ICapability): void {
        return this._dart_resume(resumeCapability);
    }
    public addOnExitListener(
        responsePort: ISendPort,
        props: { response?: Object | undefined }
    ): void {
        return this._dart_addOnExitListener(responsePort, props);
    }
    public removeOnExitListener(responsePort: ISendPort): void {
        return this._dart_removeOnExitListener(responsePort);
    }
    public setErrorsFatal(errorsAreFatal: boolean): void {
        return this._dart_setErrorsFatal(errorsAreFatal);
    }
    public kill(props: { priority?: number }): void {
        return this._dart_kill({
            ...killDefaultProps,
            ...props,
        });
    }
    public ping(
        responsePort: ISendPort,
        props: { priority?: number; response?: Object | undefined }
    ): void {
        return this._dart_ping(responsePort, {
            ...pingDefaultProps,
            ...props,
        });
    }
    public addErrorListener(port: ISendPort): void {
        return this._dart_addErrorListener(port);
    }
    public removeErrorListener(port: ISendPort): void {
        return this._dart_removeErrorListener(port);
    }
    public getErrors(): IStream<any> {
        return this._dart_getErrors();
    }
}
const killDefaultProps = {
    priority: Isolate.beforeNextEvent,
};
const pingDefaultProps = {
    priority: Isolate.immediate,
};
const spawnDefaultProps = {
    errorsAreFatal: true,
    paused: false,
};
const spawnUriDefaultProps = {
    automaticPackageResolution: false,
    errorsAreFatal: true,
    paused: false,
};
