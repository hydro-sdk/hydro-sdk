
import { IList } from "../../dart/core/list";
import { IWidget } from "./widget";
import { IListWheelChildDelegate } from "./listWheelChildDelegate";
import { IBuildContext } from "./buildContext";
declare const flutter: {
widgets: {
listWheelChildListDelegate: (this: void, listWheelChildListDelegate: IListWheelChildListDelegate, props : {  children : IList<IWidget>,}) => IListWheelChildListDelegate
}
};
export interface IListWheelChildListDelegate


{
children: IList<IWidget>;
getEstimatedChildCount: () => number;
build: (context: IBuildContext, index: number) => IWidget | undefined;
shouldRebuild: (oldDelegate: unknown) => boolean;
trueIndexOf: (index: number) => number;
toString: () => string;
getHashCode: () => number;
}export class ListWheelChildListDelegate

 implements IListWheelChildDelegate
{    public readonly children: IList<IWidget> = undefined as any;
public constructor( props : {  children : IList<IWidget>,}){
flutter.widgets.listWheelChildListDelegate(this, props);}
    private readonly _dart_getEstimatedChildCount: () => number = undefined as any;
    private readonly _dart_build: (context: IBuildContext, index: number) => IWidget | undefined = undefined as any;
    private readonly _dart_shouldRebuild: (oldDelegate: any) => boolean = undefined as any;
    private readonly _dart_trueIndexOf: (index: number) => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getEstimatedChildCount() : number {
    return this._dart_getEstimatedChildCount();
}
public build(context: IBuildContext, index: number) : IWidget | undefined {
    return this._dart_build(context, index);
}
public shouldRebuild(oldDelegate: any) : boolean {
    return this._dart_shouldRebuild(oldDelegate);
}
public trueIndexOf(index: number) : number {
    return this._dart_trueIndexOf(index);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
