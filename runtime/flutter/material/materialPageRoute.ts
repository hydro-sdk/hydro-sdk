import { BuildContext } from "../buildContext";
import { Widget } from "../widget";
import { JITAllocatingRTManagedBox } from "../../syntheticBox";
import { DartObject } from "../../dart/core/object";

interface MaterialPageRouteProps {
    builder: (context: BuildContext) => Widget
    maintainState?: boolean | undefined;
    fullscreenDialog?: boolean | undefined;
}

declare const flutter: {
    material: {
        materialPageRoute: (this: void, props: MaterialPageRouteProps) => MaterialPageRoute;
    }
}

export class MaterialPageRoute extends JITAllocatingRTManagedBox<MaterialPageRouteProps, MaterialPageRoute> implements Readonly<DartObject>{
    public readonly runtimeType = "MaterialPageRoute";
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