import { IIterable } from "../../dart/core/iterable";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IImageChunkEvent } from "./imageChunkEvent";
import { IImageInfo } from "./imageInfo";
import { IImageStreamCompleterHandle } from "./imageStreamCompleterHandle";
import { IImageStreamListener } from "./imageStreamListener";
declare const flutter: {
    painting: {
        imageStreamCompleter: (
            this: void,
            imageStreamCompleter: IImageStreamCompleter
        ) => IImageStreamCompleter;
    };
};
export interface IImageStreamCompleter {
    debugLabel: string | undefined;
    addListener: (listener: IImageStreamListener) => void;
    keepAlive: () => IImageStreamCompleterHandle;
    removeListener: (listener: IImageStreamListener) => void;
    addOnLastListenerRemovedCallback: (callback: () => void) => void;
    removeOnLastListenerRemovedCallback: (callback: () => void) => void;
    setImage: (image: IImageInfo) => void;
    reportError: (props: {
        context?: IDiagnosticsNode | undefined;
        informationCollector?: () => IIterable<IDiagnosticsNode> | undefined;
        silent: boolean;
        stack?: IStackTrace | undefined;
        exception: Object;
    }) => void;
    reportImageChunkEvent: (event: IImageChunkEvent) => void;
    debugFillProperties: (description: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class ImageStreamCompleter implements IDiagnosticable {
    public readonly debugLabel: string | undefined = undefined as any;
    public constructor() {
        flutter.painting.imageStreamCompleter(this);
    }
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_addListener: (
        listener: IImageStreamListener
    ) => void = undefined as any;
    private readonly _dart_keepAlive: () => IImageStreamCompleterHandle =
        undefined as any;
    private readonly _dart_removeListener: (
        listener: IImageStreamListener
    ) => void = undefined as any;
    private readonly _dart_addOnLastListenerRemovedCallback: (
        callback: () => void
    ) => void = undefined as any;
    private readonly _dart_removeOnLastListenerRemovedCallback: (
        callback: () => void
    ) => void = undefined as any;
    private readonly _dart_setImage: (image: IImageInfo) => void =
        undefined as any;
    private readonly _dart_reportError: (props: {
        context?: IDiagnosticsNode | undefined;
        informationCollector?: () => IIterable<IDiagnosticsNode> | undefined;
        silent: boolean;
        stack?: IStackTrace | undefined;
        exception: Object;
    }) => void = undefined as any;
    private readonly _dart_reportImageChunkEvent: (
        event: IImageChunkEvent
    ) => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        description: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    public getHasListeners(): boolean {
        return this._dart_getHasListeners();
    }
    public addListener(listener: IImageStreamListener): void {
        return this._dart_addListener(listener);
    }
    public keepAlive(): IImageStreamCompleterHandle {
        return this._dart_keepAlive();
    }
    public removeListener(listener: IImageStreamListener): void {
        return this._dart_removeListener(listener);
    }
    public addOnLastListenerRemovedCallback(callback: () => void): void {
        return this._dart_addOnLastListenerRemovedCallback(callback);
    }
    public removeOnLastListenerRemovedCallback(callback: () => void): void {
        return this._dart_removeOnLastListenerRemovedCallback(callback);
    }
    public setImage(image: IImageInfo): void {
        return this._dart_setImage(image);
    }
    public reportError(props: {
        context?: IDiagnosticsNode | undefined;
        informationCollector?: () => IIterable<IDiagnosticsNode> | undefined;
        silent?: boolean;
        stack?: IStackTrace | undefined;
        exception: Object;
    }): void {
        return this._dart_reportError({
            ...reportErrorDefaultProps,
            ...props,
        });
    }
    public reportImageChunkEvent(event: IImageChunkEvent): void {
        return this._dart_reportImageChunkEvent(event);
    }
    public debugFillProperties(
        description: IDiagnosticPropertiesBuilder
    ): void {
        return this._dart_debugFillProperties(description);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
}
const reportErrorDefaultProps = {
    silent: false,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
