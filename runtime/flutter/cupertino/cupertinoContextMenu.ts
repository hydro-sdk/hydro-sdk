import { List } from "../../dart/collection/list";
import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "../foundation/key";
import { Widget } from "../widget";
import { StatelessWidget } from "../widgets/statelessWidget";
import { ContextMenuPreviewBuilder } from "./contextMenuPreviewBuilder";

export interface CupertinoContextMenuProps {
    key?: Key | undefined;
    actions: List<Widget>;
    child: Widget;
    previewBuilder?: ContextMenuPreviewBuilder | undefined;
}

declare const flutter: {
    cupertino: {
        cupertinoContextMenu: (
            this: void,
            props: CupertinoContextMenuProps
        ) => CupertinoContextMenu;
    };
};

export class CupertinoContextMenu
    extends StatelessWidget
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(CupertinoContextMenu);
    public props: CupertinoContextMenuProps;
    public constructor(props: CupertinoContextMenuProps) {
        super();
        this.props = props;
    }

    public build() {
        return flutter.cupertino.cupertinoContextMenu(this.props);
    }
}
