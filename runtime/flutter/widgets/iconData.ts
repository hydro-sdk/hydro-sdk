declare const flutter: {
    widgets: {
        iconData: (
            this: void,
            iconData: IconData,
            codePoint: number,
            props: {
                fontFamily: string;
                fontPackage?: string | undefined;
                matchTextDirection: boolean;
            }
        ) => IconData;
    };
};
const iconDataDefaultProps = {
    matchTextDirection: false,
};
export interface IIconData {
    codePoint: number;
    fontFamily: string;
    fontPackage: string;
    matchTextDirection: boolean;
    getHashCode: () => number;
    toString: () => string;
}
export class IconData {
    public readonly codePoint: number = undefined as any;
    public readonly fontFamily: string = undefined as any;
    public readonly fontPackage: string = undefined as any;
    public readonly matchTextDirection: boolean = undefined as any;
    public constructor(
        codePoint: number,
        props: {
            fontFamily: string;
            fontPackage?: string | undefined;
            matchTextDirection?: boolean;
        }
    ) {
        flutter.widgets.iconData(this, codePoint, {
            ...iconDataDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
