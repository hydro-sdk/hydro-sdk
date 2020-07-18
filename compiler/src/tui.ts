import * as clip from "cli-progress";

export class Tui {
    private bar: clip.Bar;
    public leadingMessage: string;

    public constructor(leadingMessage: string) {
        this.leadingMessage = leadingMessage;
        this.bar = new clip.Bar({
            format: `${this.leadingMessage}  [{bar}] {value}/{total} {suffixMessage}`,
        });
        this.bar.start(0, 0, { suffixMessage: "" });
    }

    public stop() {
        this.bar.stop();
    }

    public update(currentStep: number, totalSteps: number, suffixMessage: string) {
        this.bar.setTotal(totalSteps);
        this.bar.update(currentStep, {
            suffixMessage
        });
    }
}