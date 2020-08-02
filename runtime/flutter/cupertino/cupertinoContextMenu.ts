import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";
import { List } from "../../dart/collection/list";
import { StatelessWidget } from "../widgets/statelessWidget";
import { Key } from "../foundation/key";
import { Widget } from "../widget";
import { ContextMenuPreviewBuilder } from "./contextMenuPreviewBuilder";

interface CupertinoContextMenuProps {
    key?: Key | undefined;
    actions: List<Widget>;
    child: Widget;
    previewBuilder?: ContextMenuPreviewBuilder | undefined;
}

declare const flutter: {
    cupertino: {
        cupertinoContextMenu: (this: void, props: CupertinoContextMenuProps) => CuperinoContextMenu;
    }
}

export class CuperinoContextMenu extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(CuperinoContextMenu);
    public props: CupertinoContextMenuProps;
    public constructor(props: CupertinoContextMenuProps) {
        super();
        this.props = props;
    }

    public build() {
        return flutter.cupertino.cupertinoContextMenu(this.props);
    }
}