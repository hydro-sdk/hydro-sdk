//Adapted from https://github.com/googlecodelabs/flutter-cupertino-store
import { runApp } from "../../runtime/flutter/runApp";
import { CupertinoStoreApp } from "./cupertinoStoreApp";
import { ScopedModel } from "../../runtime/scopedModel/scopedModel";
import { AppStateModel } from "./data/appStateModel";

runApp(() => new ScopedModel({
    model: new AppStateModel(),
    child: new CupertinoStoreApp()
}));