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
    print("called ts text");
    return flutter.widgets.text(text);
}