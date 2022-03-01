
import { IMatrix4 } from "../../vector_math/matrix4";
import { IValueNotifier } from "../foundation/valueNotifier";
import { IValueListenable } from "../foundation/valueListenable";
import { IListenable } from "../foundation/listenable";
import { IOffset } from "../../dart/ui/offset";
declare const flutter: {
widgets: {
transformationController: (this: void, transformationController: ITransformationController, value?: IMatrix4 | undefined) => ITransformationController
}
};
export interface ITransformationController


{
toScene: (viewportPoint: IOffset) => IOffset;
toString: () => string;
getValue: () => IMatrix4;
setValue: (newValue: IMatrix4) => void;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
dispose: () => void;
getHasListeners: () => boolean;
getHashCode: () => number;
}export class TransformationController

 implements IValueNotifier<IMatrix4>, IValueListenable<IMatrix4>, IListenable
{public constructor(value?: IMatrix4 | undefined){
flutter.widgets.transformationController(this, value);}
    private readonly _dart_toScene: (viewportPoint: IOffset) => IOffset = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getValue: () => IMatrix4 = undefined as any;
    private readonly _dart_setValue: (newValue: IMatrix4) => void = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public toScene(viewportPoint: IOffset) : IOffset {
    return this._dart_toScene(viewportPoint);
}
public toString() : string {
    return this._dart_toString();
}
public getValue() : IMatrix4 {
    return this._dart_getValue();
}
public setValue(newValue: IMatrix4) : void {
    return this._dart_setValue(newValue);
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public dispose() : void {
    return this._dart_dispose();
}
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public getHasListeners() : boolean {
    return this._dart_getHasListeners();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
