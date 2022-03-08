import { IKey } from "../foundation/key";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
export interface IPopupMenuEntry<T> extends IStatefulWidget {
    getHeight: () => number;
    represents: (value?: T | undefined) => boolean;
}
