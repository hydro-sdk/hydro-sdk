import { MaterialApp } from "../../runtime/flutter/material/materialApp";
//Based on https://github.com/iampawan/PokemonApp
import { runApp } from "../../runtime/flutter/runApp";
import { PokeHubService } from "./data/pokeHubService";
import { PokeApp } from "./pokeApp";

runApp(
    () =>
        new MaterialApp({
            home: new PokeApp(new PokeHubService()),
        })
);
