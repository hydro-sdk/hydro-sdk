export interface IEndian {}
export class Endian {
    public static big = Endian._(false);
    public static little = Endian._(true);
}
