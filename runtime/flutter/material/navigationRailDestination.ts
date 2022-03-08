import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        navigationRailDestination: (
            this: void,
            navigationRailDestination: INavigationRailDestination,
            props: {
                padding?: IEdgeInsetsGeometry | undefined;
                selectedIcon?: IWidget | undefined;
                icon: IWidget;
                label: IWidget;
            }
        ) => INavigationRailDestination;
    };
};
export interface INavigationRailDestination {
    icon: IWidget;
    selectedIcon: IWidget;
    label: IWidget;
    padding: IEdgeInsetsGeometry | undefined;
}
export class NavigationRailDestination {
    public readonly icon: IWidget = undefined as any;
    public readonly selectedIcon: IWidget = undefined as any;
    public readonly label: IWidget = undefined as any;
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public constructor(props: {
        padding?: IEdgeInsetsGeometry | undefined;
        selectedIcon?: IWidget | undefined;
        icon: IWidget;
        label: IWidget;
    }) {
        flutter.material.navigationRailDestination(this, props);
    }
}
