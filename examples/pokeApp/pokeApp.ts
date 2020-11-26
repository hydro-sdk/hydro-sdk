import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { ScopedModel } from "../../runtime/scopedModel/scopedModel";
import { PokeHubService } from "./data/pokeHubService";
import { TextSearchService } from "./data/textSearchService";
import { PokeGridScreen } from "./screens/gridScreen";

export class PokeApp extends StatelessWidget {
    private pokeHubService: PokeHubService;

    public constructor(pokeHubService: PokeHubService) {
        super();

        this.pokeHubService = pokeHubService;
    }

    public build() {
        return new ScopedModel({
            model: this.pokeHubService,
            child: new ScopedModel({
                model: new TextSearchService(),
                child: new PokeGridScreen(),
            }),
        });
    }
}
