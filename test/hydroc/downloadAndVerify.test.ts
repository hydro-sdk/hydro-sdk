(global as any).HYDROC_DISABLE_TOP_LEVEL = true;

import * as path from "path";

import {
    Hydroc,
    HydrocMockFsProvider,
    HydrocMockGhReleasesFileProvider,
    HydrocMockGhReleasesFsProvider,
    MockFsNode,
    MockFsNodeKind,
} from "../../hydroc";
test("", async () => {
    const mockGhFsProvider = new HydrocMockGhReleasesFsProvider({
        mockFsNode: {
            kind: MockFsNodeKind.kDirectory,
            children: {
                "github.com": {
                    kind: MockFsNodeKind.kDirectory,
                    children: {
                        "hydro-sdk": {
                            kind: MockFsNodeKind.kDirectory,
                            children: {
                                "hydro-sdk": {
                                    kind: MockFsNodeKind.kDirectory,
                                    children: {
                                        releases: {
                                            kind: MockFsNodeKind.kDirectory,
                                            children: {
                                                download: {
                                                    kind: MockFsNodeKind.kDirectory,
                                                    children: {
                                                        "1.2.3": {
                                                            kind: MockFsNodeKind.kDirectory,
                                                            children: {
                                                                "mock-tool-darwin-x64":
                                                                    {
                                                                        kind: MockFsNodeKind.kFile,
                                                                        content:
                                                                            "this is mock-tool-darwin-x64",
                                                                    },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        } as MockFsNode,
        pathSeparator: "/",
    });

    const mockGhFileProvider = new HydrocMockGhReleasesFileProvider({
        fsProvider: mockGhFsProvider,
    });

    const mockOutputFileSystem = new HydrocMockFsProvider({
        mockFsNode: {
            kind: MockFsNodeKind.kDirectory,
            children: {},
        } as MockFsNode,
        pathSeparator: path.sep as "\\" | "/",
    });

    const hydroc = new Hydroc({
        sdkToolsVersion: "1.2.3",
        sdkTools: ["mock-tool"],
        ghFilesProvider: mockGhFileProvider,
        fsProvider: mockOutputFileSystem,
    });

    await hydroc.downloadMissingSdkTools();
});
