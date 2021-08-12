import { IEncoding } from "../convert/encoding";
import { IIterable } from "./iterable";
import { IList } from "./list";
import { IUriData } from "./uriData";
declare const dart: {
    core: {
        uri: (
            this: void,
            uri: IUri,
            props: {
                fragment?: string | undefined;
                host?: string | undefined;
                path?: string | undefined;
                pathSegments?: IIterable<string> | undefined;
                port?: number | undefined;
                query?: string | undefined;
                queryParameters?: { [index: string]: any } | undefined;
                scheme?: string | undefined;
                userInfo?: string | undefined;
            }
        ) => IUri;
        uriHttp: (
            authority: string,
            unencodedPath: string,
            queryParameters?: { [index: string]: any } | undefined
        ) => IUri;
        uriHttps: (
            authority: string,
            unencodedPath: string,
            queryParameters?: { [index: string]: any } | undefined
        ) => IUri;
        uriFile: (
            path: string,
            props: { windows?: boolean | undefined }
        ) => IUri;
        uriDirectory: (
            path: string,
            props: { windows?: boolean | undefined }
        ) => IUri;
        uriDataFromString: (
            content: string,
            props: {
                base64: boolean;
                encoding?: IEncoding | undefined;
                mimeType?: string | undefined;
                parameters?: { [index: string]: string } | undefined;
            }
        ) => IUri;
        uriDataFromBytes: (
            bytes: IList<number>,
            props: {
                mimeType: string;
                parameters?: { [index: string]: string } | undefined;
                percentEncoded: boolean;
            }
        ) => IUri;
        uriBase: () => IUri;
        uriParse: (
            uri: string,
            start: number,
            end?: number | undefined
        ) => IUri;
        uriTryParse: (
            uri: string,
            start: number,
            end?: number | undefined
        ) => IUri | undefined;
        uriEncodeComponent: (component: string) => string;
        uriEncodeQueryComponent: (
            component: string,
            props: { encoding: IEncoding }
        ) => string;
        uriDecodeComponent: (encodedComponent: string) => string;
        uriDecodeQueryComponent: (
            encodedComponent: string,
            props: { encoding: IEncoding }
        ) => string;
        uriEncodeFull: (uri: string) => string;
        uriDecodeFull: (uri: string) => string;
        uriSplitQueryString: (
            query: string,
            props: { encoding: IEncoding }
        ) => { [index: string]: string };
        uriParseIPv4Address: (host: string) => IList<number>;
        uriParseIPv6Address: (
            host: string,
            start: number,
            end?: number | undefined
        ) => IList<number>;
    };
};
export interface IUri {
    getScheme: () => string;
    getAuthority: () => string;
    getUserInfo: () => string;
    getHost: () => string;
    getPort: () => number;
    getPath: () => string;
    getQuery: () => string;
    getFragment: () => string;
    getPathSegments: () => IList<string>;
    getQueryParameters: () => { [index: string]: string };
    getQueryParametersAll: () => { [index: string]: IList<string> };
    getIsAbsolute: () => boolean;
    getHasScheme: () => boolean;
    getHasAuthority: () => boolean;
    getHasPort: () => boolean;
    getHasQuery: () => boolean;
    getHasFragment: () => boolean;
    getHasEmptyPath: () => boolean;
    getHasAbsolutePath: () => boolean;
    getOrigin: () => string;
    isScheme: (scheme: string) => boolean;
    toFilePath: (props: { windows?: boolean | undefined }) => string;
    getData: () => IUriData | undefined;
    getHashCode: () => number;
    toString: () => string;
    replace: (props: {
        fragment?: string | undefined;
        host?: string | undefined;
        path?: string | undefined;
        pathSegments?: IIterable<string> | undefined;
        port?: number | undefined;
        query?: string | undefined;
        queryParameters?: { [index: string]: any } | undefined;
        scheme?: string | undefined;
        userInfo?: string | undefined;
    }) => IUri;
    removeFragment: () => IUri;
    resolve: (reference: string) => IUri;
    resolveUri: (reference: IUri) => IUri;
    normalizePath: () => IUri;
}
export class Uri {
    public constructor(props: {
        fragment?: string | undefined;
        host?: string | undefined;
        path?: string | undefined;
        pathSegments?: IIterable<string> | undefined;
        port?: number | undefined;
        query?: string | undefined;
        queryParameters?: { [index: string]: any } | undefined;
        scheme?: string | undefined;
        userInfo?: string | undefined;
    }) {
        dart.core.uri(this, props);
    }
    public static http(
        authority: string,
        unencodedPath: string,
        queryParameters?: { [index: string]: any } | undefined
    ): IUri {
        return dart.core.uriHttp(authority, unencodedPath, queryParameters);
    }
    public static https(
        authority: string,
        unencodedPath: string,
        queryParameters?: { [index: string]: any } | undefined
    ): IUri {
        return dart.core.uriHttps(authority, unencodedPath, queryParameters);
    }
    public static file(
        path: string,
        props: { windows?: boolean | undefined }
    ): IUri {
        return dart.core.uriFile(path, props);
    }
    public static directory(
        path: string,
        props: { windows?: boolean | undefined }
    ): IUri {
        return dart.core.uriDirectory(path, props);
    }
    public static dataFromString(
        content: string,
        props: {
            base64?: boolean;
            encoding?: IEncoding | undefined;
            mimeType?: string | undefined;
            parameters?: { [index: string]: string } | undefined;
        }
    ): IUri {
        return dart.core.uriDataFromString(content, {
            ...dataFromStringDefaultProps,
            ...props,
        });
    }
    public static dataFromBytes(
        bytes: IList<number>,
        props: {
            mimeType?: string;
            parameters?: { [index: string]: string } | undefined;
            percentEncoded?: boolean;
        }
    ): IUri {
        return dart.core.uriDataFromBytes(bytes, {
            ...dataFromBytesDefaultProps,
            ...props,
        });
    }
    public static base(): IUri {
        return dart.core.uriBase();
    }
    public static parse(
        uri: string,
        start: number = 0,
        end?: number | undefined
    ): IUri {
        return dart.core.uriParse(uri, start, end);
    }
    public static tryParse(
        uri: string,
        start: number = 0,
        end?: number | undefined
    ): IUri | undefined {
        return dart.core.uriTryParse(uri, start, end);
    }
    public static encodeComponent(component: string): string {
        return dart.core.uriEncodeComponent(component);
    }
    public static encodeQueryComponent(
        component: string,
        props: { encoding?: IEncoding }
    ): string {
        return dart.core.uriEncodeQueryComponent(component, {
            ...encodeQueryComponentDefaultProps,
            ...props,
        });
    }
    public static decodeComponent(encodedComponent: string): string {
        return dart.core.uriDecodeComponent(encodedComponent);
    }
    public static decodeQueryComponent(
        encodedComponent: string,
        props: { encoding?: IEncoding }
    ): string {
        return dart.core.uriDecodeQueryComponent(encodedComponent, {
            ...decodeQueryComponentDefaultProps,
            ...props,
        });
    }
    public static encodeFull(uri: string): string {
        return dart.core.uriEncodeFull(uri);
    }
    public static decodeFull(uri: string): string {
        return dart.core.uriDecodeFull(uri);
    }
    public static splitQueryString(
        query: string,
        props: { encoding?: IEncoding }
    ): { [index: string]: string } {
        return dart.core.uriSplitQueryString(query, {
            ...splitQueryStringDefaultProps,
            ...props,
        });
    }
    public static parseIPv4Address(host: string): IList<number> {
        return dart.core.uriParseIPv4Address(host);
    }
    public static parseIPv6Address(
        host: string,
        start: number = 0,
        end?: number | undefined
    ): IList<number> {
        return dart.core.uriParseIPv6Address(host, start, end);
    }
    private readonly _dart_getScheme: () => string = undefined as any;
    private readonly _dart_getAuthority: () => string = undefined as any;
    private readonly _dart_getUserInfo: () => string = undefined as any;
    private readonly _dart_getHost: () => string = undefined as any;
    private readonly _dart_getPort: () => number = undefined as any;
    private readonly _dart_getPath: () => string = undefined as any;
    private readonly _dart_getQuery: () => string = undefined as any;
    private readonly _dart_getFragment: () => string = undefined as any;
    private readonly _dart_getPathSegments: () => IList<string> =
        undefined as any;
    private readonly _dart_getQueryParameters: () => {
        [index: string]: string;
    } = undefined as any;
    private readonly _dart_getQueryParametersAll: () => {
        [index: string]: IList<string>;
    } = undefined as any;
    private readonly _dart_getIsAbsolute: () => boolean = undefined as any;
    private readonly _dart_getHasScheme: () => boolean = undefined as any;
    private readonly _dart_getHasAuthority: () => boolean = undefined as any;
    private readonly _dart_getHasPort: () => boolean = undefined as any;
    private readonly _dart_getHasQuery: () => boolean = undefined as any;
    private readonly _dart_getHasFragment: () => boolean = undefined as any;
    private readonly _dart_getHasEmptyPath: () => boolean = undefined as any;
    private readonly _dart_getHasAbsolutePath: () => boolean = undefined as any;
    private readonly _dart_getOrigin: () => string = undefined as any;
    private readonly _dart_isScheme: (scheme: string) => boolean =
        undefined as any;
    private readonly _dart_toFilePath: (props: {
        windows?: boolean | undefined;
    }) => string = undefined as any;
    private readonly _dart_getData: () => IUriData | undefined =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_replace: (props: {
        fragment?: string | undefined;
        host?: string | undefined;
        path?: string | undefined;
        pathSegments?: IIterable<string> | undefined;
        port?: number | undefined;
        query?: string | undefined;
        queryParameters?: { [index: string]: any } | undefined;
        scheme?: string | undefined;
        userInfo?: string | undefined;
    }) => IUri = undefined as any;
    private readonly _dart_removeFragment: () => IUri = undefined as any;
    private readonly _dart_resolve: (reference: string) => IUri =
        undefined as any;
    private readonly _dart_resolveUri: (reference: IUri) => IUri =
        undefined as any;
    private readonly _dart_normalizePath: () => IUri = undefined as any;
    public getScheme(): string {
        return this._dart_getScheme();
    }
    public getAuthority(): string {
        return this._dart_getAuthority();
    }
    public getUserInfo(): string {
        return this._dart_getUserInfo();
    }
    public getHost(): string {
        return this._dart_getHost();
    }
    public getPort(): number {
        return this._dart_getPort();
    }
    public getPath(): string {
        return this._dart_getPath();
    }
    public getQuery(): string {
        return this._dart_getQuery();
    }
    public getFragment(): string {
        return this._dart_getFragment();
    }
    public getPathSegments(): IList<string> {
        return this._dart_getPathSegments();
    }
    public getQueryParameters(): { [index: string]: string } {
        return this._dart_getQueryParameters();
    }
    public getQueryParametersAll(): { [index: string]: IList<string> } {
        return this._dart_getQueryParametersAll();
    }
    public getIsAbsolute(): boolean {
        return this._dart_getIsAbsolute();
    }
    public getHasScheme(): boolean {
        return this._dart_getHasScheme();
    }
    public getHasAuthority(): boolean {
        return this._dart_getHasAuthority();
    }
    public getHasPort(): boolean {
        return this._dart_getHasPort();
    }
    public getHasQuery(): boolean {
        return this._dart_getHasQuery();
    }
    public getHasFragment(): boolean {
        return this._dart_getHasFragment();
    }
    public getHasEmptyPath(): boolean {
        return this._dart_getHasEmptyPath();
    }
    public getHasAbsolutePath(): boolean {
        return this._dart_getHasAbsolutePath();
    }
    public getOrigin(): string {
        return this._dart_getOrigin();
    }
    public isScheme(scheme: string): boolean {
        return this._dart_isScheme(scheme);
    }
    public toFilePath(props: { windows?: boolean | undefined }): string {
        return this._dart_toFilePath(props);
    }
    public getData(): IUriData | undefined {
        return this._dart_getData();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public replace(props: {
        fragment?: string | undefined;
        host?: string | undefined;
        path?: string | undefined;
        pathSegments?: IIterable<string> | undefined;
        port?: number | undefined;
        query?: string | undefined;
        queryParameters?: { [index: string]: any } | undefined;
        scheme?: string | undefined;
        userInfo?: string | undefined;
    }): IUri {
        return this._dart_replace(props);
    }
    public removeFragment(): IUri {
        return this._dart_removeFragment();
    }
    public resolve(reference: string): IUri {
        return this._dart_resolve(reference);
    }
    public resolveUri(reference: IUri): IUri {
        return this._dart_resolveUri(reference);
    }
    public normalizePath(): IUri {
        return this._dart_normalizePath();
    }
}
const dataFromStringDefaultProps = {
    base64: false,
};
const dataFromBytesDefaultProps = {
    mimeType: "application/octet-stream",
    percentEncoded: false,
};
const encodeQueryComponentDefaultProps = {
    encoding: utf8,
};
const decodeQueryComponentDefaultProps = {
    encoding: utf8,
};
const splitQueryStringDefaultProps = {
    encoding: utf8,
};
