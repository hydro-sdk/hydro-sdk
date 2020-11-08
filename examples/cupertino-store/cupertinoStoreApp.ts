import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { CupertinoApp } from "../../runtime/flutter/cupertino/cupertinoApp";
import { CupertinoStoreHomePage } from "./cupertinoStoreHomePage";

export class CupertinoStoreApp extends StatelessWidget {
    public build() {
        return new CupertinoApp({
            home: new CupertinoStoreHomePage(),
        });
    }
}