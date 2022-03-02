import { List } from "../../dart/core/list";
import { IMethodChannel } from "./methodChannel";
import { TextInputAction } from "./textInputAction";
import { ITextInputClient } from "./textInputClient";
import { ITextInputConfiguration } from "./textInputConfiguration";
import { ITextInputConnection } from "./textInputConnection";
declare const flutter: {
    services: {
        textInputSetChannel: (newChannel: IMethodChannel) => void;
        textInputAttach: (
            client: ITextInputClient,
            configuration: ITextInputConfiguration
        ) => ITextInputConnection;
        textInputFinishAutofillContext: (props: {
            shouldSave: boolean;
        }) => void;
    };
};
export interface ITextInput {}
export class TextInput {
    public static _androidSupportedInputActions = List.fromArray([
        TextInputAction.none,
        TextInputAction.unspecified,
        TextInputAction.done,
        TextInputAction.send,
        TextInputAction.go,
        TextInputAction.search,
        TextInputAction.next,
        TextInputAction.previous,
        TextInputAction.newline,
    ]);
    public static _iOSSupportedInputActions = List.fromArray([
        TextInputAction.unspecified,
        TextInputAction.done,
        TextInputAction.send,
        TextInputAction.go,
        TextInputAction.search,
        TextInputAction.next,
        TextInputAction.newline,
        TextInputAction.continueAction,
        TextInputAction.join,
        TextInputAction.route,
        TextInputAction.emergencyCall,
    ]);
    public static setChannel(newChannel: IMethodChannel): void {
        return flutter.services.textInputSetChannel(newChannel);
    }
    public static attach(
        client: ITextInputClient,
        configuration: ITextInputConfiguration
    ): ITextInputConnection {
        return flutter.services.textInputAttach(client, configuration);
    }
    public static finishAutofillContext(props: { shouldSave?: boolean }): void {
        return flutter.services.textInputFinishAutofillContext({
            ...finishAutofillContextDefaultProps,
            ...props,
        });
    }
}
const finishAutofillContextDefaultProps = {
    shouldSave: true,
};
