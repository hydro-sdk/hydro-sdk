import { IStream } from "../../dart/async/stream";
import { IList } from "../../dart/core/list";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IAsyncSnapshot } from "./asyncSnapshot";
import { IBuildContext } from "./buildContext";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStreamBuilderBase } from "./streamBuilderBase";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        streamBuilder: <T>(
            this: void,
            streamBuilder: IStreamBuilder<T>,
            props: {
                initialData?: T | undefined;
                key?: IKey | undefined;
                stream?: IStream<T> | undefined;
                builder: (
                    context: IBuildContext,
                    snapshot: IAsyncSnapshot<T>
                ) => IWidget;
            }
        ) => IStreamBuilder<T>;
    };
};
export interface IStreamBuilder<T> {
    stream: IStream<T> | undefined;
    key: IKey | undefined;
    initial: () => IAsyncSnapshot<T>;
    afterConnected: (current: IAsyncSnapshot<T>) => IAsyncSnapshot<T>;
    afterData: (current: IAsyncSnapshot<T>, data: T) => IAsyncSnapshot<T>;
    afterError: (
        current: IAsyncSnapshot<T>,
        error: Object,
        stackTrace: IStackTrace
    ) => IAsyncSnapshot<T>;
    afterDone: (current: IAsyncSnapshot<T>) => IAsyncSnapshot<T>;
    afterDisconnected: (current: IAsyncSnapshot<T>) => IAsyncSnapshot<T>;
    build: (
        context: IBuildContext,
        currentSummary: IAsyncSnapshot<T>
    ) => IWidget;
    createState: () => IState<IStreamBuilderBase<T, IAsyncSnapshot<T>>>;
    createElement: () => IStatefulElement;
    toStringShort: () => string;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
}
export class StreamBuilder<T>
    implements IStreamBuilderBase<T, IAsyncSnapshot<T>>, IDiagnosticable
{
    public readonly stream: IStream<T> | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        initialData?: T | undefined;
        key?: IKey | undefined;
        stream?: IStream<T> | undefined;
        builder: (
            context: IBuildContext,
            snapshot: IAsyncSnapshot<T>
        ) => IWidget;
    }) {
        flutter.widgets.streamBuilder(this, props);
    }
    private readonly _dart_initial: () => IAsyncSnapshot<T> = undefined as any;
    private readonly _dart_afterConnected: (
        current: IAsyncSnapshot<T>
    ) => IAsyncSnapshot<T> = undefined as any;
    private readonly _dart_afterData: (
        current: IAsyncSnapshot<T>,
        data: T
    ) => IAsyncSnapshot<T> = undefined as any;
    private readonly _dart_afterError: (
        current: IAsyncSnapshot<T>,
        error: Object,
        stackTrace: IStackTrace
    ) => IAsyncSnapshot<T> = undefined as any;
    private readonly _dart_afterDone: (
        current: IAsyncSnapshot<T>
    ) => IAsyncSnapshot<T> = undefined as any;
    private readonly _dart_afterDisconnected: (
        current: IAsyncSnapshot<T>
    ) => IAsyncSnapshot<T> = undefined as any;
    private readonly _dart_build: (
        context: IBuildContext,
        currentSummary: IAsyncSnapshot<T>
    ) => IWidget = undefined as any;
    private readonly _dart_createState: () => IState<
        IStreamBuilderBase<T, IAsyncSnapshot<T>>
    > = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    public initial(): IAsyncSnapshot<T> {
        return this._dart_initial();
    }
    public afterConnected(current: IAsyncSnapshot<T>): IAsyncSnapshot<T> {
        return this._dart_afterConnected(current);
    }
    public afterData(current: IAsyncSnapshot<T>, data: T): IAsyncSnapshot<T> {
        return this._dart_afterData(current, data);
    }
    public afterError(
        current: IAsyncSnapshot<T>,
        error: Object,
        stackTrace: IStackTrace
    ): IAsyncSnapshot<T> {
        return this._dart_afterError(current, error, stackTrace);
    }
    public afterDone(current: IAsyncSnapshot<T>): IAsyncSnapshot<T> {
        return this._dart_afterDone(current);
    }
    public afterDisconnected(current: IAsyncSnapshot<T>): IAsyncSnapshot<T> {
        return this._dart_afterDisconnected(current);
    }
    public build(
        context: IBuildContext,
        currentSummary: IAsyncSnapshot<T>
    ): IWidget {
        return this._dart_build(context, currentSummary);
    }
    public createState(): IState<IStreamBuilderBase<T, IAsyncSnapshot<T>>> {
        return this._dart_createState();
    }
    public createElement(): IStatefulElement {
        return this._dart_createElement();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
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
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
}
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
