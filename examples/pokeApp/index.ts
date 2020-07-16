//Based on https://github.com/iampawan/PokemonApp
import {runApp} from "../../runtime/flutter/runApp";
import {MaterialApp} from "../../runtime/flutter/material/materialApp";

import {PokeGridScreen} from "./screens/gridScreen";

runApp(() => new MaterialApp({
    home: new PokeGridScreen()
}));