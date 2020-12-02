import { Key } from "readline";

import { Type } from "../../dart/core/type";
import { TextAlign } from "../../dart/ui/textAlign";
import { TextDirection } from "../../dart/ui/textDirection";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { InlineSpan } from "../painting/inlineSpan";
import { TextWidthBasis } from "../painting/textWidthBasis";
import { TextOverflow } from "../rendering/textOverflow";
import { Widget } from "../widget";
import { StatelessWidget } from "./statelessWidget";

export interface RichTextProps {
    key?: Key | undefined;
    text: InlineSpan;
    textAlign?: TextAlign | undefined;
    textDirection?: TextDirection | undefined;
    softWrap?: boolean | undefined;
    overflow?: TextOverflow | undefined;
    textScaleFactor?: number | undefined;
    maxLines?: number | undefined;
    textWidthBasis?: TextWidthBasis | undefined;
}

declare const flutter: {
    widgets: {
        richText: (this: void, props: RichTextProps) => RichText;
    };
};

export class RichText extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(RichText);
    public props: RichTextProps;
    public constructor(props: RichTextProps) {
        super();
        this.props = props;

        if (this.props.textAlign === undefined) {
            this.props.textAlign = TextAlign.start;
        }

        if (this.props.softWrap === undefined) {
            this.props.softWrap = true;
        }

        if (this.props.overflow === undefined) {
            this.props.overflow = TextOverflow.clip;
        }

        if (this.props.textScaleFactor === undefined) {
            this.props.textScaleFactor = 1.0;
        }

        if (this.props.textWidthBasis === undefined) {
            this.props.textWidthBasis = TextWidthBasis.parent;
        }
    }

    public build(): Widget {
        return flutter.widgets.richText(this.props);
    }
}
