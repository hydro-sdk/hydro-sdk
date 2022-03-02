import { IEdgeInsetsDirectional } from "../painting/edgeInsetsDirectional";
import { IGlobalKey } from "../widgets/globalKey";
import { IKeyedSubtree } from "../widgets/keyedSubtree";
import { IModalRoute } from "../widgets/modalRoute";
import { IState } from "../widgets/state";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { I_NavigationBarStaticComponentsKeys } from "./_navigationBarStaticComponentsKeys";
declare const flutter: {
    cupertino: {
        _navigationBarStaticComponents: (
            this: void,
            _navigationBarStaticComponents: I_NavigationBarStaticComponents,
            props: {
                automaticallyImplyLeading: boolean;
                automaticallyImplyTitle: boolean;
                keys: I_NavigationBarStaticComponentsKeys;
                large: boolean;
                padding?: IEdgeInsetsDirectional | undefined;
                previousPageTitle?: string | undefined;
                route?: IModalRoute<any> | undefined;
                userLargeTitle?: IWidget | undefined;
                userLeading?: IWidget | undefined;
                userMiddle?: IWidget | undefined;
                userTrailing?: IWidget | undefined;
            }
        ) => I_NavigationBarStaticComponents;
        _navigationBarStaticComponentsCreateLeading: (props: {
            automaticallyImplyLeading: boolean;
            leadingKey: IGlobalKey<IState<IStatefulWidget>>;
            padding?: IEdgeInsetsDirectional | undefined;
            route?: IModalRoute<any> | undefined;
            userLeading?: IWidget | undefined;
        }) => IKeyedSubtree | undefined;
        _navigationBarStaticComponentsCreateBackChevron: (props: {
            automaticallyImplyLeading: boolean;
            backChevronKey: IGlobalKey<IState<IStatefulWidget>>;
            route?: IModalRoute<any> | undefined;
            userLeading?: IWidget | undefined;
        }) => IKeyedSubtree | undefined;
        _navigationBarStaticComponentsCreateBackLabel: (props: {
            automaticallyImplyLeading: boolean;
            backLabelKey: IGlobalKey<IState<IStatefulWidget>>;
            previousPageTitle?: string | undefined;
            route?: IModalRoute<any> | undefined;
            userLeading?: IWidget | undefined;
        }) => IKeyedSubtree | undefined;
        _navigationBarStaticComponentsCreateMiddle: (props: {
            automaticallyImplyTitle: boolean;
            large: boolean;
            middleKey: IGlobalKey<IState<IStatefulWidget>>;
            route?: IModalRoute<any> | undefined;
            userLargeTitle?: IWidget | undefined;
            userMiddle?: IWidget | undefined;
        }) => IKeyedSubtree | undefined;
        _navigationBarStaticComponentsCreateTrailing: (props: {
            padding?: IEdgeInsetsDirectional | undefined;
            trailingKey: IGlobalKey<IState<IStatefulWidget>>;
            userTrailing?: IWidget | undefined;
        }) => IKeyedSubtree | undefined;
        _navigationBarStaticComponentsCreateLargeTitle: (props: {
            automaticImplyTitle: boolean;
            large: boolean;
            largeTitleKey: IGlobalKey<IState<IStatefulWidget>>;
            route?: IModalRoute<any> | undefined;
            userLargeTitle?: IWidget | undefined;
        }) => IKeyedSubtree | undefined;
    };
};
export interface I_NavigationBarStaticComponents {
    leading: IKeyedSubtree | undefined;
    backChevron: IKeyedSubtree | undefined;
    backLabel: IKeyedSubtree | undefined;
    middle: IKeyedSubtree | undefined;
    trailing: IKeyedSubtree | undefined;
    largeTitle: IKeyedSubtree | undefined;
}
export class _NavigationBarStaticComponents {
    public readonly leading: IKeyedSubtree | undefined = undefined as any;
    public readonly backChevron: IKeyedSubtree | undefined = undefined as any;
    public readonly backLabel: IKeyedSubtree | undefined = undefined as any;
    public readonly middle: IKeyedSubtree | undefined = undefined as any;
    public readonly trailing: IKeyedSubtree | undefined = undefined as any;
    public readonly largeTitle: IKeyedSubtree | undefined = undefined as any;
    public constructor(props: {
        automaticallyImplyLeading: boolean;
        automaticallyImplyTitle: boolean;
        keys: I_NavigationBarStaticComponentsKeys;
        large: boolean;
        padding?: IEdgeInsetsDirectional | undefined;
        previousPageTitle?: string | undefined;
        route?: IModalRoute<any> | undefined;
        userLargeTitle?: IWidget | undefined;
        userLeading?: IWidget | undefined;
        userMiddle?: IWidget | undefined;
        userTrailing?: IWidget | undefined;
    }) {
        flutter.cupertino._navigationBarStaticComponents(this, props);
    }
    public static createLeading(props: {
        automaticallyImplyLeading: boolean;
        leadingKey: IGlobalKey<IState<IStatefulWidget>>;
        padding?: IEdgeInsetsDirectional | undefined;
        route?: IModalRoute<any> | undefined;
        userLeading?: IWidget | undefined;
    }): IKeyedSubtree | undefined {
        return flutter.cupertino._navigationBarStaticComponentsCreateLeading(
            props
        );
    }
    public static createBackChevron(props: {
        automaticallyImplyLeading: boolean;
        backChevronKey: IGlobalKey<IState<IStatefulWidget>>;
        route?: IModalRoute<any> | undefined;
        userLeading?: IWidget | undefined;
    }): IKeyedSubtree | undefined {
        return flutter.cupertino._navigationBarStaticComponentsCreateBackChevron(
            props
        );
    }
    public static createBackLabel(props: {
        automaticallyImplyLeading: boolean;
        backLabelKey: IGlobalKey<IState<IStatefulWidget>>;
        previousPageTitle?: string | undefined;
        route?: IModalRoute<any> | undefined;
        userLeading?: IWidget | undefined;
    }): IKeyedSubtree | undefined {
        return flutter.cupertino._navigationBarStaticComponentsCreateBackLabel(
            props
        );
    }
    public static createMiddle(props: {
        automaticallyImplyTitle: boolean;
        large: boolean;
        middleKey: IGlobalKey<IState<IStatefulWidget>>;
        route?: IModalRoute<any> | undefined;
        userLargeTitle?: IWidget | undefined;
        userMiddle?: IWidget | undefined;
    }): IKeyedSubtree | undefined {
        return flutter.cupertino._navigationBarStaticComponentsCreateMiddle(
            props
        );
    }
    public static createTrailing(props: {
        padding?: IEdgeInsetsDirectional | undefined;
        trailingKey: IGlobalKey<IState<IStatefulWidget>>;
        userTrailing?: IWidget | undefined;
    }): IKeyedSubtree | undefined {
        return flutter.cupertino._navigationBarStaticComponentsCreateTrailing(
            props
        );
    }
    public static createLargeTitle(props: {
        automaticImplyTitle: boolean;
        large: boolean;
        largeTitleKey: IGlobalKey<IState<IStatefulWidget>>;
        route?: IModalRoute<any> | undefined;
        userLargeTitle?: IWidget | undefined;
    }): IKeyedSubtree | undefined {
        return flutter.cupertino._navigationBarStaticComponentsCreateLargeTitle(
            props
        );
    }
}
