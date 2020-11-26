import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "../../syntheticBox";
import { BuildContext } from "../buildContext";
import { Widget } from "../widget";

export interface MaterialPageRouteProps {
    builder: (context: BuildContext) => Widget;
    maintainState?: boolean | undefined;
    fullscreenDialog?: boolean | undefined;
}

declare const flutter: {
    material: {
        materialPageRoute: (
            this: void,
            props: MaterialPageRouteProps
        ) => MaterialPageRoute;
    };
};

export class MaterialPageRoute
    extends JITAllocatingRTManagedBox<MaterialPageRouteProps, MaterialPageRoute>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(MaterialPageRoute);
    public props: MaterialPageRouteProps;
    public constructor(props: MaterialPageRouteProps) {
        super();

        this.props = props;

        if (this.props.maintainState === undefined) {
            this.props.maintainState = true;
        }

        if (this.props.fullscreenDialog === undefined) {
            this.props.fullscreenDialog = false;
        }
    }

    public unwrap(): MaterialPageRoute {
        return flutter.material.materialPageRoute(this.props);
    }
}
