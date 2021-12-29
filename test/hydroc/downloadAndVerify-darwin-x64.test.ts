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
                                                                "mock-tool-darwin-x64":
                                                                    {
                                                                        kind: MockFsNodeKind.kFile,
                                                                        fileMode:
                                                                            "",
                                                                        content:
                                                                            "this is mock-tool-darwin-x64",
                                                                    },
                                                                "mock-tool-darwin-x64.sha256":
                                                                    {
                                                                        kind: MockFsNodeKind.kFile,
                                                                        fileMode:
                                                                            "",
                                                                        content:
                                                                            "08349b6a0fe6c070e30bf1767accfa8c3e94706625e815fc959e9bfd46c20c58",
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
        targetPlatform: TargetPlatform.darwinx64,
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
                                    "mock-tool-darwin-x64": {
                                        kind: MockFsNodeKind.kFile,
                                        fileMode: "+x",
                                        content: "this is mock-tool-darwin-x64",
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
