
declare const flutter: {
animation: {
_interval: (this: void, _interval: I_Interval, start: number, end: number) => I_Interval
}
};
export interface I_Interval


{
start: number;
end: number;
contains: (t: number) => boolean;
value: (t: number) => number;
toString: () => string;
}export class _Interval


{    public readonly start: number = undefined as any;
    public readonly end: number = undefined as any;
public constructor(start: number, end: number){
flutter.animation._interval(this, start, end);}
    private readonly _dart_contains: (t: number) => boolean = undefined as any;
    private readonly _dart_value: (t: number) => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public contains(t: number) : boolean {
    return this._dart_contains(t);
}
public value(t: number) : number {
    return this._dart_value(t);
}
public toString() : string {
    return this._dart_toString();
}
}
