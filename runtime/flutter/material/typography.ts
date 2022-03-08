import { List } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { TargetPlatform } from "../foundation/targetPlatform";
import { ScriptCategory } from "./scriptCategory";
import { ITextTheme, TextTheme } from "./textTheme";
declare const flutter: {
    material: {
        typography: (
            this: void,
            typography: ITypography,
            props?: {
                black?: ITextTheme | undefined;
                dense?: ITextTheme | undefined;
                englishLike?: ITextTheme | undefined;
                platform?: TargetPlatform | undefined;
                tall?: ITextTheme | undefined;
                white?: ITextTheme | undefined;
            }
        ) => ITypography;
        typographyMaterial2014: (props?: {
            black?: ITextTheme | undefined;
            dense?: ITextTheme | undefined;
            englishLike?: ITextTheme | undefined;
            platform?: TargetPlatform | undefined;
            tall?: ITextTheme | undefined;
            white?: ITextTheme | undefined;
        }) => ITypography;
        typographyMaterial2018: (props?: {
            black?: ITextTheme | undefined;
            dense?: ITextTheme | undefined;
            englishLike?: ITextTheme | undefined;
            platform?: TargetPlatform | undefined;
            tall?: ITextTheme | undefined;
            white?: ITextTheme | undefined;
        }) => ITypography;
        typographyLerp: (
            a: ITypography,
            b: ITypography,
            t: number
        ) => ITypography;
    };
};
export interface ITypography {
    black: ITextTheme;
    white: ITextTheme;
    englishLike: ITextTheme;
    dense: ITextTheme;
    tall: ITextTheme;
    geometryThemeFor: (category: ScriptCategory) => ITextTheme;
    copyWith: (props?: {
        black?: ITextTheme | undefined;
        dense?: ITextTheme | undefined;
        englishLike?: ITextTheme | undefined;
        tall?: ITextTheme | undefined;
        white?: ITextTheme | undefined;
    }) => ITypography;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class Typography implements IDiagnosticable {
    public static blackMountainView = new TextTheme();
    public static whiteMountainView = new TextTheme();
    public static blackRedmond = new TextTheme();
    public static whiteRedmond = new TextTheme();
    public static _helsinkiFontFallbacks = List.fromArray([
        "Ubuntu",
        "Cantarell",
        "DejaVu Sans",
        "Liberation Sans",
        "Arial",
    ]);
    public static blackHelsinki = new TextTheme();
    public static whiteHelsinki = new TextTheme();
    public static blackCupertino = new TextTheme();
    public static whiteCupertino = new TextTheme();
    public static blackRedwoodCity = new TextTheme();
    public static whiteRedwoodCity = new TextTheme();
    public static englishLike2014 = new TextTheme();
    public static englishLike2018 = new TextTheme();
    public static dense2014 = new TextTheme();
    public static dense2018 = new TextTheme();
    public static tall2014 = new TextTheme();
    public static tall2018 = new TextTheme();
    public readonly black: ITextTheme = undefined as any;
    public readonly white: ITextTheme = undefined as any;
    public readonly englishLike: ITextTheme = undefined as any;
    public readonly dense: ITextTheme = undefined as any;
    public readonly tall: ITextTheme = undefined as any;
    public constructor(props?: {
        black?: ITextTheme | undefined;
        dense?: ITextTheme | undefined;
        englishLike?: ITextTheme | undefined;
        platform?: TargetPlatform | undefined;
        tall?: ITextTheme | undefined;
        white?: ITextTheme | undefined;
    }) {
        flutter.material.typography(this, props);
    }
    public static material2014(props?: {
        black?: ITextTheme | undefined;
        dense?: ITextTheme | undefined;
        englishLike?: ITextTheme | undefined;
        platform?: TargetPlatform | undefined;
        tall?: ITextTheme | undefined;
        white?: ITextTheme | undefined;
    }): ITypography {
        return flutter.material.typographyMaterial2014({
            ...material2014DefaultProps,
            ...props,
        });
    }
    public static material2018(props?: {
        black?: ITextTheme | undefined;
        dense?: ITextTheme | undefined;
        englishLike?: ITextTheme | undefined;
        platform?: TargetPlatform | undefined;
        tall?: ITextTheme | undefined;
        white?: ITextTheme | undefined;
    }): ITypography {
        return flutter.material.typographyMaterial2018({
            ...material2018DefaultProps,
            ...props,
        });
    }
    public static lerp(a: ITypography, b: ITypography, t: number): ITypography {
        return flutter.material.typographyLerp(a, b, t);
    }
    private readonly _dart_geometryThemeFor: (
        category: ScriptCategory
    ) => ITextTheme = undefined as any;
    private readonly _dart_copyWith: (props?: {
        black?: ITextTheme | undefined;
        dense?: ITextTheme | undefined;
        englishLike?: ITextTheme | undefined;
        tall?: ITextTheme | undefined;
        white?: ITextTheme | undefined;
    }) => ITypography = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    public geometryThemeFor(category: ScriptCategory): ITextTheme {
        return this._dart_geometryThemeFor(category);
    }
    public copyWith(props?: {
        black?: ITextTheme | undefined;
        dense?: ITextTheme | undefined;
        englishLike?: ITextTheme | undefined;
        tall?: ITextTheme | undefined;
        white?: ITextTheme | undefined;
    }): ITypography {
        return this._dart_copyWith(props);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
const material2014DefaultProps = {
    platform: TargetPlatform.android,
};
const material2018DefaultProps = {
    platform: TargetPlatform.android,
};
