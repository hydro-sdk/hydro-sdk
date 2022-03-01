
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IWidgetInspectorService } from "./widgetInspectorService";
import { IDiagnosticsSerializationDelegate } from "../foundation/diagnosticsSerializationDelegate";
import { IList } from "../../dart/core/list";
declare const flutter: {
widgets: {
inspectorSerializationDelegate: (this: void, inspectorSerializationDelegate: IInspectorSerializationDelegate, props : {  addAdditionalPropertiesCallback? : (__: IInspectorSerializationDelegate) => {[index: string]: Object} | undefined | undefined, expandPropertyValues : boolean, groupName? : string | undefined, includeProperties : boolean, maxDescendentsTruncatableNode : number, subtreeDepth : number, summaryTree : boolean, service : IWidgetInspectorService,}) => IInspectorSerializationDelegate
}
};
export interface IInspectorSerializationDelegate


{
service: IWidgetInspectorService;
groupName: string | undefined;
summaryTree: boolean;
maxDescendentsTruncatableNode: number;
includeProperties: boolean;
subtreeDepth: number;
expandPropertyValues: boolean;
additionalNodeProperties: (node: IDiagnosticsNode) => {[index: string]: Object | undefined};
delegateForNode: (node: IDiagnosticsNode) => IDiagnosticsSerializationDelegate;
filterChildren: (nodes: IList<IDiagnosticsNode>, owner: IDiagnosticsNode) => IList<IDiagnosticsNode>;
filterProperties: (nodes: IList<IDiagnosticsNode>, owner: IDiagnosticsNode) => IList<IDiagnosticsNode>;
truncateNodesList: (nodes: IList<IDiagnosticsNode>, owner?: IDiagnosticsNode | undefined) => IList<IDiagnosticsNode>;
copyWith: ( props? : {  includeProperties? : boolean | undefined, subtreeDepth? : number | undefined,}) => IDiagnosticsSerializationDelegate;
getSubtreeDepth: () => number;
getIncludeProperties: () => boolean;
getExpandPropertyValues: () => boolean;
}export class InspectorSerializationDelegate

 implements IDiagnosticsSerializationDelegate
{    public readonly service: IWidgetInspectorService = undefined as any;
    public readonly groupName: string | undefined = undefined as any;
    public readonly summaryTree: boolean = undefined as any;
    public readonly maxDescendentsTruncatableNode: number = undefined as any;
    public readonly includeProperties: boolean = undefined as any;
    public readonly subtreeDepth: number = undefined as any;
    public readonly expandPropertyValues: boolean = undefined as any;
public constructor( props : {  addAdditionalPropertiesCallback? : (__: IInspectorSerializationDelegate) => {[index: string]: Object} | undefined | undefined, expandPropertyValues? : boolean, groupName? : string | undefined, includeProperties? : boolean, maxDescendentsTruncatableNode? : number, subtreeDepth? : number, summaryTree? : boolean, service : IWidgetInspectorService,}){
flutter.widgets.inspectorSerializationDelegate(this, {
...inspectorSerializationDelegateDefaultProps,
...props
});}
    private readonly _dart_additionalNodeProperties: (node: IDiagnosticsNode) => {[index: string]: Object | undefined} = undefined as any;
    private readonly _dart_delegateForNode: (node: IDiagnosticsNode) => IDiagnosticsSerializationDelegate = undefined as any;
    private readonly _dart_filterChildren: (nodes: IList<IDiagnosticsNode>, owner: IDiagnosticsNode) => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_filterProperties: (nodes: IList<IDiagnosticsNode>, owner: IDiagnosticsNode) => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_truncateNodesList: (nodes: IList<IDiagnosticsNode>, owner?: IDiagnosticsNode | undefined) => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_copyWith: ( props? : {  includeProperties? : boolean | undefined, subtreeDepth? : number | undefined,}) => IDiagnosticsSerializationDelegate = undefined as any;
    private readonly _dart_getSubtreeDepth: () => number = undefined as any;
    private readonly _dart_getIncludeProperties: () => boolean = undefined as any;
    private readonly _dart_getExpandPropertyValues: () => boolean = undefined as any;
public additionalNodeProperties(node: IDiagnosticsNode) : {[index: string]: Object | undefined} {
    return this._dart_additionalNodeProperties(node);
}
public delegateForNode(node: IDiagnosticsNode) : IDiagnosticsSerializationDelegate {
    return this._dart_delegateForNode(node);
}
public filterChildren(nodes: IList<IDiagnosticsNode>, owner: IDiagnosticsNode) : IList<IDiagnosticsNode> {
    return this._dart_filterChildren(nodes, owner);
}
public filterProperties(nodes: IList<IDiagnosticsNode>, owner: IDiagnosticsNode) : IList<IDiagnosticsNode> {
    return this._dart_filterProperties(nodes, owner);
}
public truncateNodesList(nodes: IList<IDiagnosticsNode>, owner?: IDiagnosticsNode | undefined) : IList<IDiagnosticsNode> {
    return this._dart_truncateNodesList(nodes, owner);
}
public copyWith( props? : {  includeProperties? : boolean | undefined, subtreeDepth? : number | undefined,}) : IDiagnosticsSerializationDelegate {
    return this._dart_copyWith(props);
}
public getSubtreeDepth() : number {
    return this._dart_getSubtreeDepth();
}
public getIncludeProperties() : boolean {
    return this._dart_getIncludeProperties();
}
public getExpandPropertyValues() : boolean {
    return this._dart_getExpandPropertyValues();
}
}
const inspectorSerializationDelegateDefaultProps = {
    expandPropertyValues: true,
    includeProperties: false,
    maxDescendentsTruncatableNode: -1,
    subtreeDepth: 1,
    summaryTree: false,
};
