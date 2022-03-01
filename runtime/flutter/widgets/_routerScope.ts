
import { IKey } from "../foundation/key";
import { IBackButtonDispatcher } from "./backButtonDispatcher";
import { IWidget } from "./widget";
import { IRouteInformationParser } from "./routeInformationParser";
import { IValueListenable } from "../foundation/valueListenable";
import { IRouteInformation } from "./routeInformation";
import { IRouterDelegate } from "./routerDelegate";
import { I_RouterState } from "./_routerState";
import { IInheritedWidget } from "./inheritedWidget";
import { IInheritedElement } from "./inheritedElement";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
_routerScope: (this: void, _routerScope: I_RouterScope, props : {  key? : IKey | undefined, backButtonDispatcher? : IBackButtonDispatcher | undefined, child : IWidget, routeInformationParser? : IRouteInformationParser<Object | undefined> | undefined, routeInformationProvider? : IValueListenable<IRouteInformation | undefined> | undefined, routerDelegate : IRouterDelegate<Object | undefined>, routerState : I_RouterState<Object | undefined>,}) => I_RouterScope
}
};
export interface I_RouterScope


{
routeInformationProvider: IValueListenable<IRouteInformation | undefined> | undefined;
backButtonDispatcher: IBackButtonDispatcher | undefined;
routeInformationParser: IRouteInformationParser<Object | undefined> | undefined;
routerDelegate: IRouterDelegate<Object | undefined>;
routerState: I_RouterState<Object | undefined>;
child: IWidget;
key: IKey | undefined;
updateShouldNotify: (oldWidget: unknown) => boolean;
createElement: () => IInheritedElement;
toStringShort: () => string;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class _RouterScope

 implements IInheritedWidget, IDiagnosticable
{    public readonly routeInformationProvider: IValueListenable<IRouteInformation | undefined> | undefined = undefined as any;
    public readonly backButtonDispatcher: IBackButtonDispatcher | undefined = undefined as any;
    public readonly routeInformationParser: IRouteInformationParser<Object | undefined> | undefined = undefined as any;
    public readonly routerDelegate: IRouterDelegate<Object | undefined> = undefined as any;
    public readonly routerState: I_RouterState<Object | undefined> = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  key? : IKey | undefined, backButtonDispatcher? : IBackButtonDispatcher | undefined, child : IWidget, routeInformationParser? : IRouteInformationParser<Object | undefined> | undefined, routeInformationProvider? : IValueListenable<IRouteInformation | undefined> | undefined, routerDelegate : IRouterDelegate<Object | undefined>, routerState : I_RouterState<Object | undefined>,}){
flutter.widgets._routerScope(this, props);}
    private readonly _dart_updateShouldNotify: (oldWidget: any) => boolean = undefined as any;
    private readonly _dart_createElement: () => IInheritedElement = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public updateShouldNotify(oldWidget: any) : boolean {
    return this._dart_updateShouldNotify(oldWidget);
}
public createElement() : IInheritedElement {
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
