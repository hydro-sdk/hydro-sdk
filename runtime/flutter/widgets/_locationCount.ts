
import { I_Location } from "./_location";
declare const flutter: {
widgets: {
_locationCount: (this: void, _locationCount: I_LocationCount, props : {  id : number, local : boolean, location : I_Location,}) => I_LocationCount
}
};
export interface I_LocationCount


{
id: number;
local: boolean;
location: I_Location;
getCount: () => number;
reset: () => void;
increment: () => void;
}export class _LocationCount


{    public readonly id: number = undefined as any;
    public readonly local: boolean = undefined as any;
    public readonly location: I_Location = undefined as any;
public constructor( props : {  id : number, local : boolean, location : I_Location,}){
flutter.widgets._locationCount(this, props);}
    private readonly _dart_getCount: () => number = undefined as any;
    private readonly _dart_reset: () => void = undefined as any;
    private readonly _dart_increment: () => void = undefined as any;
public getCount() : number {
    return this._dart_getCount();
}
public reset() : void {
    return this._dart_reset();
}
public increment() : void {
    return this._dart_increment();
}
}
