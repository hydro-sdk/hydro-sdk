export class CupertinoTabControllerProps {
    initialIndex?: number | undefined;
}

declare const flutter: {
    cupertino: {
        cupertinoTabController: (this: void, controller: CupertinoTabController, props: CupertinoTabControllerProps) => CupertinoTabController;
    }
}

export class CupertinoTabController {
    public getIndex: () => number = undefined as any;
    public setText: (value: number) => void = undefined as any;

    private props: CupertinoTabControllerProps | undefined;

    public constructor(props?: CupertinoTabControllerProps | undefined) {
        this.props = props;
        if (this?.props?.initialIndex === undefined) {
            this.props.initialIndex = 0;
        }

        flutter.cupertino.cupertinoTabController(this, this.props);
    }
}
