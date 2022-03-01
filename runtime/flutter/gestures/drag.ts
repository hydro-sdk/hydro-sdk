
import { IDragUpdateDetails } from "./dragUpdateDetails";
import { IDragEndDetails } from "./dragEndDetails";
declare const flutter: {
gestures: {
drag: (this: void, drag: IDrag) => IDrag
}
};
export interface IDrag


{
update: (details: IDragUpdateDetails) => void;
end: (details: IDragEndDetails) => void;
cancel: () => void;
}export class Drag


{public constructor(){
flutter.gestures.drag(this);}
    private readonly _dart_update: (details: IDragUpdateDetails) => void = undefined as any;
    private readonly _dart_end: (details: IDragEndDetails) => void = undefined as any;
    private readonly _dart_cancel: () => void = undefined as any;
public update(details: IDragUpdateDetails) : void {
    return this._dart_update(details);
}
public end(details: IDragEndDetails) : void {
    return this._dart_end(details);
}
public cancel() : void {
    return this._dart_cancel();
}
}
