declare const dart: {
    typed_data: {
        endianBig: (this: void) => Endian;
        endianLittle: (this: void) => Endian;
    };
};
export interface IEndian {}
export class Endian {
    public static big = dart.typed_data.endianBig();
    public static little = dart.typed_data.endianLittle();
}
