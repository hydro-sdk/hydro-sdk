import {ChangeNotifier} from "../../../runtime/flutter/foundation/changeNotifier";
import {Type} from "../../../runtime/dart/core/type";
import {get} from "../../../runtime/http/get";
import {jsonDecode} from "../../../runtime/dart/convert/jsonDecode";

import {PokeHub} from "./pokeHub";

export class PokeHubService extends ChangeNotifier 
{
    public static staticType = new Type(PokeHubService);
    public runtimeType = PokeHubService.staticType;
    private pokeHub: PokeHub | undefined;
    public getPokeHub = () => this.pokeHub;
    private readonly url = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
    private fetchData() 
    {
        get(this.url).then((getResponse) => 
        {
            if (getResponse.body) 
            {
                this.pokeHub = jsonDecode(getResponse.body);
            }
            this.notifyListeners();
        });
    }

    public constructor() 
    {
        super();
        this.fetchData();
    }
}