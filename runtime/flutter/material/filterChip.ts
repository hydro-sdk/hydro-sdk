import { Key } from "./../../flutter/foundation/key";
import { Clip } from "./../../flutter/painting/clip";
import { EdgeInsets } from "./../../flutter/painting/edgeInsets";
import { TextStyle } from "./../../flutter/painting/textStyle";
import { Color } from "../../dart/ui/color";
import { StatelessWidget } from "./../widgets/statelessWidget";
import { CircleBorder } from "../painting/circleBorder";
import { Widget } from "../widget";
import { MaterialTapTargetSize } from "./materialTapTargetSize";
import { RawChip } from "./rawChip";

export interface FilterChipProps {
    key?: Key | undefined;
    avatar?: Widget | undefined;
    label: Widget;
    labelStyle?: TextStyle | undefined;
    labelPadding?: EdgeInsets | undefined;
    selected?: boolean | undefined;
    onSelected: (this: void, val: boolean) => void;
    pressElevation?: number | undefined;
    disabledColor?: Color | undefined;
    selectedColor?: Color | undefined;
    tooltip?: string | undefined;
    //@todo FilterChipProps#shape : ShapeBorder
    clipBehavior?: Clip | undefined;
    //@todo FilterChipProps#focusNode : FocusNode
    autofocus?: boolean | undefined;
    backgroundColor?: Color | undefined;
    padding?: EdgeInsets | undefined;
    //@todo FilterChipProps#visualDensity : VisualDensity
    materialTapTargetSize?: MaterialTapTargetSize | undefined;
    elevation?: number | undefined;
    shadowColor?: Color | undefined;
    selectedShadowColor?: Color | undefined;
    showCheckmark?: boolean | undefined;
    checkmarkColor?: Color | undefined;
    avatarBorder?: CircleBorder | undefined; //this should be the base class type
}

export class FilterChip extends StatelessWidget {
    public props: FilterChipProps;
    public constructor(props: FilterChipProps) {
        super();
        this.props = props;

        if (this.props.selected === undefined) {
            this.props.selected = false;
        }

        if (this.props.avatarBorder === undefined) {
            this.props.avatarBorder = new CircleBorder({});
        }

        if (this.props.clipBehavior === undefined) {
            this.props.clipBehavior = Clip.none;
        }
        if (this.props.autofocus === undefined) {
            this.props.autofocus = false;
        }
    }

    public build() {
        return new RawChip({
            avatar: this.props.avatar,
            label: this.props.label,
            labelStyle: this.props.labelStyle,
            labelPadding: this.props.labelPadding,
            onSelected: this.props.onSelected,
            pressElevation: this.props.pressElevation,
            selected: this.props.selected,
            tooltip: this.props.tooltip,
            clipBehavior: this.props.clipBehavior,
            autofocus: this.props.autofocus,
            backgroundColor: this.props.backgroundColor,
            disabledColor: this.props.disabledColor,
            selectedColor: this.props.selectedColor,
            padding: this.props.padding,
            isEnabled: true,
            materialTapTargetSize: this.props.materialTapTargetSize,
            elevation: this.props.elevation,
            shadowColor: this.props.shadowColor,
            selectedShadowColor: this.props.selectedShadowColor,
            showCheckmark: this.props.showCheckmark,
            checkmarkColor: this.props.checkmarkColor,
            avatarBorder: this.props.avatarBorder,
        });
    }
}
