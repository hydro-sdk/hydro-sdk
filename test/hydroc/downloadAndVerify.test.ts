(global as any).HYDROC_DISABLE_TOP_LEVEL = true;

import { Hydroc } from "../../hydroc";
test("", async () => {
    const hydroc = new Hydroc({
        sdkToolsVersion: "1.2.3",
    });
});
