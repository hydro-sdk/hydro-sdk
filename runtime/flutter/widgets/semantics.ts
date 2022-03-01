
import { IAttributedString } from "../semantics/attributedString";
import { IWidget } from "./widget";
import { IMap } from "../../dart/core/map";
import { ICustomSemanticsAction } from "../semantics/customSemanticsAction";
import { IKey } from "../foundation/key";
import { ITextSelection } from "../services/textSelection";
import { ISemanticsSortKey } from "../semantics/semanticsSortKey";
import { ISemanticsTag } from "../semantics/semanticsTag";
import { TextDirection } from "../../dart/ui/textDirection";
import { ISingleChildRenderObjectWidget } from "./singleChildRenderObjectWidget";
import { ISingleChildRenderObjectElement } from "./singleChildRenderObjectElement";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IRenderSemanticsAnnotations } from "../rendering/renderSemanticsAnnotations";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IRenderObject } from "../rendering/renderObject";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
import { ISemanticsProperties } from "../semantics/semanticsProperties";
declare const flutter: {
widgets: {
semantics: (this: void, semantics: ISemantics, props : {  attributedDecreasedValue? : IAttributedString | undefined, attributedHint? : IAttributedString | undefined, attributedIncreasedValue? : IAttributedString | undefined, attributedLabel? : IAttributedString | undefined, attributedValue? : IAttributedString | undefined, button? : boolean | undefined, checked? : boolean | undefined, child? : IWidget | undefined, container : boolean, currentValueLength? : number | undefined, customSemanticsActions? : IMap<ICustomSemanticsAction, () => void> | undefined, decreasedValue? : string | undefined, enabled? : boolean | undefined, excludeSemantics : boolean, explicitChildNodes : boolean, focusable? : boolean | undefined, focused? : boolean | undefined, header? : boolean | undefined, hidden? : boolean | undefined, hint? : string | undefined, image? : boolean | undefined, inMutuallyExclusiveGroup? : boolean | undefined, increasedValue? : string | undefined, key? : IKey | undefined, keyboardKey? : boolean | undefined, label? : string | undefined, link? : boolean | undefined, liveRegion? : boolean | undefined, maxValueLength? : number | undefined, multiline? : boolean | undefined, namesRoute? : boolean | undefined, obscured? : boolean | undefined, onCopy? : () => void | undefined, onCut? : () => void | undefined, onDecrease? : () => void | undefined, onDidGainAccessibilityFocus? : () => void | undefined, onDidLoseAccessibilityFocus? : () => void | undefined, onDismiss? : () => void | undefined, onIncrease? : () => void | undefined, onLongPress? : () => void | undefined, onLongPressHint? : string | undefined, onMoveCursorBackwardByCharacter? : (extendSelection: boolean) => void | undefined, onMoveCursorForwardByCharacter? : (extendSelection: boolean) => void | undefined, onPaste? : () => void | undefined, onScrollDown? : () => void | undefined, onScrollLeft? : () => void | undefined, onScrollRight? : () => void | undefined, onScrollUp? : () => void | undefined, onSetSelection? : (selection: ITextSelection) => void | undefined, onSetText? : (text: string) => void | undefined, onTap? : () => void | undefined, onTapHint? : string | undefined, readOnly? : boolean | undefined, scopesRoute? : boolean | undefined, selected? : boolean | undefined, slider? : boolean | undefined, sortKey? : ISemanticsSortKey | undefined, tagForChildren? : ISemanticsTag | undefined, textDirection? : TextDirection | undefined, textField? : boolean | undefined, toggled? : boolean | undefined, value? : string | undefined,}) => ISemantics
}
};
export interface ISemantics


{
properties: ISemanticsProperties;
container: boolean;
explicitChildNodes: boolean;
excludeSemantics: boolean;
child: IWidget | undefined;
key: IKey | undefined;
createRenderObject: (context: IBuildContext) => IRenderSemanticsAnnotations;
updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
createElement: () => ISingleChildRenderObjectElement;
didUnmountRenderObject: (renderObject: unknown) => void;
toStringShort: () => string;
getHashCode: () => number;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
}export class Semantics

 implements ISingleChildRenderObjectWidget, IDiagnosticable
{    public readonly properties: ISemanticsProperties = undefined as any;
    public readonly container: boolean = undefined as any;
    public readonly explicitChildNodes: boolean = undefined as any;
    public readonly excludeSemantics: boolean = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
public constructor( props : {  attributedDecreasedValue? : IAttributedString | undefined, attributedHint? : IAttributedString | undefined, attributedIncreasedValue? : IAttributedString | undefined, attributedLabel? : IAttributedString | undefined, attributedValue? : IAttributedString | undefined, button? : boolean | undefined, checked? : boolean | undefined, child? : IWidget | undefined, container? : boolean, currentValueLength? : number | undefined, customSemanticsActions? : IMap<ICustomSemanticsAction, () => void> | undefined, decreasedValue? : string | undefined, enabled? : boolean | undefined, excludeSemantics? : boolean, explicitChildNodes? : boolean, focusable? : boolean | undefined, focused? : boolean | undefined, header? : boolean | undefined, hidden? : boolean | undefined, hint? : string | undefined, image? : boolean | undefined, inMutuallyExclusiveGroup? : boolean | undefined, increasedValue? : string | undefined, key? : IKey | undefined, keyboardKey? : boolean | undefined, label? : string | undefined, link? : boolean | undefined, liveRegion? : boolean | undefined, maxValueLength? : number | undefined, multiline? : boolean | undefined, namesRoute? : boolean | undefined, obscured? : boolean | undefined, onCopy? : () => void | undefined, onCut? : () => void | undefined, onDecrease? : () => void | undefined, onDidGainAccessibilityFocus? : () => void | undefined, onDidLoseAccessibilityFocus? : () => void | undefined, onDismiss? : () => void | undefined, onIncrease? : () => void | undefined, onLongPress? : () => void | undefined, onLongPressHint? : string | undefined, onMoveCursorBackwardByCharacter? : (extendSelection: boolean) => void | undefined, onMoveCursorForwardByCharacter? : (extendSelection: boolean) => void | undefined, onPaste? : () => void | undefined, onScrollDown? : () => void | undefined, onScrollLeft? : () => void | undefined, onScrollRight? : () => void | undefined, onScrollUp? : () => void | undefined, onSetSelection? : (selection: ITextSelection) => void | undefined, onSetText? : (text: string) => void | undefined, onTap? : () => void | undefined, onTapHint? : string | undefined, readOnly? : boolean | undefined, scopesRoute? : boolean | undefined, selected? : boolean | undefined, slider? : boolean | undefined, sortKey? : ISemanticsSortKey | undefined, tagForChildren? : ISemanticsTag | undefined, textDirection? : TextDirection | undefined, textField? : boolean | undefined, toggled? : boolean | undefined, value? : string | undefined,}){
flutter.widgets.semantics(this, {
...semanticsDefaultProps,
...props
});}
    private readonly _dart_createRenderObject: (context: IBuildContext) => IRenderSemanticsAnnotations = undefined as any;
    private readonly _dart_updateRenderObject: (context: IBuildContext, renderObject: any) => void = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_createElement: () => ISingleChildRenderObjectElement = undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
public createRenderObject(context: IBuildContext) : IRenderSemanticsAnnotations {
    return this._dart_createRenderObject(context);
}
public updateRenderObject(context: IBuildContext, renderObject: any) : void {
    return this._dart_updateRenderObject(context, renderObject);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public createElement() : ISingleChildRenderObjectElement {
    return this._dart_createElement();
}
public didUnmountRenderObject(renderObject: any) : void {
    return this._dart_didUnmountRenderObject(renderObject);
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
const semanticsDefaultProps = {
    container: false,
    excludeSemantics: false,
    explicitChildNodes: false,
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
