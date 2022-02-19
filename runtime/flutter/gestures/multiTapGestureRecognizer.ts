import { Duration, IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { ISet } from "../../dart/core/set";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { IDiagnosticableTreeMixin } from "../foundation/diagnosticableTreeMixin";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDeviceGestureSettings } from "./deviceGestureSettings";
import { IGestureRecognizer } from "./gestureRecognizer";
import { IPointerDownEvent } from "./pointerDownEvent";
declare const flutter: {
    gestures: {
        multiTapGestureRecognizer: (
            this: void,
            multiTapGestureRecognizer: IMultiTapGestureRecognizer,
            props: {
                debugOwner?: Object | undefined;
                kind?: PointerDeviceKind | undefined;
                longTapDelay: IDuration;
                supportedDevices?: ISet<PointerDeviceKind> | undefined;
            }
        ) => IMultiTapGestureRecognizer;
    };
};
export interface IMultiTapGestureRecognizer {
    longTapDelay: IDuration;
    debugOwner: Object | undefined;
    gestureSettings: IDeviceGestureSettings | undefined;
    addAllowedPointer: (event: IPointerDownEvent) => void;
    acceptGesture: (pointer: number) => void;
    rejectGesture: (pointer: number) => void;
    dispose: () => void;
    getDebugDescription: () => string;
    addPointer: (event: IPointerDownEvent) => void;
    handleNonAllowedPointer: (event: IPointerDownEvent) => void;
    isPointerAllowed: (event: IPointerDownEvent) => boolean;
    getKindForPointer: (pointer: number) => PointerDeviceKind;
    invokeCallback: <T>(
        name: string,
        callback: () => T,
        props?: { debugReport?: () => string | undefined }
    ) => T | undefined;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toStringShort: () => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    getHashCode: () => number;
}
export class MultiTapGestureRecognizer
    implements
        Omit<
            IGestureRecognizer,
            "debugFillProperties" | "toStringShort" | "toDiagnosticsNode"
        >,
        IDiagnosticableTreeMixin,
        IDiagnosticable,
        Omit<
            IDiagnosticableTree,
            | "toStringShallow"
            | "toStringDeep"
            | "debugDescribeChildren"
            | "debugFillProperties"
            | "toStringShort"
            | "toDiagnosticsNode"
        >
{
    public readonly longTapDelay: IDuration = undefined as any;
    public readonly debugOwner: Object | undefined = undefined as any;
    public readonly gestureSettings: IDeviceGestureSettings | undefined =
        undefined as any;
    public constructor(props: {
        debugOwner?: Object | undefined;
        kind?: PointerDeviceKind | undefined;
        longTapDelay?: IDuration;
        supportedDevices?: ISet<PointerDeviceKind> | undefined;
    }) {
        flutter.gestures.multiTapGestureRecognizer(this, {
            ...multiTapGestureRecognizerDefaultProps,
            ...props,
        });
    }
    private readonly _dart_addAllowedPointer: (
        event: IPointerDownEvent
    ) => void = undefined as any;
    private readonly _dart_acceptGesture: (pointer: number) => void =
        undefined as any;
    private readonly _dart_rejectGesture: (pointer: number) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getDebugDescription: () => string = undefined as any;
    private readonly _dart_addPointer: (event: IPointerDownEvent) => void =
        undefined as any;
    private readonly _dart_handleNonAllowedPointer: (
        event: IPointerDownEvent
    ) => void = undefined as any;
    private readonly _dart_isPointerAllowed: (
        event: IPointerDownEvent
    ) => boolean = undefined as any;
    private readonly _dart_getKindForPointer: (
        pointer: number
    ) => PointerDeviceKind = undefined as any;
    private readonly _dart_invokeCallback: <T>(
        name: string,
        callback: () => T,
        props?: { debugReport?: () => string | undefined }
    ) => T | undefined = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public addAllowedPointer(event: IPointerDownEvent): void {
        return this._dart_addAllowedPointer(event);
    }
    public acceptGesture(pointer: number): void {
        return this._dart_acceptGesture(pointer);
    }
    public rejectGesture(pointer: number): void {
        return this._dart_rejectGesture(pointer);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getDebugDescription(): string {
        return this._dart_getDebugDescription();
    }
    public addPointer(event: IPointerDownEvent): void {
        return this._dart_addPointer(event);
    }
    public handleNonAllowedPointer(event: IPointerDownEvent): void {
        return this._dart_handleNonAllowedPointer(event);
    }
    public isPointerAllowed(event: IPointerDownEvent): boolean {
        return this._dart_isPointerAllowed(event);
    }
    public getKindForPointer(pointer: number): PointerDeviceKind {
        return this._dart_getKindForPointer(pointer);
    }
    public invokeCallback<T>(
        name: string,
        callback: () => T,
        props?: { debugReport?: () => string | undefined }
    ): T | undefined {
        return this._dart_invokeCallback(name, callback, props);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toStringShallow(props: {
        joiner?: string;
        minLevel?: DiagnosticLevel;
    }): string {
        return this._dart_toStringShallow({
            ...toStringShallowDefaultProps,
            ...props,
        });
    }
    public toStringDeep(props: {
        minLevel?: DiagnosticLevel;
        prefixLineOne?: string;
        prefixOtherLines?: string | undefined;
    }): string {
        return this._dart_toStringDeep({
            ...toStringDeepDefaultProps,
            ...props,
        });
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const multiTapGestureRecognizerDefaultProps = {
    longTapDelay: Duration.zero,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};