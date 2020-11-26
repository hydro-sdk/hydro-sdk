import { BuildContext } from "../buildContext";
import { ThemeData } from "./themeData";

declare const flutter: {
    material: {
        themeOf: (this: void, context: BuildContext) => ThemeData;
    };
};

export class Theme {
    public static of(context: BuildContext): ThemeData {
        return flutter.material.themeOf(context);
    }
}
