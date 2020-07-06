import { TranspileStringResult } from "typescript-to-lua";
import * as srcMap from "source-map";
import { ModuleDebugInfo } from "./moduleDebugInfo";

export async function addOriginalMappings(debugInfo: Array<ModuleDebugInfo>, src: TranspileStringResult): Promise<void> {
    await srcMap.SourceMapConsumer.with(JSON.parse(src.file!.sourceMap!), null, (consumer: srcMap.BasicSourceMapConsumer | srcMap.IndexedSourceMapConsumer) => {
        debugInfo.forEach((x) => {
            let { line, column } = consumer.originalPositionFor({
                line: x.lineStart,
                column: x.columnStart,
            });

            x.originalLineStart = line ?? 0;
            x.originalColumnStart = column ?? 0;
        });

    });
}