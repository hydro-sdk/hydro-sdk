
import { ISemanticsConfiguration } from "../semantics/semanticsConfiguration";
import { IRenderObject } from "./renderObject";
import { I_InterestingSemanticsFragment } from "./_interestingSemanticsFragment";
import { IRect } from "../../dart/ui/rect";
import { IList } from "../../dart/core/list";
import { ISemanticsNode } from "../semantics/semanticsNode";
import { IIterable } from "../../dart/core/iterable";
import { ISemanticsTag } from "../semantics/semanticsTag";
declare const flutter: {
rendering: {
_switchableSemanticsFragment: (this: void, _switchableSemanticsFragment: I_SwitchableSemanticsFragment, props : {  config : ISemanticsConfiguration, dropsSemanticsOfPreviousSiblings : boolean, mergeIntoParent : boolean, owner : IRenderObject,}) => I_SwitchableSemanticsFragment
}
};
export interface I_SwitchableSemanticsFragment


{
dropsSemanticsOfPreviousSiblings: boolean;
compileChildren: ( props : {  parentPaintClipRect? : IRect | undefined, parentSemanticsClipRect? : IRect | undefined, elevationAdjustment : number, result : IList<ISemanticsNode>,}) => void;
getConfig: () => ISemanticsConfiguration | undefined;
addAll: (fragments: IIterable<I_InterestingSemanticsFragment>) => void;
markAsExplicit: () => void;
addTags: (tags?: IIterable<ISemanticsTag> | undefined) => void;
addAncestor: (ancestor: IRenderObject) => void;
getOwner: () => IRenderObject;
getHasConfigForParent: () => boolean;
getInterestingFragments: () => IList<I_InterestingSemanticsFragment>;
toString: () => string;
getHashCode: () => number;
}export class _SwitchableSemanticsFragment

 implements I_InterestingSemanticsFragment
{    public readonly dropsSemanticsOfPreviousSiblings: boolean = undefined as any;
public constructor( props : {  config : ISemanticsConfiguration, dropsSemanticsOfPreviousSiblings : boolean, mergeIntoParent : boolean, owner : IRenderObject,}){
flutter.rendering._switchableSemanticsFragment(this, props);}
    private readonly _dart_compileChildren: ( props : {  parentPaintClipRect? : IRect | undefined, parentSemanticsClipRect? : IRect | undefined, elevationAdjustment : number, result : IList<ISemanticsNode>,}) => void = undefined as any;
    private readonly _dart_getConfig: () => ISemanticsConfiguration | undefined = undefined as any;
    private readonly _dart_addAll: (fragments: IIterable<I_InterestingSemanticsFragment>) => void = undefined as any;
    private readonly _dart_markAsExplicit: () => void = undefined as any;
    private readonly _dart_addTags: (tags?: IIterable<ISemanticsTag> | undefined) => void = undefined as any;
    private readonly _dart_addAncestor: (ancestor: IRenderObject) => void = undefined as any;
    private readonly _dart_getOwner: () => IRenderObject = undefined as any;
    private readonly _dart_getHasConfigForParent: () => boolean = undefined as any;
    private readonly _dart_getInterestingFragments: () => IList<I_InterestingSemanticsFragment> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public compileChildren( props : {  parentPaintClipRect? : IRect | undefined, parentSemanticsClipRect? : IRect | undefined, elevationAdjustment : number, result : IList<ISemanticsNode>,}) : void {
    return this._dart_compileChildren(props);
}
public getConfig() : ISemanticsConfiguration | undefined {
    return this._dart_getConfig();
}
public addAll(fragments: IIterable<I_InterestingSemanticsFragment>) : void {
    return this._dart_addAll(fragments);
}
public markAsExplicit() : void {
    return this._dart_markAsExplicit();
}
public addTags(tags?: IIterable<ISemanticsTag> | undefined) : void {
    return this._dart_addTags(tags);
}
public addAncestor(ancestor: IRenderObject) : void {
    return this._dart_addAncestor(ancestor);
}
public getOwner() : IRenderObject {
    return this._dart_getOwner();
}
public getHasConfigForParent() : boolean {
    return this._dart_getHasConfigForParent();
}
public getInterestingFragments() : IList<I_InterestingSemanticsFragment> {
    return this._dart_getInterestingFragments();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
