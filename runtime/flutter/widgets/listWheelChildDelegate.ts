
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
declare const flutter: {
widgets: {
listWheelChildDelegate: (this: void, listWheelChildDelegate: IListWheelChildDelegate) => IListWheelChildDelegate
}
};
export interface IListWheelChildDelegate


{
build: (context: IBuildContext, index: number) => IWidget | undefined;
getEstimatedChildCount: () => number | undefined;
trueIndexOf: (index: number) => number;
shouldRebuild: (oldDelegate: unknown) => boolean;
}export class ListWheelChildDelegate


{public constructor(){
flutter.widgets.listWheelChildDelegate(this);}
    private readonly _dart_build: (context: IBuildContext, index: number) => IWidget | undefined = undefined as any;
    private readonly _dart_getEstimatedChildCount: () => number | undefined = undefined as any;
    private readonly _dart_trueIndexOf: (index: number) => number = undefined as any;
    private readonly _dart_shouldRebuild: (oldDelegate: any) => boolean = undefined as any;
public build(context: IBuildContext, index: number) : IWidget | undefined {
    return this._dart_build(context, index);
}
public getEstimatedChildCount() : number | undefined {
    return this._dart_getEstimatedChildCount();
}
public trueIndexOf(index: number) : number {
    return this._dart_trueIndexOf(index);
}
public shouldRebuild(oldDelegate: any) : boolean {
    return this._dart_shouldRebuild(oldDelegate);
}
}
