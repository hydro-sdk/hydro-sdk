
import { IGestureRecognizerFactory } from "./gestureRecognizerFactory";
import { I_AnyTapGestureRecognizer } from "./_anyTapGestureRecognizer";
declare const flutter: {
widgets: {
_anyTapGestureRecognizerFactory: (this: void, _anyTapGestureRecognizerFactory: I_AnyTapGestureRecognizerFactory, props? : {  onAnyTapUp? : () => void | undefined,}) => I_AnyTapGestureRecognizerFactory
}
};
export interface I_AnyTapGestureRecognizerFactory


{
constructor: () => I_AnyTapGestureRecognizer;
initializer: (instance: I_AnyTapGestureRecognizer) => void;
toString: () => string;
getHashCode: () => number;
}export class _AnyTapGestureRecognizerFactory

 implements IGestureRecognizerFactory<I_AnyTapGestureRecognizer>
{public constructor( props? : {  onAnyTapUp? : () => void | undefined,}){
flutter.widgets._anyTapGestureRecognizerFactory(this, props);}
    private readonly _dart_constructor: () => I_AnyTapGestureRecognizer = undefined as any;
    private readonly _dart_initializer: (instance: I_AnyTapGestureRecognizer) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public constructor() : I_AnyTapGestureRecognizer {
    return this._dart_constructor();
}
public initializer(instance: I_AnyTapGestureRecognizer) : void {
    return this._dart_initializer(instance);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
