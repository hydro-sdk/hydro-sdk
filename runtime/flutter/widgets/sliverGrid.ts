import { List } from "../../dart/collection/list";
import { Type } from "../../dart/core/type";
import { pauseInDebugger } from "../../dart/developer/debugger";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "./../foundation/key";
import { Widget } from "../widget";
import { StatelessWidget } from "./statelessWidget";

export interface SliverGridCountProps {
    type: "count";
    key?: Key | undefined;
    crossAxisCount: number;
    mainAxisSpacing?: number | undefined;
    crossAxisSpacing?: number | undefined;
    childAspectRatio?: number | undefined;
    children?: List<Widget> | undefined;
}

export interface SliverGridExtentProps {
    type: "extent";
    key?: Key | undefined;
    maxCrossAxisExtent: number;
    mainAxisSpacing?: number | undefined;
    crossAxisSpacing?: number | undefined;
    childAspectRatio?: number | undefined;
    children?: List<Widget> | undefined;
}

type SliverGridProps = SliverGridCountProps | SliverGridExtentProps;

declare const flutter: {
    widgets: {
        sliverGridCount: (
            this: void,
            props: SliverGridCountProps
        ) => SliverGrid;
        sliverGridExtent: (
            this: void,
            props: SliverGridExtentProps
        ) => SliverGrid;
    };
};

export class SliverGrid extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(SliverGrid);
    public props: SliverGridProps;
    private constructor(props: SliverGridProps) {
        super();

        this.props = props;
    }

    public static count(props: Omit<SliverGridCountProps, "type">) {
        if (props.mainAxisSpacing === undefined) {
            props.mainAxisSpacing = 0.0;
        }

        if (props.crossAxisSpacing === undefined) {
            props.crossAxisSpacing = 0.0;
        }

        if (props.childAspectRatio === undefined) {
            props.childAspectRatio = 1.0;
        }

        if (props.children === undefined) {
            props.children = List.fromArray([]);
        }

        return new SliverGrid({
            type: "count",
            key: props.key,
            crossAxisCount: props.crossAxisCount,
            mainAxisSpacing: props.crossAxisSpacing,
            crossAxisSpacing: props.crossAxisSpacing,
            childAspectRatio: props.childAspectRatio,
            children: props.children,
        });
    }

    public static extent(props: SliverGridExtentProps) {
        if (props.mainAxisSpacing === undefined) {
            props.mainAxisSpacing = 0.0;
        }

        if (props.crossAxisSpacing === undefined) {
            props.crossAxisSpacing = 0.0;
        }

        if (props.childAspectRatio === undefined) {
            props.childAspectRatio = 1.0;
        }

        if (props.children === undefined) {
            props.children = List.fromArray([]);
        }

        return new SliverGrid({
            type: "extent",
            key: props.key,
            maxCrossAxisExtent: props.maxCrossAxisExtent,
            mainAxisSpacing: props.crossAxisSpacing,
            crossAxisSpacing: props.crossAxisSpacing,
            childAspectRatio: props.childAspectRatio,
            children: props.children,
        });
    }

    public build() {
        switch (this.props.type) {
            case "count":
                return flutter.widgets.sliverGridCount(this.props);
                break;
            case "extent":
                return flutter.widgets.sliverGridExtent(this.props);
                break;
        }
    }
}
