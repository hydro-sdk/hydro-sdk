import { IEncoding } from "../convert/encoding";
import { IUint8List } from "../typed_data/uint8List";
import { IList, List } from "./list";
import { IUri } from "./uri";
declare const dart: {
    core: {
        uriDataFromString: (
            content: string,
            props: {
                base64: boolean;
                encoding?: IEncoding | undefined;
                mimeType?: string | undefined;
                parameters?: { [index: string]: string } | undefined;
            }
        ) => IUriData;
        uriDataFromBytes: (
            bytes: IList<number>,
            props: {
                mimeType: string;
                parameters?: { [index: string]: string } | undefined;
                percentEncoded: boolean;
            }
        ) => IUriData;
        uriDataFromUri: (uri: IUri) => IUriData;
        uriDataParse: (uri: string) => IUriData;
    };
};
export interface IUriData {
    getUri: () => IUri;
    getMimeType: () => string;
    getCharset: () => string;
    getIsBase64: () => boolean;
    getContentText: () => string;
    contentAsBytes: () => IUint8List;
    contentAsString: (props: { encoding?: IEncoding | undefined }) => string;
    getParameters: () => { [index: string]: string };
    toString: () => string;
}
export class UriData {
    public static _noScheme = -1;
    public static _base64 = Base64Codec.base64;
    public static _tokenCharTable = List.fromArray([
        0x0000, 0x0000, 0x6cd2, 0x03ff, 0xfffe, 0xc7ff, 0xffff, 0x7fff,
    ]);
    public static fromString(
        content: string,
        props: {
            base64?: boolean;
            encoding?: IEncoding | undefined;
            mimeType?: string | undefined;
            parameters?: { [index: string]: string } | undefined;
        }
    ): IUriData {
        return dart.core.uriDataFromString(content, {
            ...fromStringDefaultProps,
            ...props,
        });
    }
    public static fromBytes(
        bytes: IList<number>,
        props: {
            mimeType?: string;
            parameters?: { [index: string]: string } | undefined;
            percentEncoded?: boolean;
        }
    ): IUriData {
        return dart.core.uriDataFromBytes(bytes, {
            ...fromBytesDefaultProps,
            ...props,
        });
    }
    public static fromUri(uri: IUri): IUriData {
        return dart.core.uriDataFromUri(uri);
    }
    public static parse(uri: string): IUriData {
        return dart.core.uriDataParse(uri);
    }
    private readonly _dart_getUri: () => IUri = undefined as any;
    private readonly _dart_getMimeType: () => string = undefined as any;
    private readonly _dart_getCharset: () => string = undefined as any;
    private readonly _dart_getIsBase64: () => boolean = undefined as any;
    private readonly _dart_getContentText: () => string = undefined as any;
    private readonly _dart_contentAsBytes: () => IUint8List = undefined as any;
    private readonly _dart_contentAsString: (props: {
        encoding?: IEncoding | undefined;
    }) => string = undefined as any;
    private readonly _dart_getParameters: () => { [index: string]: string } =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getUri(): IUri {
        return this._dart_getUri();
    }
    public getMimeType(): string {
        return this._dart_getMimeType();
    }
    public getCharset(): string {
        return this._dart_getCharset();
    }
    public getIsBase64(): boolean {
        return this._dart_getIsBase64();
    }
    public getContentText(): string {
        return this._dart_getContentText();
    }
    public contentAsBytes(): IUint8List {
        return this._dart_contentAsBytes();
    }
    public contentAsString(props: {
        encoding?: IEncoding | undefined;
    }): string {
        return this._dart_contentAsString(props);
    }
    public getParameters(): { [index: string]: string } {
        return this._dart_getParameters();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
const fromStringDefaultProps = {
    base64: false,
};
const fromBytesDefaultProps = {
    mimeType: "application/octet-stream",
    percentEncoded: false,
};
