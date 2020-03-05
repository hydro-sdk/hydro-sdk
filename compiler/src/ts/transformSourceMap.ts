import * as fs from "fs";
import * as path from "path";

export function transformSourceMap(fileName: string, file: string): string 
{
    const lines = file.split("\n");
    const srcMap = new Array<{ out: number; in: number }>();

    for (let i = 0; i != lines.length; ++i) 
    {
        const regex = new RegExp("__TS__SourceMapTraceBack\\(debug\\.getinfo\\(1\\)\\.short_src,");
        if (regex.test(lines[i])) 
        {
            let tokens = lines[i].split(",");
            tokens.splice(0, 1);
            tokens = tokens.join("").split("=").join("").split("{").join("").split("}").join("").split("").join("").split("\"").join("").split("(");

            let subTokens = tokens[0].split(" ").map((x) => 
            {
                return x.split("[");
            });

            subTokens = subTokens.filter((x) => 
            {
                if (x.length == 1 && x[0] == "") 
                {
                    return false;
                }
                return true;
            });

            const finalTokens = new Array<string>();

            subTokens.forEach((x) => 
            {
                x.forEach((k) => 
                {
                    let token = k.replace(new RegExp("]"), "");
                    token = token.replace(new RegExp("\\)"), "");
                    token = token.replace(new RegExp(";"), "");
                    if (token != "") 
                    {
                        finalTokens.push(token);
                    }
                });
            });

            for (let k = 0; k < finalTokens.length; k += 2) 
            {
                srcMap.push({
                    in: parseInt(finalTokens[k + 1]),
                    out: parseInt(finalTokens[k])
                });
            }

            break;
        }
    }

    if (srcMap && srcMap.length != 0) 
    {
        let insertions = 0;

        for (let i = 0; i != srcMap.length; ++i) 
        {
            if (!new RegExp("(return )").test(lines[srcMap[i].out + insertions - 2])) 
            {
                // lines.splice(srcMap[i].out + insertions - 1, 0, `__hydro__filename="${fileName}";__hydro__linenumber=${srcMap[i].in.toString()};`);
                insertions += 1;

                const inLine = srcMap[i].in;

                for (let k = srcMap.length; k >= 0; --k) 
                {
                    if (srcMap[k] && srcMap[k].in == inLine) 
                    {
                        srcMap.splice(k, 1);
                    }
                }
            }
        }
    }

    return lines.join("\n");

}