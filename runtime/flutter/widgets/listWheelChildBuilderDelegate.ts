
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
import { IListWheelChildDelegate } from "./listWheelChildDelegate";
declare const flutter: {
widgets: {
listWheelChildBuilderDelegate: (this: void, listWheelChildBuilderDelegate: IListWheelChildBuilderDelegate, props : {  childCount? : number | undefined, builder : (context: IBuildContext, index: number) => IWidget | undefined,}) => IListWheelChildBuilderDelegate
}
};
export interface IListWheelChildBuilderDelegate


{
childCount: number | undefined;
getEstimatedChildCount: () => number | undefined;
build: (context: IBuildContext, index: number) => IWidget | undefined;
shouldRebuild: (oldDelegate: unknown) => boolean;
trueIndexOf: (index: number) => number;
toString: () => string;
getHashCode: () => number;
}export class ListWheelChildBuilderDelegate

 implements IListWheelChildDelegate
{    public readonly childCount: number | undefined = undefined as any;
public constructor( props : {  childCount? : number | undefined, builder : (context: IBuildContext, index: number) => IWidget | undefined,}){
flutter.widgets.listWheelChildBuilderDelegate(this, props);}
    private readonly _dart_getEstimatedChildCount: () => number | undefined = undefined as any;
    private readonly _dart_build: (context: IBuildContext, index: number) => IWidget | undefined = undefined as any;
    private readonly _dart_shouldRebuild: (oldDelegate: any) => boolean = undefined as any;
    private readonly _dart_trueIndexOf: (index: number) => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getEstimatedChildCount() : number | undefined {
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
