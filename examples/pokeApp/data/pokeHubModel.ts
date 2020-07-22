import { ChangeNotifier } from "../../../runtime/flutter/foundation/changeNotifier";
import { Type } from "../../../runtime/dart/core/type";
import { PokeHub } from "./pokeHub";
import { get } from "../../../runtime/http/get";
import { jsonDecode } from "../../../runtime/dart/convert/jsonDecode";

export class PokeHubModel extends ChangeNotifier {
    public static staticType = new Type(PokeHubModel);
    public runtimeType = PokeHubModel.staticType;
    private pokeHub: PokeHub | undefined;
    public getPokeHub = () => this.pokeHub;
    private readonly url = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
    private fetchData() {
        get(this.url).then((getResponse) => {
            if (getResponse.body) {
                this.pokeHub = jsonDecode(getResponse.body);
            }
            this.notifyListeners();
        });
    }

    public constructor() {
        super();
        this.fetchData();
    }
}