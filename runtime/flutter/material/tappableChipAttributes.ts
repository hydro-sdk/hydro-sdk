export interface ITappableChipAttributes {
    getOnPressed: () => () => void | undefined;
    getPressElevation: () => number | undefined;
    getTooltip: () => string | undefined;
}
