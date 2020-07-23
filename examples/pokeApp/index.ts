//Based on https://github.com/iampawan/PokemonApp
import {runApp} from "../../runtime/flutter/runApp";
import {MaterialApp} from "../../runtime/flutter/material/materialApp";

import {PokeApp} from "./pokeApp";
import {PokeHubService} from "./data/pokeHubService";

runApp(() => new MaterialApp({
    home: new PokeApp(new PokeHubService())
}));