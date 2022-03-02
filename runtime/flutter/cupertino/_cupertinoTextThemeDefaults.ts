import { IColor } from "../../dart/ui/color";
import { IBuildContext } from "../widgets/buildContext";
import { ICupertinoTextThemeData } from "./cupertinoTextThemeData";
declare const flutter: {
    cupertino: {
        _cupertinoTextThemeDefaults: (
            this: void,
            _cupertinoTextThemeDefaults: I_CupertinoTextThemeDefaults,
            labelColor: IColor,
            inactiveGray: IColor
        ) => I_CupertinoTextThemeDefaults;
    };
};
export interface I_CupertinoTextThemeDefaults {
    labelColor: IColor;
    inactiveGray: IColor;
    resolveFrom: (context: IBuildContext) => I_CupertinoTextThemeDefaults;
    createDefaults: (props: {
        primaryColor: IColor;
    }) => ICupertinoTextThemeData;
}
export class _CupertinoTextThemeDefaults {
    public readonly labelColor: IColor = undefined as any;
    public readonly inactiveGray: IColor = undefined as any;
    public constructor(labelColor: IColor, inactiveGray: IColor) {
        flutter.cupertino._cupertinoTextThemeDefaults(
            this,
            labelColor,
            inactiveGray
        );
    }
    private readonly _dart_resolveFrom: (
        context: IBuildContext
    ) => I_CupertinoTextThemeDefaults = undefined as any;
    private readonly _dart_createDefaults: (props: {
        primaryColor: IColor;
    }) => ICupertinoTextThemeData = undefined as any;
    public resolveFrom(context: IBuildContext): I_CupertinoTextThemeDefaults {
        return this._dart_resolveFrom(context);
    }
    public createDefaults(props: {
        primaryColor: IColor;
    }): ICupertinoTextThemeData {
        return this._dart_createDefaults(props);
    }
}
