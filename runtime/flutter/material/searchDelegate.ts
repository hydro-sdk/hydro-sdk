import { IList } from "../../dart/core/list";
import { IAnimation } from "../animation/animation";
import { ITextStyle } from "../painting/textStyle";
import { TextInputAction } from "../services/textInputAction";
import { ITextInputType } from "../services/textInputType";
import { IBuildContext } from "../widgets/buildContext";
import { IPreferredSizeWidget } from "../widgets/preferredSizeWidget";
import { IWidget } from "../widgets/widget";
import { IInputDecorationTheme } from "./inputDecorationTheme";
import { IThemeData } from "./themeData";
declare const flutter: {
    material: {
        searchDelegate: <T>(
            this: void,
            searchDelegate: ISearchDelegate<T>,
            props: {
                keyboardType?: ITextInputType | undefined;
                searchFieldDecorationTheme?: IInputDecorationTheme | undefined;
                searchFieldLabel?: string | undefined;
                searchFieldStyle?: ITextStyle | undefined;
                textInputAction: TextInputAction;
            }
        ) => ISearchDelegate<T>;
    };
};
export interface ISearchDelegate<T> {
    searchFieldLabel: string | undefined;
    searchFieldStyle: ITextStyle | undefined;
    searchFieldDecorationTheme: IInputDecorationTheme | undefined;
    keyboardType: ITextInputType | undefined;
    textInputAction: TextInputAction;
    buildSuggestions: (context: IBuildContext) => IWidget;
    buildResults: (context: IBuildContext) => IWidget;
    buildLeading: (context: IBuildContext) => IWidget | undefined;
    buildActions: (context: IBuildContext) => IList<IWidget> | undefined;
    buildBottom: (context: IBuildContext) => IPreferredSizeWidget | undefined;
    appBarTheme: (context: IBuildContext) => IThemeData;
    getQuery: () => string;
    setQuery: (value: string) => void;
    showResults: (context: IBuildContext) => void;
    showSuggestions: (context: IBuildContext) => void;
    close: (context: IBuildContext, result: T) => void;
    getTransitionAnimation: () => IAnimation<number>;
}
export class SearchDelegate<T> {
    public readonly searchFieldLabel: string | undefined = undefined as any;
    public readonly searchFieldStyle: ITextStyle | undefined = undefined as any;
    public readonly searchFieldDecorationTheme:
        | IInputDecorationTheme
        | undefined = undefined as any;
    public readonly keyboardType: ITextInputType | undefined = undefined as any;
    public readonly textInputAction: TextInputAction = undefined as any;
    public constructor(props: {
        keyboardType?: ITextInputType | undefined;
        searchFieldDecorationTheme?: IInputDecorationTheme | undefined;
        searchFieldLabel?: string | undefined;
        searchFieldStyle?: ITextStyle | undefined;
        textInputAction?: TextInputAction;
    }) {
        flutter.material.searchDelegate(this, {
            ...searchDelegateDefaultProps,
            ...props,
        });
    }
    private readonly _dart_buildSuggestions: (
        context: IBuildContext
    ) => IWidget = undefined as any;
    private readonly _dart_buildResults: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_buildLeading: (
        context: IBuildContext
    ) => IWidget | undefined = undefined as any;
    private readonly _dart_buildActions: (
        context: IBuildContext
    ) => IList<IWidget> | undefined = undefined as any;
    private readonly _dart_buildBottom: (
        context: IBuildContext
    ) => IPreferredSizeWidget | undefined = undefined as any;
    private readonly _dart_appBarTheme: (context: IBuildContext) => IThemeData =
        undefined as any;
    private readonly _dart_getQuery: () => string = undefined as any;
    private readonly _dart_setQuery: (value: string) => void = undefined as any;
    private readonly _dart_showResults: (context: IBuildContext) => void =
        undefined as any;
    private readonly _dart_showSuggestions: (context: IBuildContext) => void =
        undefined as any;
    private readonly _dart_close: (context: IBuildContext, result: T) => void =
        undefined as any;
    private readonly _dart_getTransitionAnimation: () => IAnimation<number> =
        undefined as any;
    public buildSuggestions(context: IBuildContext): IWidget {
        return this._dart_buildSuggestions(context);
    }
    public buildResults(context: IBuildContext): IWidget {
        return this._dart_buildResults(context);
    }
    public buildLeading(context: IBuildContext): IWidget | undefined {
        return this._dart_buildLeading(context);
    }
    public buildActions(context: IBuildContext): IList<IWidget> | undefined {
        return this._dart_buildActions(context);
    }
    public buildBottom(
        context: IBuildContext
    ): IPreferredSizeWidget | undefined {
        return this._dart_buildBottom(context);
    }
    public appBarTheme(context: IBuildContext): IThemeData {
        return this._dart_appBarTheme(context);
    }
    public getQuery(): string {
        return this._dart_getQuery();
    }
    public setQuery(value: string): void {
        return this._dart_setQuery(value);
    }
    public showResults(context: IBuildContext): void {
        return this._dart_showResults(context);
    }
    public showSuggestions(context: IBuildContext): void {
        return this._dart_showSuggestions(context);
    }
    public close(context: IBuildContext, result: T): void {
        return this._dart_close(context, result);
    }
    public getTransitionAnimation(): IAnimation<number> {
        return this._dart_getTransitionAnimation();
    }
}
const searchDelegateDefaultProps = {
    textInputAction: TextInputAction.search,
};
