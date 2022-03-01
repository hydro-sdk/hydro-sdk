
import { DiagnosticLevel } from "./diagnosticLevel";
import { ITextTreeConfiguration } from "./textTreeConfiguration";
import { IDiagnosticsNode } from "./diagnosticsNode";
declare const flutter: {
foundation: {
textTreeRenderer: (this: void, textTreeRenderer: ITextTreeRenderer, props : {  maxDescendentsTruncatableNode : number, minLevel : DiagnosticLevel, wrapWidth : number, wrapWidthProperties : number,}) => ITextTreeRenderer
}
};
export interface ITextTreeRenderer


{
render: (node: IDiagnosticsNode, props : {  parentConfiguration? : ITextTreeConfiguration | undefined, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
}export class TextTreeRenderer


{public constructor( props : {  maxDescendentsTruncatableNode? : number, minLevel? : DiagnosticLevel, wrapWidth? : number, wrapWidthProperties? : number,}){
flutter.foundation.textTreeRenderer(this, {
...textTreeRendererDefaultProps,
...props
});}
    private readonly _dart_render: (node: IDiagnosticsNode, props : {  parentConfiguration? : ITextTreeConfiguration | undefined, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
public render(node: IDiagnosticsNode, props : {  parentConfiguration? : ITextTreeConfiguration | undefined, prefixLineOne? : string, prefixOtherLines? : string | undefined,}) : string {
    return this._dart_render(node, {
...renderDefaultProps,
...props
});
}
}
const textTreeRendererDefaultProps = {
    maxDescendentsTruncatableNode: -1,
    minLevel: DiagnosticLevel.debug,
    wrapWidth: 100,
    wrapWidthProperties: 65,
};
const renderDefaultProps = {
    prefixLineOne: "",
};
