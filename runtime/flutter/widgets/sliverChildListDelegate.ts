
import { IWidget } from "./widget";
import { IList } from "../../dart/core/list";
import { ISliverChildDelegate } from "./sliverChildDelegate";
import { IBuildContext } from "./buildContext";
import { IKey } from "../foundation/key";
declare const flutter: {
widgets: {
sliverChildListDelegate: (this: void, sliverChildListDelegate: ISliverChildListDelegate, children: IList<IWidget>, props : {  addAutomaticKeepAlives : boolean, addRepaintBoundaries : boolean, addSemanticIndexes : boolean, semanticIndexCallback : (widget: IWidget, localIndex: number) => number | undefined, semanticIndexOffset : number,}) => ISliverChildListDelegate
}
};
export interface ISliverChildListDelegate


{
addAutomaticKeepAlives: boolean;
addRepaintBoundaries: boolean;
addSemanticIndexes: boolean;
semanticIndexOffset: number;
children: IList<IWidget>;
findIndexByKey: (key: IKey) => number | undefined;
build: (context: IBuildContext, index: number) => IWidget | undefined;
getEstimatedChildCount: () => number | undefined;
shouldRebuild: (oldDelegate: unknown) => boolean;
estimateMaxScrollOffset: (firstIndex: number, lastIndex: number, leadingScrollOffset: number, trailingScrollOffset: number) => number | undefined;
didFinishLayout: (firstIndex: number, lastIndex: number) => void;
toString: () => string;
debugFillDescription: (description: IList<string>) => void;
getHashCode: () => number;
}export class SliverChildListDelegate

 implements ISliverChildDelegate
{    public readonly addAutomaticKeepAlives: boolean = undefined as any;
    public readonly addRepaintBoundaries: boolean = undefined as any;
    public readonly addSemanticIndexes: boolean = undefined as any;
    public readonly semanticIndexOffset: number = undefined as any;
    public readonly children: IList<IWidget> = undefined as any;
public constructor(children: IList<IWidget>, props : {  addAutomaticKeepAlives? : boolean, addRepaintBoundaries? : boolean, addSemanticIndexes? : boolean, semanticIndexCallback : (widget: IWidget, localIndex: number) => number | undefined, semanticIndexOffset? : number,}){
flutter.widgets.sliverChildListDelegate(this, children, {
...sliverChildListDelegateDefaultProps,
...props
});}
    private readonly _dart_findIndexByKey: (key: IKey) => number | undefined = undefined as any;
    private readonly _dart_build: (context: IBuildContext, index: number) => IWidget | undefined = undefined as any;
    private readonly _dart_getEstimatedChildCount: () => number | undefined = undefined as any;
    private readonly _dart_shouldRebuild: (oldDelegate: any) => boolean = undefined as any;
    private readonly _dart_estimateMaxScrollOffset: (firstIndex: number, lastIndex: number, leadingScrollOffset: number, trailingScrollOffset: number) => number | undefined = undefined as any;
    private readonly _dart_didFinishLayout: (firstIndex: number, lastIndex: number) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_debugFillDescription: (description: IList<string>) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public findIndexByKey(key: IKey) : number | undefined {
    return this._dart_findIndexByKey(key);
}
public build(context: IBuildContext, index: number) : IWidget | undefined {
    return this._dart_build(context, index);
}
public getEstimatedChildCount() : number | undefined {
    return this._dart_getEstimatedChildCount();
}
public shouldRebuild(oldDelegate: any) : boolean {
    return this._dart_shouldRebuild(oldDelegate);
}
public estimateMaxScrollOffset(firstIndex: number, lastIndex: number, leadingScrollOffset: number, trailingScrollOffset: number) : number | undefined {
    return this._dart_estimateMaxScrollOffset(firstIndex, lastIndex, leadingScrollOffset, trailingScrollOffset);
}
public didFinishLayout(firstIndex: number, lastIndex: number) : void {
    return this._dart_didFinishLayout(firstIndex, lastIndex);
}
public toString() : string {
    return this._dart_toString();
}
public debugFillDescription(description: IList<string>) : void {
    return this._dart_debugFillDescription(description);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const sliverChildListDelegateDefaultProps = {
    addAutomaticKeepAlives: true,
    addRepaintBoundaries: true,
    addSemanticIndexes: true,
    semanticIndexOffset: 0,
};
