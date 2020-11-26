import { BuildContext } from "../buildContext";

declare const flutter: {
    widgets: {
        navigatorPush: (this: void, context: BuildContext, route: any) => void;
    };
};

export class Navigator {
    public static push(context: BuildContext, route: any): void {
        flutter.widgets.navigatorPush(context, route);
    }
}
