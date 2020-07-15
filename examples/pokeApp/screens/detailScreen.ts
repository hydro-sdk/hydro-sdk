import { StatelessWidget } from "../../../runtime/flutter/widgets/statelessWidget";
import { Pokemon } from "../pokeHub";
import { Scaffold } from "../../../runtime/flutter/material/scaffold";
import { Colors } from "../../../runtime/flutter/material/colors";
import { AppBar } from "../../../runtime/flutter/material/appBar";
import { Text } from "../../../runtime/flutter/widgets/text";

export class DetailScreen extends StatelessWidget {
    public pokemon: Pokemon;

    public constructor(pokemon: Pokemon) {
        super();
        this.pokemon = pokemon;
    }

    public build() {
        return new Scaffold({
            backgroundColor: Colors.cyan.swatch[500],
            appBar: new AppBar({
                title: new Text(this.pokemon.name)
            }),
        });
    }
}