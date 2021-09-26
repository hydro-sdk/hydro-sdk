declare const dart: {
    typed_data: {
        endianBig: (this: void) => IEndian;
        endianLittle: (this: void) => IEndian;
    };
};
export interface IEndian {}
export class Endian {
    public static big = dart.typed_data.endianBig();
    public static little = dart.typed_data.endianLittle();
}
