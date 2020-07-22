import {StatelessWidget} from "../../runtime/flutter/widgets/statelessWidget";
import {ScopedModel} from "../../runtime/scopedModel/scopedModel";

import {PokeGridScreen} from "./screens/gridScreen";
import {PokeHubModel} from "./data/pokeHubModel";

export class PokeApp extends StatelessWidget 
{
    private pokeHubModel: PokeHubModel;

    public constructor(pokeHubModel: PokeHubModel) 
    {
        super();

        this.pokeHubModel = pokeHubModel;
    }

    public build() 
    {
        return new ScopedModel({
            model: this.pokeHubModel,
            child: new PokeGridScreen()
        });
    }
}