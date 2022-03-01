
import { I_Vector } from "./_vector";
declare const flutter: {
gestures: {
_matrix: (this: void, _matrix: I_Matrix, rows: number, cols: number) => I_Matrix
}
};
export interface I_Matrix


{
get: (row: number, col: number) => number;
set: (row: number, col: number, value: number) => void;
getRow: (row: number) => I_Vector;
}export class _Matrix


{public constructor(rows: number, cols: number){
flutter.gestures._matrix(this, rows, cols);}
    private readonly _dart_get: (row: number, col: number) => number = undefined as any;
    private readonly _dart_set: (row: number, col: number, value: number) => void = undefined as any;
    private readonly _dart_getRow: (row: number) => I_Vector = undefined as any;
public get(row: number, col: number) : number {
    return this._dart_get(row, col);
}
public set(row: number, col: number, value: number) : void {
    return this._dart_set(row, col, value);
}
public getRow(row: number) : I_Vector {
    return this._dart_getRow(row);
}
}
