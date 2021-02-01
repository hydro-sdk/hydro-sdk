import { IFloat32x4 } from "./float32x4";
declare const dart: {
    typed_data: {
        int32x4: (
            this: void,
            int32x4: IInt32x4,
            x: number,
            y: number,
            z: number,
            w: number
        ) => IInt32x4;
        int32x4Bool: (
            x: boolean,
            y: boolean,
            z: boolean,
            w: boolean
        ) => IInt32x4;
        int32x4FromFloat32x4Bits: (x: IFloat32x4) => IInt32x4;
    };
};
export interface IInt32x4 {
    getX: () => number;
    getY: () => number;
    getZ: () => number;
    getW: () => number;
    getSignMask: () => number;
    shuffle: (mask: number) => IInt32x4;
    shuffleMix: (other: IInt32x4, mask: number) => IInt32x4;
    withX: (x: number) => IInt32x4;
    withY: (y: number) => IInt32x4;
    withZ: (z: number) => IInt32x4;
    withW: (w: number) => IInt32x4;
    getFlagX: () => boolean;
    getFlagY: () => boolean;
    getFlagZ: () => boolean;
    getFlagW: () => boolean;
    withFlagX: (x: boolean) => IInt32x4;
    withFlagY: (y: boolean) => IInt32x4;
    withFlagZ: (z: boolean) => IInt32x4;
    withFlagW: (w: boolean) => IInt32x4;
    select: (trueValue: IFloat32x4, falseValue: IFloat32x4) => IFloat32x4;
}
export class Int32x4 {
    public static xxxx = 0x0;
    public static xxxy = 0x40;
    public static xxxz = 0x80;
    public static xxxw = 0xc0;
    public static xxyx = 0x10;
    public static xxyy = 0x50;
    public static xxyz = 0x90;
    public static xxyw = 0xd0;
    public static xxzx = 0x20;
    public static xxzy = 0x60;
    public static xxzz = 0xa0;
    public static xxzw = 0xe0;
    public static xxwx = 0x30;
    public static xxwy = 0x70;
    public static xxwz = 0xb0;
    public static xxww = 0xf0;
    public static xyxx = 0x4;
    public static xyxy = 0x44;
    public static xyxz = 0x84;
    public static xyxw = 0xc4;
    public static xyyx = 0x14;
    public static xyyy = 0x54;
    public static xyyz = 0x94;
    public static xyyw = 0xd4;
    public static xyzx = 0x24;
    public static xyzy = 0x64;
    public static xyzz = 0xa4;
    public static xyzw = 0xe4;
    public static xywx = 0x34;
    public static xywy = 0x74;
    public static xywz = 0xb4;
    public static xyww = 0xf4;
    public static xzxx = 0x8;
    public static xzxy = 0x48;
    public static xzxz = 0x88;
    public static xzxw = 0xc8;
    public static xzyx = 0x18;
    public static xzyy = 0x58;
    public static xzyz = 0x98;
    public static xzyw = 0xd8;
    public static xzzx = 0x28;
    public static xzzy = 0x68;
    public static xzzz = 0xa8;
    public static xzzw = 0xe8;
    public static xzwx = 0x38;
    public static xzwy = 0x78;
    public static xzwz = 0xb8;
    public static xzww = 0xf8;
    public static xwxx = 0xc;
    public static xwxy = 0x4c;
    public static xwxz = 0x8c;
    public static xwxw = 0xcc;
    public static xwyx = 0x1c;
    public static xwyy = 0x5c;
    public static xwyz = 0x9c;
    public static xwyw = 0xdc;
    public static xwzx = 0x2c;
    public static xwzy = 0x6c;
    public static xwzz = 0xac;
    public static xwzw = 0xec;
    public static xwwx = 0x3c;
    public static xwwy = 0x7c;
    public static xwwz = 0xbc;
    public static xwww = 0xfc;
    public static yxxx = 0x1;
    public static yxxy = 0x41;
    public static yxxz = 0x81;
    public static yxxw = 0xc1;
    public static yxyx = 0x11;
    public static yxyy = 0x51;
    public static yxyz = 0x91;
    public static yxyw = 0xd1;
    public static yxzx = 0x21;
    public static yxzy = 0x61;
    public static yxzz = 0xa1;
    public static yxzw = 0xe1;
    public static yxwx = 0x31;
    public static yxwy = 0x71;
    public static yxwz = 0xb1;
    public static yxww = 0xf1;
    public static yyxx = 0x5;
    public static yyxy = 0x45;
    public static yyxz = 0x85;
    public static yyxw = 0xc5;
    public static yyyx = 0x15;
    public static yyyy = 0x55;
    public static yyyz = 0x95;
    public static yyyw = 0xd5;
    public static yyzx = 0x25;
    public static yyzy = 0x65;
    public static yyzz = 0xa5;
    public static yyzw = 0xe5;
    public static yywx = 0x35;
    public static yywy = 0x75;
    public static yywz = 0xb5;
    public static yyww = 0xf5;
    public static yzxx = 0x9;
    public static yzxy = 0x49;
    public static yzxz = 0x89;
    public static yzxw = 0xc9;
    public static yzyx = 0x19;
    public static yzyy = 0x59;
    public static yzyz = 0x99;
    public static yzyw = 0xd9;
    public static yzzx = 0x29;
    public static yzzy = 0x69;
    public static yzzz = 0xa9;
    public static yzzw = 0xe9;
    public static yzwx = 0x39;
    public static yzwy = 0x79;
    public static yzwz = 0xb9;
    public static yzww = 0xf9;
    public static ywxx = 0xd;
    public static ywxy = 0x4d;
    public static ywxz = 0x8d;
    public static ywxw = 0xcd;
    public static ywyx = 0x1d;
    public static ywyy = 0x5d;
    public static ywyz = 0x9d;
    public static ywyw = 0xdd;
    public static ywzx = 0x2d;
    public static ywzy = 0x6d;
    public static ywzz = 0xad;
    public static ywzw = 0xed;
    public static ywwx = 0x3d;
    public static ywwy = 0x7d;
    public static ywwz = 0xbd;
    public static ywww = 0xfd;
    public static zxxx = 0x2;
    public static zxxy = 0x42;
    public static zxxz = 0x82;
    public static zxxw = 0xc2;
    public static zxyx = 0x12;
    public static zxyy = 0x52;
    public static zxyz = 0x92;
    public static zxyw = 0xd2;
    public static zxzx = 0x22;
    public static zxzy = 0x62;
    public static zxzz = 0xa2;
    public static zxzw = 0xe2;
    public static zxwx = 0x32;
    public static zxwy = 0x72;
    public static zxwz = 0xb2;
    public static zxww = 0xf2;
    public static zyxx = 0x6;
    public static zyxy = 0x46;
    public static zyxz = 0x86;
    public static zyxw = 0xc6;
    public static zyyx = 0x16;
    public static zyyy = 0x56;
    public static zyyz = 0x96;
    public static zyyw = 0xd6;
    public static zyzx = 0x26;
    public static zyzy = 0x66;
    public static zyzz = 0xa6;
    public static zyzw = 0xe6;
    public static zywx = 0x36;
    public static zywy = 0x76;
    public static zywz = 0xb6;
    public static zyww = 0xf6;
    public static zzxx = 0xa;
    public static zzxy = 0x4a;
    public static zzxz = 0x8a;
    public static zzxw = 0xca;
    public static zzyx = 0x1a;
    public static zzyy = 0x5a;
    public static zzyz = 0x9a;
    public static zzyw = 0xda;
    public static zzzx = 0x2a;
    public static zzzy = 0x6a;
    public static zzzz = 0xaa;
    public static zzzw = 0xea;
    public static zzwx = 0x3a;
    public static zzwy = 0x7a;
    public static zzwz = 0xba;
    public static zzww = 0xfa;
    public static zwxx = 0xe;
    public static zwxy = 0x4e;
    public static zwxz = 0x8e;
    public static zwxw = 0xce;
    public static zwyx = 0x1e;
    public static zwyy = 0x5e;
    public static zwyz = 0x9e;
    public static zwyw = 0xde;
    public static zwzx = 0x2e;
    public static zwzy = 0x6e;
    public static zwzz = 0xae;
    public static zwzw = 0xee;
    public static zwwx = 0x3e;
    public static zwwy = 0x7e;
    public static zwwz = 0xbe;
    public static zwww = 0xfe;
    public static wxxx = 0x3;
    public static wxxy = 0x43;
    public static wxxz = 0x83;
    public static wxxw = 0xc3;
    public static wxyx = 0x13;
    public static wxyy = 0x53;
    public static wxyz = 0x93;
    public static wxyw = 0xd3;
    public static wxzx = 0x23;
    public static wxzy = 0x63;
    public static wxzz = 0xa3;
    public static wxzw = 0xe3;
    public static wxwx = 0x33;
    public static wxwy = 0x73;
    public static wxwz = 0xb3;
    public static wxww = 0xf3;
    public static wyxx = 0x7;
    public static wyxy = 0x47;
    public static wyxz = 0x87;
    public static wyxw = 0xc7;
    public static wyyx = 0x17;
    public static wyyy = 0x57;
    public static wyyz = 0x97;
    public static wyyw = 0xd7;
    public static wyzx = 0x27;
    public static wyzy = 0x67;
    public static wyzz = 0xa7;
    public static wyzw = 0xe7;
    public static wywx = 0x37;
    public static wywy = 0x77;
    public static wywz = 0xb7;
    public static wyww = 0xf7;
    public static wzxx = 0xb;
    public static wzxy = 0x4b;
    public static wzxz = 0x8b;
    public static wzxw = 0xcb;
    public static wzyx = 0x1b;
    public static wzyy = 0x5b;
    public static wzyz = 0x9b;
    public static wzyw = 0xdb;
    public static wzzx = 0x2b;
    public static wzzy = 0x6b;
    public static wzzz = 0xab;
    public static wzzw = 0xeb;
    public static wzwx = 0x3b;
    public static wzwy = 0x7b;
    public static wzwz = 0xbb;
    public static wzww = 0xfb;
    public static wwxx = 0xf;
    public static wwxy = 0x4f;
    public static wwxz = 0x8f;
    public static wwxw = 0xcf;
    public static wwyx = 0x1f;
    public static wwyy = 0x5f;
    public static wwyz = 0x9f;
    public static wwyw = 0xdf;
    public static wwzx = 0x2f;
    public static wwzy = 0x6f;
    public static wwzz = 0xaf;
    public static wwzw = 0xef;
    public static wwwx = 0x3f;
    public static wwwy = 0x7f;
    public static wwwz = 0xbf;
    public static wwww = 0xff;
    public constructor(x: number, y: number, z: number, w: number) {
        dart.typed_data.int32x4(this, x, y, z, w);
    }
    public static bool(
        x: boolean,
        y: boolean,
        z: boolean,
        w: boolean
    ): IInt32x4 {
        return dart.typed_data.int32x4Bool(x, y, z, w);
    }
    public static fromFloat32x4Bits(x: IFloat32x4): IInt32x4 {
        return dart.typed_data.int32x4FromFloat32x4Bits(x);
    }
    private readonly _dart_getX: () => number = undefined as any;
    private readonly _dart_getY: () => number = undefined as any;
    private readonly _dart_getZ: () => number = undefined as any;
    private readonly _dart_getW: () => number = undefined as any;
    private readonly _dart_getSignMask: () => number = undefined as any;
    private readonly _dart_shuffle: (
        mask: number
    ) => IInt32x4 = undefined as any;
    private readonly _dart_shuffleMix: (
        other: IInt32x4,
        mask: number
    ) => IInt32x4 = undefined as any;
    private readonly _dart_withX: (x: number) => IInt32x4 = undefined as any;
    private readonly _dart_withY: (y: number) => IInt32x4 = undefined as any;
    private readonly _dart_withZ: (z: number) => IInt32x4 = undefined as any;
    private readonly _dart_withW: (w: number) => IInt32x4 = undefined as any;
    private readonly _dart_getFlagX: () => boolean = undefined as any;
    private readonly _dart_getFlagY: () => boolean = undefined as any;
    private readonly _dart_getFlagZ: () => boolean = undefined as any;
    private readonly _dart_getFlagW: () => boolean = undefined as any;
    private readonly _dart_withFlagX: (
        x: boolean
    ) => IInt32x4 = undefined as any;
    private readonly _dart_withFlagY: (
        y: boolean
    ) => IInt32x4 = undefined as any;
    private readonly _dart_withFlagZ: (
        z: boolean
    ) => IInt32x4 = undefined as any;
    private readonly _dart_withFlagW: (
        w: boolean
    ) => IInt32x4 = undefined as any;
    private readonly _dart_select: (
        trueValue: IFloat32x4,
        falseValue: IFloat32x4
    ) => IFloat32x4 = undefined as any;
    public getX(): number {
        return this._dart_getX();
    }
    public getY(): number {
        return this._dart_getY();
    }
    public getZ(): number {
        return this._dart_getZ();
    }
    public getW(): number {
        return this._dart_getW();
    }
    public getSignMask(): number {
        return this._dart_getSignMask();
    }
    public shuffle(mask: number): IInt32x4 {
        return this._dart_shuffle(mask);
    }
    public shuffleMix(other: IInt32x4, mask: number): IInt32x4 {
        return this._dart_shuffleMix(other, mask);
    }
    public withX(x: number): IInt32x4 {
        return this._dart_withX(x);
    }
    public withY(y: number): IInt32x4 {
        return this._dart_withY(y);
    }
    public withZ(z: number): IInt32x4 {
        return this._dart_withZ(z);
    }
    public withW(w: number): IInt32x4 {
        return this._dart_withW(w);
    }
    public getFlagX(): boolean {
        return this._dart_getFlagX();
    }
    public getFlagY(): boolean {
        return this._dart_getFlagY();
    }
    public getFlagZ(): boolean {
        return this._dart_getFlagZ();
    }
    public getFlagW(): boolean {
        return this._dart_getFlagW();
    }
    public withFlagX(x: boolean): IInt32x4 {
        return this._dart_withFlagX(x);
    }
    public withFlagY(y: boolean): IInt32x4 {
        return this._dart_withFlagY(y);
    }
    public withFlagZ(z: boolean): IInt32x4 {
        return this._dart_withFlagZ(z);
    }
    public withFlagW(w: boolean): IInt32x4 {
        return this._dart_withFlagW(w);
    }
    public select(trueValue: IFloat32x4, falseValue: IFloat32x4): IFloat32x4 {
        return this._dart_select(trueValue, falseValue);
    }
}
