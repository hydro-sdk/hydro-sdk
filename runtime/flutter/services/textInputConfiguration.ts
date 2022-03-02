import { Brightness } from "../../dart/ui/brightness";
import {
    AutofillConfiguration,
    IAutofillConfiguration,
} from "./autofillConfiguration";
import { SmartDashesType } from "./smartDashesType";
import { SmartQuotesType } from "./smartQuotesType";
import { TextCapitalization } from "./textCapitalization";
import { TextInputAction } from "./textInputAction";
import { ITextInputType, TextInputType } from "./textInputType";
declare const flutter: {
    services: {
        textInputConfiguration: (
            this: void,
            textInputConfiguration: ITextInputConfiguration,
            props: {
                actionLabel?: string | undefined;
                autocorrect: boolean;
                autofillConfiguration: IAutofillConfiguration;
                enableDeltaModel: boolean;
                enableIMEPersonalizedLearning: boolean;
                enableSuggestions: boolean;
                inputAction: TextInputAction;
                inputType: ITextInputType;
                keyboardAppearance: Brightness;
                obscureText: boolean;
                readOnly: boolean;
                smartDashesType?: SmartDashesType | undefined;
                smartQuotesType?: SmartQuotesType | undefined;
                textCapitalization: TextCapitalization;
            }
        ) => ITextInputConfiguration;
    };
};
export interface ITextInputConfiguration {
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
    toJson: () => { [index: string]: any };
}
export class TextInputConfiguration {
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
        actionLabel?: string | undefined;
        autocorrect?: boolean;
        autofillConfiguration?: IAutofillConfiguration;
        enableDeltaModel?: boolean;
        enableIMEPersonalizedLearning?: boolean;
        enableSuggestions?: boolean;
        inputAction?: TextInputAction;
        inputType?: ITextInputType;
        keyboardAppearance?: Brightness;
        obscureText?: boolean;
        readOnly?: boolean;
        smartDashesType?: SmartDashesType | undefined;
        smartQuotesType?: SmartQuotesType | undefined;
        textCapitalization?: TextCapitalization;
    }) {
        flutter.services.textInputConfiguration(this, {
            ...textInputConfigurationDefaultProps,
            ...props,
        });
    }
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
    private readonly _dart_toJson: () => { [index: string]: any } =
        undefined as any;
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
    public toJson(): { [index: string]: any } {
        return this._dart_toJson();
    }
}
const textInputConfigurationDefaultProps = {
    autocorrect: true,
    autofillConfiguration: AutofillConfiguration.disabled,
    enableDeltaModel: false,
    enableIMEPersonalizedLearning: true,
    enableSuggestions: true,
    inputAction: TextInputAction.done,
    inputType: TextInputType.text,
    keyboardAppearance: Brightness.light,
    obscureText: false,
    readOnly: false,
    textCapitalization: TextCapitalization.none,
};
