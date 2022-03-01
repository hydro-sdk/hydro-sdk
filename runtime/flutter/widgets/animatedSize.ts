
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { IWidget } from "./widget";
import { Clip } from "../../dart/ui/clip";
import { ICurve } from "../animation/curve";
import { IKey } from "../foundation/key";
import { IDuration } from "../../dart/core/duration";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IStatefulWidget } from "./statefulWidget";
import { IStatefulElement } from "./statefulElement";
import { IState } from "./state";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
import { Alignment } from "../painting/alignment";
import { Curves } from "../animation/curves";
declare const flutter: {
widgets: {
animatedSize: (this: void, animatedSize: IAnimatedSize, props : {  alignment : IAlignmentGeometry, child? : IWidget | undefined, clipBehavior : Clip, curve : ICurve, key? : IKey | undefined, reverseDuration? : IDuration | undefined, vsync? : ITickerProvider | undefined, duration : IDuration,}) => IAnimatedSize
}
};
export interface IAnimatedSize


{
child: IWidget | undefined;
alignment: IAlignmentGeometry;
curve: ICurve;
duration: IDuration;
reverseDuration: IDuration | undefined;
clipBehavior: Clip;
key: IKey | undefined;
createState: () => IState<IAnimatedSize>;
createElement: () => IStatefulElement;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class AnimatedSize

 implements IStatefulWidget, IDiagnosticable
{    public readonly child: IWidget | undefined = undefined as any;
    public readonly alignment: IAlignmentGeometry = undefined as any;
    public readonly curve: ICurve = undefined as any;
    public readonly duration: IDuration = undefined as any;
    public readonly reverseDuration: IDuration | undefined = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  alignment? : IAlignmentGeometry, child? : IWidget | undefined, clipBehavior? : Clip, curve? : ICurve, key? : IKey | undefined, reverseDuration? : IDuration | undefined, vsync? : ITickerProvider | undefined, duration : IDuration,}){
flutter.widgets.animatedSize(this, {
...animatedSizeDefaultProps,
...props
});}
    private readonly _dart_createState: () => IState<IAnimatedSize> = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createState() : IState<IAnimatedSize> {
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
const animatedSizeDefaultProps = {
    alignment: Alignment.center,
    clipBehavior: Clip.hardEdge,
    curve: Curves.linear,
};
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
