
import { IPipelineOwner } from "../rendering/pipelineOwner";
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
declare const flutter: {
widgets: {
_semanticsClient: (this: void, _semanticsClient: I_SemanticsClient, pipelineOwner: IPipelineOwner) => I_SemanticsClient
}
};
export interface I_SemanticsClient


{
generation: number;
dispose: () => void;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
getHasListeners: () => boolean;
toString: () => string;
getHashCode: () => number;
}export class _SemanticsClient

 implements IChangeNotifier, IListenable
{    public readonly generation: number = undefined as any;
public constructor(pipelineOwner: IPipelineOwner){
flutter.widgets._semanticsClient(this, pipelineOwner);}
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public dispose() : void {
    return this._dart_dispose();
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public getHasListeners() : boolean {
    return this._dart_getHasListeners();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
