
declare const flutter: {
semantics: {
semanticsTag: (this: void, semanticsTag: ISemanticsTag, name: string) => ISemanticsTag
}
};
export interface ISemanticsTag


{
name: string;
toString: () => string;
}export class SemanticsTag


{    public readonly name: string = undefined as any;
public constructor(name: string){
flutter.semantics.semanticsTag(this, name);}
    private readonly _dart_toString: () => string = undefined as any;
public toString() : string {
    return this._dart_toString();
}
}
