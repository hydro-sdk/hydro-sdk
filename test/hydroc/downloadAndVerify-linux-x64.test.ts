(global as any).HYDROC_DISABLE_TOP_LEVEL = true;

import {
    Hydroc,
    HydrocMockChmodProvider,
    HydrocMockFsProvider,
    HydrocMockGhReleasesFileProvider,
    HydrocMockGhReleasesFsProvider,
    HydrocMockLogger,
    MockFsNode,
    MockFsNodeKind,
    TargetPlatform,
} from "../../hydroc";

test("should successfully download, verify and set-executable bit on sdk-tool", async () => {
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
                                                                "mock-tool-linux-x64":
                                                                    {
                                                                        kind: MockFsNodeKind.kFile,
                                                                        fileMode:
                                                                            "",
                                                                        content:
                                                                            "this is mock-tool-linux-x64",
                                                                    },
                                                                "mock-tool-linux-x64.sha256":
                                                                    {
                                                                        kind: MockFsNodeKind.kFile,
                                                                        fileMode:
                                                                            "",
                                                                        content:
                                                                            "e1ee0759c88014ee1da0b9fd59a6f95e47540e98b4729a95c0053bbcb628acf2",
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
        pathSeparator: "/",
    });

    const logger = new HydrocMockLogger();

    const hydroc = new Hydroc({
        sdkToolsVersion: "1.2.3",
        sdkTools: ["mock-tool"],
        ghFilesProvider: mockGhFileProvider,
        fsProvider: mockOutputFileSystem,
        chmodProvider: new HydrocMockChmodProvider({
            mockFsNode: mockOutputFileSystem.mockFsNode,
            pathSeparator: "/",
        }),
        logger: logger,
        targetPlatform: TargetPlatform.linuxx64,
    });

    await hydroc.downloadMissingSdkTools();

    expect(logger.loggedLines[0]).toBe(
        "Downloading Hydro-SDK tools version 1.2.3 to .hydroc/1.2.3/sdk-tools"
    );

    expect(mockOutputFileSystem.mockFsNode).toMatchObject({
        kind: MockFsNodeKind.kDirectory,
        children: {
            ".hydroc": {
                kind: MockFsNodeKind.kDirectory,
                children: {
                    "1.2.3": {
                        kind: MockFsNodeKind.kDirectory,
                        children: {
                            "sdk-tools": {
                                kind: MockFsNodeKind.kDirectory,
                                children: {
                                    "mock-tool-linux-x64": {
                                        kind: MockFsNodeKind.kFile,
                                        fileMode: "+x",
                                        content: "this is mock-tool-linux-x64",
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
    });
});
