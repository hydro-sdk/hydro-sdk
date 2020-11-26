import { BuildContext } from "../buildContext";
import { MediaQueryData } from "./mediaQueryData";

declare const flutter: {
    widgets: {
        mediaQueryOf: (this: void, context: BuildContext) => MediaQueryData;
    };
};

export class MediaQuery {
    public static of(context: BuildContext): MediaQueryData {
        return flutter.widgets.mediaQueryOf(context);
    }
}
