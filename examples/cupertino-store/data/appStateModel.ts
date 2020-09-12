import { ChangeNotifier } from "../../../runtime/flutter/foundation/changeNotifier";
import { Type } from "../../../runtime/dart/core/type";
import { Category } from "./category";
import { List } from "../../../runtime/dart/collection/list";
import { Product } from "./product";

export class AppStateModel extends ChangeNotifier {
    public static staticType = new Type(AppStateModel);
    public runtimeType = AppStateModel.staticType;

    private availableProducts: List<Product> = List.fromArray([]);
    private selectedCategory = Category.all;
    private productsInCard: { [i: number]: number } = {};

    public getProducts(): List<Product> {
        if (this.selectedCategory == Category.all) {
            return this.availableProducts;
        } else {
            return this.availableProducts.where((x) => x.category == this.selectedCategory);
        }
    }

    public search(searchTerm: string) {
        return this.getProducts().where((x) => x.name.toLowerCase().includes(searchTerm.toLowerCase()));
    }
}
