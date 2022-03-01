
import { IKey } from "../foundation/key";
import { IAnimation } from "../animation/animation";
import { IColor } from "../../dart/ui/color";
import { IAnimatedWidget } from "./animatedWidget";
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
import { IState } from "./state";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IListenable } from "../foundation/listenable";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IStatefulElement } from "./statefulElement";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
animatedModalBarrier: (this: void, animatedModalBarrier: IAnimatedModalBarrier, props : {  barrierSemanticsDismissible? : boolean | undefined, dismissible : boolean, key? : IKey | undefined, semanticsLabel? : string | undefined, color : IAnimation<IColor | undefined>,}) => IAnimatedModalBarrier
}
};
export interface IAnimatedModalBarrier


{
dismissible: boolean;
semanticsLabel: string | undefined;
barrierSemanticsDismissible: boolean | undefined;
listenable: IListenable;
key: IKey | undefined;
getColor: () => IAnimation<IColor | undefined>;
build: (context: IBuildContext) => IWidget;
createState: () => IState<IAnimatedWidget>;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => IStatefulElement;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class AnimatedModalBarrier

 implements IAnimatedWidget, IDiagnosticable
{    public readonly dismissible: boolean = undefined as any;
    public readonly semanticsLabel: string | undefined = undefined as any;
    public readonly barrierSemanticsDismissible: boolean | undefined = undefined as any;
    public readonly listenable: IListenable = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  barrierSemanticsDismissible? : boolean | undefined, dismissible? : boolean, key? : IKey | undefined, semanticsLabel? : string | undefined, color : IAnimation<IColor | undefined>,}){
flutter.widgets.animatedModalBarrier(this, {
...animatedModalBarrierDefaultProps,
...props
});}
    private readonly _dart_getColor: () => IAnimation<IColor | undefined> = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget = undefined as any;
    private readonly _dart_createState: () => IState<IAnimatedWidget> = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public getColor() : IAnimation<IColor | undefined> {
    return this._dart_getColor();
}
public build(context: IBuildContext) : IWidget {
    return this._dart_build(context);
}
public createState() : IState<IAnimatedWidget> {
    return this._dart_createState();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public createElement() : IStatefulElement {
    return this._dart_createElement();
}
public toStringShort() : string {
    return this._dart_toStringShort();
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
const animatedModalBarrierDefaultProps = {
    dismissible: true,
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
