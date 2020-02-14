export interface text {
    tag: string;
}

interface TextProps {

}

declare const flutter: {
    widgets: {
        text: (this: void, text: string) => text;
    }
}

export function Text(this: void, text: string) {
    return flutter.widgets.text(text);
}