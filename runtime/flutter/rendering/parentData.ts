
declare const flutter: {
rendering: {
parentData: (this: void, parentData: IParentData) => IParentData
}
};
export interface IParentData


{
detach: () => void;
toString: () => string;
}export class ParentData


{public constructor(){
flutter.rendering.parentData(this);}
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public detach() : void {
    return this._dart_detach();
}
public toString() : string {
    return this._dart_toString();
}
}
