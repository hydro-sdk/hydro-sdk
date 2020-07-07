import { TranspileStringResult, TranspiledFile } from "typescript-to-lua";
import * as srcMap from "source-map";
import { ModuleDebugInfo } from "./moduleDebugInfo";

export async function addOriginalMappings(debugInfo: Array<ModuleDebugInfo>, src: TranspiledFile): Promise<void> {
    await srcMap.SourceMapConsumer.with(JSON.parse(src.sourceMap!), null, (consumer: srcMap.BasicSourceMapConsumer | srcMap.IndexedSourceMapConsumer) => {
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