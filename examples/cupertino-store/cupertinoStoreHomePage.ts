import { List } from "../../runtime/dart/collection/list";
import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { CupertinoTabScaffold } from "../../runtime/flutter/cupertino/cupertinoTabScaffold";
import { CupertinoTabBar } from "../../runtime/flutter/cupertino/cupertinoTabBar";
import { CupertinoIcons } from "../../runtime/flutter/cupertino/cupertinoIcons";
import { CupertinoTabView } from "../../runtime/flutter/cupertino/cupertinoTabView";
import { CupertinoPageScaffold } from "../../runtime/flutter/cupertino/cupertinoPageScaffold";
import { BottomNavigationBarItem } from "../../runtime/flutter/widgets/bottomNavigationBarItem";
import { Icon } from "../../runtime/flutter/widgets/icon";
import { Text } from "../../runtime/flutter/widgets/text";
import { SizedBox } from "../../runtime/flutter/widgets/sizedBox";
import { ProductListTab } from "./productListTab";
import { SearchTab } from "./searchTab";

export class CupertinoStoreHomePage extends StatelessWidget {

    public build() {
        return new CupertinoTabScaffold({
            tabBar: new CupertinoTabBar({
                items: List.fromArray([
                    new BottomNavigationBarItem({
                        icon: new Icon(CupertinoIcons.home),
                        title: new Text("Products"),
                    }),
                    new BottomNavigationBarItem({
                        icon: new Icon(CupertinoIcons.search),
                        title: new Text("Search"),
                    }),
                    new BottomNavigationBarItem({
                        icon: new Icon(CupertinoIcons.shopping_cart),
                        title: new Text("Cart"),
                    })
                ])
            }),
            tabBuilder: (_, index) => {
                let returnValue: CupertinoTabView;
                switch (index) {
                    case 0:
                        returnValue = new CupertinoTabView({
                            builder: () => new CupertinoPageScaffold({
                                child: new ProductListTab()
                            })
                        });
                        break;
                    case 1:
                        returnValue = new CupertinoTabView({
                            builder: () => new CupertinoPageScaffold({
                                child: new SearchTab()
                            })
                        });
                        break;
                    case 2:
                        returnValue = new CupertinoTabView({
                            builder: () => new CupertinoPageScaffold({
                                child: new SizedBox({})
                            })
                        });
                        break;
                }
                return returnValue!;
            }
        });
    }
}
