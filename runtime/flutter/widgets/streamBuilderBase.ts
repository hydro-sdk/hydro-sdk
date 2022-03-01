
import { IKey } from "../foundation/key";
import { IStream } from "../../dart/async/stream";
import { IStatefulWidget } from "./statefulWidget";
import { IStatefulElement } from "./statefulElement";
import { IState } from "./state";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
streamBuilderBase: <T, S>(this: void, streamBuilderBase: IStreamBuilderBase<T, S>, props? : {  key? : IKey | undefined, stream? : IStream<T> | undefined,}) => IStreamBuilderBase<T, S>
}
};
export interface IStreamBuilderBase
<T, S>

{
stream: IStream<T> | undefined;
key: IKey | undefined;
initial: () => S;
afterConnected: (current: S) => S;
afterData: (current: S, data: T) => S;
afterError: (current: S, error: Object, stackTrace: IStackTrace) => S;
afterDone: (current: S) => S;
afterDisconnected: (current: S) => S;
build: (context: IBuildContext, currentSummary: S) => IWidget;
createState: () => IState<IStreamBuilderBase<T, S>>;
createElement: () => IStatefulElement;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class StreamBuilderBase
<T, S>
 implements IStatefulWidget, IDiagnosticable
{    public readonly stream: IStream<T> | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props? : {  key? : IKey | undefined, stream? : IStream<T> | undefined,}){
flutter.widgets.streamBuilderBase(this, props);}
    private readonly _dart_initial: () => S = undefined as any;
    private readonly _dart_afterConnected: (current: S) => S = undefined as any;
    private readonly _dart_afterData: (current: S, data: T) => S = undefined as any;
    private readonly _dart_afterError: (current: S, error: Object, stackTrace: IStackTrace) => S = undefined as any;
    private readonly _dart_afterDone: (current: S) => S = undefined as any;
    private readonly _dart_afterDisconnected: (current: S) => S = undefined as any;
    private readonly _dart_build: (context: IBuildContext, currentSummary: S) => IWidget = undefined as any;
    private readonly _dart_createState: () => IState<IStreamBuilderBase<T, S>> = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public initial() : S {
    return this._dart_initial();
}
public afterConnected(current: S) : S {
    return this._dart_afterConnected(current);
}
public afterData(current: S, data: T) : S {
    return this._dart_afterData(current, data);
}
public afterError(current: S, error: Object, stackTrace: IStackTrace) : S {
    return this._dart_afterError(current, error, stackTrace);
}
public afterDone(current: S) : S {
    return this._dart_afterDone(current);
}
public afterDisconnected(current: S) : S {
    return this._dart_afterDisconnected(current);
}
public build(context: IBuildContext, currentSummary: S) : IWidget {
    return this._dart_build(context, currentSummary);
}
public createState() : IState<IStreamBuilderBase<T, S>> {
    return this._dart_createState();
}
public createElement() : IStatefulElement {
    return this._dart_createElement();
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toStringShallow( props : {  joiner? : string, minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toStringShallow({
...toStringShallowDefaultProps,
...props
});
}
public toStringDeep( props : {  minLevel? : DiagnosticLevel, prefixLineOne? : string, prefixOtherLines? : string | undefined,}) : string {
    return this._dart_toStringDeep({
...toStringDeepDefaultProps,
...props
});
}
public toDiagnosticsNode( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode(props);
}
public debugDescribeChildren() : IList<IDiagnosticsNode> {
    return this._dart_debugDescribeChildren();
}
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
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
