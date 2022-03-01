
import { IByteConversionSinkBase } from "../../dart/convert/byteConversionSinkBase";
import { IList } from "../../dart/core/list";
import { ISink } from "../../dart/core/sink";
import { IUint8List } from "../../dart/typed_data/uint8List";
declare const flutter: {
foundation: {
_outputBuffer: (this: void, _outputBuffer: I_OutputBuffer) => I_OutputBuffer
}
};
export interface I_OutputBuffer


{
add: (chunk: IList<number>) => void;
close: () => void;
getBytes: () => IUint8List;
addSlice: (chunk: IList<number>, start: number, end: number, isLast: boolean) => void;
toString: () => string;
getHashCode: () => number;
}export class _OutputBuffer

 implements IByteConversionSinkBase, ISink<IList<number>>
{public constructor(){
flutter.foundation._outputBuffer(this);}
    private readonly _dart_add: (chunk: IList<number>) => void = undefined as any;
    private readonly _dart_close: () => void = undefined as any;
    private readonly _dart_getBytes: () => IUint8List = undefined as any;
    private readonly _dart_addSlice: (chunk: IList<number>, start: number, end: number, isLast: boolean) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public add(chunk: IList<number>) : void {
    return this._dart_add(chunk);
}
public close() : void {
    return this._dart_close();
}
public getBytes() : IUint8List {
    return this._dart_getBytes();
}
public addSlice(chunk: IList<number>, start: number, end: number, isLast: boolean) : void {
    return this._dart_addSlice(chunk, start, end, isLast);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
