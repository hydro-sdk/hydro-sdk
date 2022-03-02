import { IIterable } from "../../dart/core/iterable";
import { Brightness } from "../../dart/ui/brightness";
import { IAutofillConfiguration } from "./autofillConfiguration";
import { SmartDashesType } from "./smartDashesType";
import { SmartQuotesType } from "./smartQuotesType";
import { TextCapitalization } from "./textCapitalization";
import { TextInputAction } from "./textInputAction";
import { ITextInputConfiguration } from "./textInputConfiguration";
import { ITextInputType } from "./textInputType";
declare const flutter: {
    services: {
        _autofillScopeTextInputConfiguration: (
            this: void,
            _autofillScopeTextInputConfiguration: I_AutofillScopeTextInputConfiguration,
            props: {
                allConfigurations: IIterable<ITextInputConfiguration>;
                currentClientConfiguration: ITextInputConfiguration;
            }
        ) => I_AutofillScopeTextInputConfiguration;
    };
};
export interface I_AutofillScopeTextInputConfiguration {
    allConfigurations: IIterable<ITextInputConfiguration>;
    inputType: ITextInputType;
    readOnly: boolean;
    obscureText: boolean;
    autocorrect: boolean;
    autofillConfiguration: IAutofillConfiguration;
    smartDashesType: SmartDashesType;
    smartQuotesType: SmartQuotesType;
    enableSuggestions: boolean;
    actionLabel: string | undefined;
    inputAction: TextInputAction;
    textCapitalization: TextCapitalization;
    keyboardAppearance: Brightness;
    enableIMEPersonalizedLearning: boolean;
    enableDeltaModel: boolean;
    toJson: () => { [index: string]: any };
    copyWith: (props?: {
        actionLabel?: string | undefined;
        autocorrect?: boolean | undefined;
        autofillConfiguration?: IAutofillConfiguration | undefined;
        enableDeltaModel?: boolean | undefined;
        enableIMEPersonalizedLearning?: boolean | undefined;
        enableSuggestions?: boolean | undefined;
        inputAction?: TextInputAction | undefined;
        inputType?: ITextInputType | undefined;
        keyboardAppearance?: Brightness | undefined;
        obscureText?: boolean | undefined;
        readOnly?: boolean | undefined;
        smartDashesType?: SmartDashesType | undefined;
        smartQuotesType?: SmartQuotesType | undefined;
        textCapitalization?: TextCapitalization | undefined;
    }) => ITextInputConfiguration;
    toString: () => string;
    getHashCode: () => number;
}
export class _AutofillScopeTextInputConfiguration
    implements ITextInputConfiguration
{
    public readonly allConfigurations: IIterable<ITextInputConfiguration> =
        undefined as any;
    public readonly inputType: ITextInputType = undefined as any;
    public readonly readOnly: boolean = undefined as any;
    public readonly obscureText: boolean = undefined as any;
    public readonly autocorrect: boolean = undefined as any;
    public readonly autofillConfiguration: IAutofillConfiguration =
        undefined as any;
    public readonly smartDashesType: SmartDashesType = undefined as any;
    public readonly smartQuotesType: SmartQuotesType = undefined as any;
    public readonly enableSuggestions: boolean = undefined as any;
    public readonly actionLabel: string | undefined = undefined as any;
    public readonly inputAction: TextInputAction = undefined as any;
    public readonly textCapitalization: TextCapitalization = undefined as any;
    public readonly keyboardAppearance: Brightness = undefined as any;
    public readonly enableIMEPersonalizedLearning: boolean = undefined as any;
    public readonly enableDeltaModel: boolean = undefined as any;
    public constructor(props: {
        allConfigurations: IIterable<ITextInputConfiguration>;
        currentClientConfiguration: ITextInputConfiguration;
    }) {
        flutter.services._autofillScopeTextInputConfiguration(this, props);
    }
    private readonly _dart_toJson: () => { [index: string]: any } =
        undefined as any;
    private readonly _dart_copyWith: (props?: {
        actionLabel?: string | undefined;
        autocorrect?: boolean | undefined;
        autofillConfiguration?: IAutofillConfiguration | undefined;
        enableDeltaModel?: boolean | undefined;
        enableIMEPersonalizedLearning?: boolean | undefined;
        enableSuggestions?: boolean | undefined;
        inputAction?: TextInputAction | undefined;
        inputType?: ITextInputType | undefined;
        keyboardAppearance?: Brightness | undefined;
        obscureText?: boolean | undefined;
        readOnly?: boolean | undefined;
        smartDashesType?: SmartDashesType | undefined;
        smartQuotesType?: SmartQuotesType | undefined;
        textCapitalization?: TextCapitalization | undefined;
    }) => ITextInputConfiguration = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public toJson(): { [index: string]: any } {
        return this._dart_toJson();
    }
    public copyWith(props?: {
        actionLabel?: string | undefined;
        autocorrect?: boolean | undefined;
        autofillConfiguration?: IAutofillConfiguration | undefined;
        enableDeltaModel?: boolean | undefined;
        enableIMEPersonalizedLearning?: boolean | undefined;
        enableSuggestions?: boolean | undefined;
        inputAction?: TextInputAction | undefined;
        inputType?: ITextInputType | undefined;
        keyboardAppearance?: Brightness | undefined;
        obscureText?: boolean | undefined;
        readOnly?: boolean | undefined;
        smartDashesType?: SmartDashesType | undefined;
        smartQuotesType?: SmartQuotesType | undefined;
        textCapitalization?: TextCapitalization | undefined;
    }): ITextInputConfiguration {
        return this._dart_copyWith(props);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
