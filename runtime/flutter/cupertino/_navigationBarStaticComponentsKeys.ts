import { IGlobalKey } from "../widgets/globalKey";
import { IState } from "../widgets/state";
import { IStatefulWidget } from "../widgets/statefulWidget";
declare const flutter: {
    cupertino: {
        _navigationBarStaticComponentsKeys: (
            this: void,
            _navigationBarStaticComponentsKeys: I_NavigationBarStaticComponentsKeys
        ) => I_NavigationBarStaticComponentsKeys;
    };
};
export interface I_NavigationBarStaticComponentsKeys {
    navBarBoxKey: IGlobalKey<IState<IStatefulWidget>>;
    leadingKey: IGlobalKey<IState<IStatefulWidget>>;
    backChevronKey: IGlobalKey<IState<IStatefulWidget>>;
    backLabelKey: IGlobalKey<IState<IStatefulWidget>>;
    middleKey: IGlobalKey<IState<IStatefulWidget>>;
    trailingKey: IGlobalKey<IState<IStatefulWidget>>;
    largeTitleKey: IGlobalKey<IState<IStatefulWidget>>;
}
export class _NavigationBarStaticComponentsKeys {
    public readonly navBarBoxKey: IGlobalKey<IState<IStatefulWidget>> =
        undefined as any;
    public readonly leadingKey: IGlobalKey<IState<IStatefulWidget>> =
        undefined as any;
    public readonly backChevronKey: IGlobalKey<IState<IStatefulWidget>> =
        undefined as any;
    public readonly backLabelKey: IGlobalKey<IState<IStatefulWidget>> =
        undefined as any;
    public readonly middleKey: IGlobalKey<IState<IStatefulWidget>> =
        undefined as any;
    public readonly trailingKey: IGlobalKey<IState<IStatefulWidget>> =
        undefined as any;
    public readonly largeTitleKey: IGlobalKey<IState<IStatefulWidget>> =
        undefined as any;
    public constructor() {
        flutter.cupertino._navigationBarStaticComponentsKeys(this);
    }
}
