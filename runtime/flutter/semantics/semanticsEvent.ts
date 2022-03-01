
declare const flutter: {
semantics: {
semanticsEvent: (this: void, semanticsEvent: ISemanticsEvent, type: string) => ISemanticsEvent
}
};
export interface ISemanticsEvent


{
type: string;
toMap: ( props? : {  nodeId? : number | undefined,}) => {[index: string]: any};
getDataMap: () => {[index: string]: any};
toString: () => string;
}export class SemanticsEvent


{    public readonly type: string = undefined as any;
public constructor(type: string){
flutter.semantics.semanticsEvent(this, type);}
    private readonly _dart_toMap: ( props? : {  nodeId? : number | undefined,}) => {[index: string]: any} = undefined as any;
    private readonly _dart_getDataMap: () => {[index: string]: any} = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public toMap( props? : {  nodeId? : number | undefined,}) : {[index: string]: any} {
    return this._dart_toMap(props);
}
public getDataMap() : {[index: string]: any} {
    return this._dart_getDataMap();
}
public toString() : string {
    return this._dart_toString();
}
}
