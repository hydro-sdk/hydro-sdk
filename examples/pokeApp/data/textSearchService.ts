import { Type } from "../../../runtime/dart/core/type";
import { ChangeNotifier } from "../../../runtime/flutter/foundation/changeNotifier";

export class TextSearchService extends ChangeNotifier {
    public static staticType = new Type(TextSearchService);
    public runtimeType = TextSearchService.staticType;
    private text: string | undefined;

    public getSearchText() {
        if (this.text) {
            return this.text.toLowerCase();
        }

        return undefined;
    }

    public updateSearchText(text: string) {
        this.text = text;
        this.notifyListeners();
    }

    public constructor() {
        super();
    }
}
