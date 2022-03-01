
import { IByteData } from "../../dart/typed_data/byteData";
import { IEndian } from "../../dart/typed_data/endian";
import { IUint8List } from "../../dart/typed_data/uint8List";
import { IInt32List } from "../../dart/typed_data/int32List";
import { IInt64List } from "../../dart/typed_data/int64List";
import { IFloat32List } from "../../dart/typed_data/float32List";
import { IFloat64List } from "../../dart/typed_data/float64List";
declare const flutter: {
foundation: {
readBuffer: (this: void, readBuffer: IReadBuffer, data: IByteData) => IReadBuffer
}
};
export interface IReadBuffer


{
data: IByteData;
getHasRemaining: () => boolean;
getUint8: () => number;
getUint16: ( props? : {  endian? : IEndian | undefined,}) => number;
getUint32: ( props? : {  endian? : IEndian | undefined,}) => number;
getInt32: ( props? : {  endian? : IEndian | undefined,}) => number;
getInt64: ( props? : {  endian? : IEndian | undefined,}) => number;
getFloat64: ( props? : {  endian? : IEndian | undefined,}) => number;
getUint8List: (length: number) => IUint8List;
getInt32List: (length: number) => IInt32List;
getInt64List: (length: number) => IInt64List;
getFloat32List: (length: number) => IFloat32List;
getFloat64List: (length: number) => IFloat64List;
}export class ReadBuffer


{    public readonly data: IByteData = undefined as any;
public constructor(data: IByteData){
flutter.foundation.readBuffer(this, data);}
    private readonly _dart_getHasRemaining: () => boolean = undefined as any;
    private readonly _dart_getUint8: () => number = undefined as any;
    private readonly _dart_getUint16: ( props? : {  endian? : IEndian | undefined,}) => number = undefined as any;
    private readonly _dart_getUint32: ( props? : {  endian? : IEndian | undefined,}) => number = undefined as any;
    private readonly _dart_getInt32: ( props? : {  endian? : IEndian | undefined,}) => number = undefined as any;
    private readonly _dart_getInt64: ( props? : {  endian? : IEndian | undefined,}) => number = undefined as any;
    private readonly _dart_getFloat64: ( props? : {  endian? : IEndian | undefined,}) => number = undefined as any;
    private readonly _dart_getUint8List: (length: number) => IUint8List = undefined as any;
    private readonly _dart_getInt32List: (length: number) => IInt32List = undefined as any;
    private readonly _dart_getInt64List: (length: number) => IInt64List = undefined as any;
    private readonly _dart_getFloat32List: (length: number) => IFloat32List = undefined as any;
    private readonly _dart_getFloat64List: (length: number) => IFloat64List = undefined as any;
public getHasRemaining() : boolean {
    return this._dart_getHasRemaining();
}
public getUint8() : number {
    return this._dart_getUint8();
}
public getUint16( props? : {  endian? : IEndian | undefined,}) : number {
    return this._dart_getUint16(props);
}
public getUint32( props? : {  endian? : IEndian | undefined,}) : number {
    return this._dart_getUint32(props);
}
public getInt32( props? : {  endian? : IEndian | undefined,}) : number {
    return this._dart_getInt32(props);
}
public getInt64( props? : {  endian? : IEndian | undefined,}) : number {
    return this._dart_getInt64(props);
}
public getFloat64( props? : {  endian? : IEndian | undefined,}) : number {
    return this._dart_getFloat64(props);
}
public getUint8List(length: number) : IUint8List {
    return this._dart_getUint8List(length);
}
public getInt32List(length: number) : IInt32List {
    return this._dart_getInt32List(length);
}
public getInt64List(length: number) : IInt64List {
    return this._dart_getInt64List(length);
}
public getFloat32List(length: number) : IFloat32List {
    return this._dart_getFloat32List(length);
}
public getFloat64List(length: number) : IFloat64List {
    return this._dart_getFloat64List(length);
}
}
