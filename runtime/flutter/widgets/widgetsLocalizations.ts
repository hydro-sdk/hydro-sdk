import { TextDirection } from "../../dart/ui/textDirection";
import { IBuildContext } from "./buildContext";
declare const flutter: {
    widgets: {
        widgetsLocalizations: (
            this: void,
            widgetsLocalizations: IWidgetsLocalizations
        ) => IWidgetsLocalizations;
        widgetsLocalizationsOf: (
            context: IBuildContext
        ) => IWidgetsLocalizations;
    };
};
export interface IWidgetsLocalizations {
    getTextDirection: () => TextDirection;
}
export class WidgetsLocalizations {
    public constructor() {
        flutter.widgets.widgetsLocalizations(this);
    }
    public static of(context: IBuildContext): IWidgetsLocalizations {
        return flutter.widgets.widgetsLocalizationsOf(context);
    }
    private readonly _dart_getTextDirection: () => TextDirection =
        undefined as any;
    public getTextDirection(): TextDirection {
        return this._dart_getTextDirection();
    }
}
