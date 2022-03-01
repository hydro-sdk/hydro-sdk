
import { IRect } from "../../dart/ui/rect";
declare const flutter: {
rendering: {
revealedOffset: (this: void, revealedOffset: IRevealedOffset, props : {  offset : number, rect : IRect,}) => IRevealedOffset
}
};
export interface IRevealedOffset


{
offset: number;
rect: IRect;
toString: () => string;
}export class RevealedOffset


{    public readonly offset: number = undefined as any;
    public readonly rect: IRect = undefined as any;
public constructor( props : {  offset : number, rect : IRect,}){
flutter.rendering.revealedOffset(this, props);}
    private readonly _dart_toString: () => string = undefined as any;
public toString() : string {
    return this._dart_toString();
}
}
