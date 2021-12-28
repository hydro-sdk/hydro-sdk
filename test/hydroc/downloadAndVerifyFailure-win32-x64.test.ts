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

test("should successfully download and fail to verify sdk-tool", async () => {
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
                                                                "mock-tool-win32-x64.exe":
                                                                    {
                                                                        kind: MockFsNodeKind.kFile,
                                                                        fileMode:
                                                                            "",
                                                                        content:
                                                                            "this is mock-tool-win32-x64.exe",
                                                                    },
                                                                "mock-tool-win32-x64.exe.sha256":
                                                                    {
                                                                        kind: MockFsNodeKind.kFile,
                                                                        fileMode:
                                                                            "",
                                                                        content:
                                                                            "garbage-08349b6a0fe6c070e30bf1767accfa8c3e94706625e815fc959e9bfd46c20c58",
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
        pathSeparator: "\\",
    });

    const logger = new HydrocMockLogger();

    const hydroc = new Hydroc({
        sdkToolsVersion: "1.2.3",
        sdkTools: ["mock-tool"],
        ghFilesProvider: mockGhFileProvider,
        fsProvider: mockOutputFileSystem,
        chmodProvider: new HydrocMockChmodProvider({
            mockFsNode: mockOutputFileSystem.mockFsNode,
            pathSeparator: "\\",
        }),
        logger: logger,
        targetPlatform: TargetPlatform.win32x64,
    });

    await expect(
        async () => await hydroc.downloadMissingSdkTools()
    ).rejects.toThrow("Failed to verify integrity");

    expect(logger.loggedLines[0]).toBe(
        "Downloading Hydro-SDK tools version 1.2.3 to .hydroc\\1.2.3\\sdk-tools"
    );
    expect(logger.loggedLines[1]).toBe(
        "Could not verify integrity of SDK-tool mock-tool"
    );
    expect(logger.loggedLines[2]).toBe(
        "Got f7ac22caf03fc45fb095533cdbdd9cd9cfc659cf780f1ce834f7f6dee48e85a3"
    );
    expect(logger.loggedLines[3]).toBe(
        "expected garbage-08349b6a0fe6c070e30bf1767accfa8c3e94706625e815fc959e9bfd46c20c58"
    );

    expect(mockOutputFileSystem.mockFsNode).toStrictEqual({
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
                                children: {},
                            },
                        },
                    },
                },
            },
        },
    });
});
