
declare const flutter: {
gestures: {
_vector: (this: void, _vector: I_Vector, size: number) => I_Vector
}
};
export interface I_Vector


{
norm: () => number;
}export class _Vector


{public constructor(size: number){
flutter.gestures._vector(this, size);}
    private readonly _dart_norm: () => number = undefined as any;
public norm() : number {
    return this._dart_norm();
}
}
