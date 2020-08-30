import { ChangeNotifier } from "../../../runtime/flutter/foundation/changeNotifier";
import { Type } from "../../../runtime/dart/core/type";
import { Category } from "./category";

export class AppStateModel extends ChangeNotifier {
    public static staticType = new Type(AppStateModel);
    public runtimeType = AppStateModel.staticType;

    private selectedCategory = Category.all;
    private productsInCard: { [i: number]: number } = {};
}