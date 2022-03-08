import { IColor } from "../../dart/ui/color";
import { IBuildContext } from "../widgets/buildContext";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        expansionPanel: (
            this: void,
            expansionPanel: IExpansionPanel,
            props: {
                backgroundColor?: IColor | undefined;
                canTapOnHeader: boolean;
                isExpanded: boolean;
                body: IWidget;
                headerBuilder: (
                    context: IBuildContext,
                    isExpanded: boolean
                ) => IWidget;
            }
        ) => IExpansionPanel;
    };
};
export interface IExpansionPanel {
    body: IWidget;
    isExpanded: boolean;
    canTapOnHeader: boolean;
    backgroundColor: IColor | undefined;
}
export class ExpansionPanel {
    public readonly body: IWidget = undefined as any;
    public readonly isExpanded: boolean = undefined as any;
    public readonly canTapOnHeader: boolean = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public constructor(props: {
        backgroundColor?: IColor | undefined;
        canTapOnHeader?: boolean;
        isExpanded?: boolean;
        body: IWidget;
        headerBuilder: (context: IBuildContext, isExpanded: boolean) => IWidget;
    }) {
        flutter.material.expansionPanel(this, {
            ...expansionPanelDefaultProps,
            ...props,
        });
    }
}
const expansionPanelDefaultProps = {
    canTapOnHeader: false,
    isExpanded: false,
};
