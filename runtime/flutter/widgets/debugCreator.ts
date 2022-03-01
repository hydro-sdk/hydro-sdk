
import { IElement } from "./element";
declare const flutter: {
widgets: {
debugCreator: (this: void, debugCreator: IDebugCreator, element: IElement) => IDebugCreator
}
};
export interface IDebugCreator


{
element: IElement;
toString: () => string;
}export class DebugCreator


{    public readonly element: IElement = undefined as any;
public constructor(element: IElement){
flutter.widgets.debugCreator(this, element);}
    private readonly _dart_toString: () => string = undefined as any;
public toString() : string {
    return this._dart_toString();
}
}
