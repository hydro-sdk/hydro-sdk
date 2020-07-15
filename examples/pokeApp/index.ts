import { runApp } from "../../runtime/flutter/runApp";
import { PokeGridScreen } from "./screens/gridScreen";
import { MaterialApp } from "../../runtime/flutter/material/materialApp";

runApp(() => new MaterialApp({
    home: new PokeGridScreen()
}));