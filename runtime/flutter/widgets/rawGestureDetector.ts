
import { HitTestBehavior } from "../rendering/hitTestBehavior";
import { IWidget } from "./widget";
import { IMap,Map } from "../../dart/core/map";
import { Type } from "../../dart/core/type";
import { IGestureRecognizerFactory } from "./gestureRecognizerFactory";
import { IGestureRecognizer } from "../gestures/gestureRecognizer";
import { IKey } from "../foundation/key";
import { ISemanticsGestureDelegate } from "./semanticsGestureDelegate";
import { IStatefulWidget } from "./statefulWidget";
import { IStatefulElement } from "./statefulElement";
import { IState } from "./state";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IRawGestureDetectorState } from "./rawGestureDetectorState";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList,List } from "../../dart/core/list";
import { IIterable } from "../../dart/core/iterable";
import { IMapEntry } from "../../dart/core/mapEntry";
declare const flutter: {
widgets: {
rawGestureDetector: (this: void, rawGestureDetector: IRawGestureDetector, props : {  behavior? : HitTestBehavior | undefined, child? : IWidget | undefined, excludeFromSemantics : boolean, gestures : IMap<Type, IGestureRecognizerFactory<IGestureRecognizer>>, key? : IKey | undefined, semantics? : ISemanticsGestureDelegate | undefined,}) => IRawGestureDetector
}
};
export interface IRawGestureDetector


{
child: IWidget | undefined;
gestures: IMap<Type, IGestureRecognizerFactory<IGestureRecognizer>>;
behavior: HitTestBehavior | undefined;
excludeFromSemantics: boolean;
semantics: ISemanticsGestureDelegate | undefined;
key: IKey | undefined;
createState: () => IRawGestureDetectorState;
createElement: () => IStatefulElement;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class RawGestureDetector

 implements IStatefulWidget, IDiagnosticable
{    public readonly child: IWidget | undefined = undefined as any;
    public readonly gestures: IMap<Type, IGestureRecognizerFactory<IGestureRecognizer>> = undefined as any;
    public readonly behavior: HitTestBehavior | undefined = undefined as any;
    public readonly excludeFromSemantics: boolean = undefined as any;
    public readonly semantics: ISemanticsGestureDelegate | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  behavior? : HitTestBehavior | undefined, child? : IWidget | undefined, excludeFromSemantics? : boolean, gestures? : IMap<Type, IGestureRecognizerFactory<IGestureRecognizer>>, key? : IKey | undefined, semantics? : ISemanticsGestureDelegate | undefined,}){
flutter.widgets.rawGestureDetector(this, {
...rawGestureDetectorDefaultProps,
...props
});}
    private readonly _dart_createState: () => IRawGestureDetectorState = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createState() : IRawGestureDetectorState {
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
const rawGestureDetectorDefaultProps = {
    excludeFromSemantics: false,
    gestures:  Map.fromEntries(<IIterable<IMapEntry<Type,IGestureRecognizerFactory<GestureRecognizer>>>><unknown>List.fromArray([])),
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
