import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";
import { List } from "../../dart/collection/list";
import { StatelessWidget } from "../widgets/statelessWidget";
import { Key } from "../foundation/key";
import { Widget } from "../widget";
import { ContextMenuPreviewBuilder } from "./contextMenuPreviewBuilder";
import { VoidCallback } from "../../dart/ui/voidCallback";
import { IconData } from "../widgets/iconData";

interface CupertinoContextMenuActionProps {
    key?: Key | undefined;
    child: Widget;
    isDefaultAction?: boolean | undefined;
    isDestructiveAction?: boolean | undefined;
    onPressed?: VoidCallback | undefined;
    trailingIcon?: IconData | undefined;
}

declare const flutter: {
    cupertino: {
        cupertinoContextMenuAction: (this: void, props: CupertinoContextMenuActionProps) => CupertinoContextMenuAction;
    }
}

export class CupertinoContextMenuAction extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(CupertinoContextMenuAction);
    public props: CupertinoContextMenuActionProps;
    public constructor(props: CupertinoContextMenuActionProps) {
        super();
        this.props = props;
    }

    public build() {
        return flutter.cupertino.cupertinoContextMenuAction(this.props);
    }
}