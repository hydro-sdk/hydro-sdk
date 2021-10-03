import { IFutureOr } from "../../../runtime/dart/async/futureOr";
import { jsonDecode } from "../../../runtime/dart/convert/jsonDecode";
import { Type } from "../../../runtime/dart/core/type";
import { ChangeNotifier } from "../../../runtime/flutter/foundation/changeNotifier";
import { get } from "../../../runtime/http/get";
import { PokeHub } from "./pokeHub";

export class PokeHubService extends ChangeNotifier {
    public static staticType = new Type(PokeHubService);
    public runtimeType = PokeHubService.staticType;
    private pokeHub: PokeHub | undefined;
    public getPokeHub = () => this.pokeHub;
    private readonly url =
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
    private fetchData() {
        get(this.url).then((getResponse) => {
            if (getResponse.body) {
                this.pokeHub = jsonDecode(getResponse.body);
            }
            this.notifyListeners();

            return <IFutureOr<unknown>>{};
        });
    }

    public constructor() {
        super();
        this.fetchData();
    }
}
