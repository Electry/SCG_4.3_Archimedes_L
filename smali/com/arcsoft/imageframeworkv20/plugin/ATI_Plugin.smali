.class public Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;
.super Ljava/lang/Object;
.source "ATI_Plugin.java"


# static fields
.field public static final mbDebugable:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enablePlugin(II)V
    .locals 0
    .param p0, "iPluginId"    # I
    .param p1, "iEnable"    # I

    .prologue
    .line 119
    invoke-static {p0, p1}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_enablePlugin(II)V

    .line 120
    return-void
.end method

.method public static getParams(II)Ljava/lang/Object;
    .locals 1
    .param p0, "iPluginId"    # I
    .param p1, "iFlag"    # I

    .prologue
    .line 135
    invoke-static {p0, p1}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_getParams(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(I)[Ljava/lang/Object;
    .locals 1
    .param p0, "iPluginId"    # I

    .prologue
    .line 176
    invoke-static {p0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_getVersion(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static initPlugin(IIIILjava/lang/Object;)I
    .locals 1
    .param p0, "iPluginId"    # I
    .param p1, "iWidth"    # I
    .param p2, "iHeight"    # I
    .param p3, "iFormat"    # I
    .param p4, "objExt"    # Ljava/lang/Object;

    .prologue
    .line 123
    invoke-static {p0, p1, p2, p3, p4}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_initPlugin(IIIILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static loadPlugin(ILjava/lang/String;)I
    .locals 1
    .param p0, "iPluginId"    # I
    .param p1, "sPluginName"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_loadPlugin(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static loadPluginByFullPath(ILjava/lang/String;)I
    .locals 1
    .param p0, "iPluginId"    # I
    .param p1, "sPluginName"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p0, p1}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_loadPluginByFullPath(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native native_enablePlugin(II)V
.end method

.method private static native native_getParams(II)Ljava/lang/Object;
.end method

.method private static native native_getVersion(I)[Ljava/lang/Object;
.end method

.method private static native native_initPlugin(IIIILjava/lang/Object;)I
.end method

.method private static native native_loadPlugin(ILjava/lang/String;)I
.end method

.method private static native native_loadPluginByFullPath(ILjava/lang/String;)I
.end method

.method private static native native_process(II[BIIIILjava/lang/Object;)I
.end method

.method private static native native_processEx(II[I[IIIIILjava/lang/Object;)I
.end method

.method private static native native_processFiles(II[Ljava/lang/String;ILjava/lang/Object;)I
.end method

.method private static native native_setAppCbNotify(Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;)V
.end method

.method private static native native_setAppPackageName(Ljava/lang/String;)V
.end method

.method private static native native_setDebugInfo(I[Ljava/lang/String;)V
.end method

.method private static native native_setDebugable(II)V
.end method

.method private static native native_setImgFormat(II)I
.end method

.method private static native native_setImgSize(III)I
.end method

.method private static native native_setParams(IILjava/lang/Object;)I
.end method

.method private static native native_unInitPlugin(I)V
.end method

.method private static native native_unLoadPlugin(I)V
.end method

.method public static processCompressData(II[BIILjava/lang/Object;)I
    .locals 8
    .param p0, "iPluginId"    # I
    .param p1, "iDataType"    # I
    .param p2, "byArrData"    # [B
    .param p3, "iSize"    # I
    .param p4, "iDataFormat"    # I
    .param p5, "objExt"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 168
    move v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_process(II[BIIIILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static processCompressData(II[I[IIILjava/lang/Object;)I
    .locals 9
    .param p0, "iPluginId"    # I
    .param p1, "iDataType"    # I
    .param p2, "hMemHandler"    # [I
    .param p3, "iPitch"    # [I
    .param p4, "iSize"    # I
    .param p5, "iDataFormat"    # I
    .param p6, "objExt"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 172
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_processEx(II[I[IIIIILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static processFiles(II[Ljava/lang/String;ILjava/lang/Object;)I
    .locals 1
    .param p0, "iPluginId"    # I
    .param p1, "iDataType"    # I
    .param p2, "sArrPaths"    # [Ljava/lang/String;
    .param p3, "iFilePixelFormat"    # I
    .param p4, "objExt"    # Ljava/lang/Object;

    .prologue
    .line 155
    invoke-static {p0, p1, p2, p3, p4}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_processFiles(II[Ljava/lang/String;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static processRawData(II[BIIILjava/lang/Object;)I
    .locals 8
    .param p0, "iPluginId"    # I
    .param p1, "iDataType"    # I
    .param p2, "byArrData"    # [B
    .param p3, "iWidth"    # I
    .param p4, "iHeight"    # I
    .param p5, "iDataFormat"    # I
    .param p6, "objExt"    # Ljava/lang/Object;

    .prologue
    .line 147
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_process(II[BIIIILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static processRawData(II[I[IIIILjava/lang/Object;)I
    .locals 9
    .param p0, "iPluginId"    # I
    .param p1, "iDataType"    # I
    .param p2, "hMemHandler"    # [I
    .param p3, "iPitch"    # [I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p6, "iDataFormat"    # I
    .param p7, "objExt"    # Ljava/lang/Object;

    .prologue
    .line 151
    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_processEx(II[I[IIIIILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static setAppCbNotify(Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;)V
    .locals 0
    .param p0, "cbNotify"    # Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_setAppCbNotify(Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;)V

    .line 104
    return-void
.end method

.method public static setAppPackageName(Ljava/lang/String;)V
    .locals 0
    .param p0, "sPackageName"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {p0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_setAppPackageName(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static setDebugInfo(I[Ljava/lang/String;)V
    .locals 0
    .param p0, "pluginId"    # I
    .param p1, "infos"    # [Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {p0, p1}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_setDebugInfo(I[Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public static setDebugable(II)V
    .locals 0
    .param p0, "pluginId"    # I
    .param p1, "enable"    # I

    .prologue
    .line 181
    invoke-static {p0, p1}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_setDebugable(II)V

    .line 183
    return-void
.end method

.method public static setImgFormat(II)I
    .locals 1
    .param p0, "iPluginId"    # I
    .param p1, "iImgFormat"    # I

    .prologue
    .line 143
    invoke-static {p0, p1}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_setImgFormat(II)I

    move-result v0

    return v0
.end method

.method public static setImgSize(III)I
    .locals 1
    .param p0, "iPluginId"    # I
    .param p1, "iWidth"    # I
    .param p2, "iHeight"    # I

    .prologue
    .line 139
    invoke-static {p0, p1, p2}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_setImgSize(III)I

    move-result v0

    return v0
.end method

.method public static setParams(IILjava/lang/Object;)I
    .locals 1
    .param p0, "iPluginId"    # I
    .param p1, "iFlag"    # I
    .param p2, "objExt"    # Ljava/lang/Object;

    .prologue
    .line 131
    invoke-static {p0, p1, p2}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_setParams(IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static unInitPlugin(I)V
    .locals 0
    .param p0, "iPluginId"    # I

    .prologue
    .line 127
    invoke-static {p0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_unInitPlugin(I)V

    .line 128
    return-void
.end method

.method public static unLoadPlugin(I)V
    .locals 0
    .param p0, "iPluginId"    # I

    .prologue
    .line 115
    invoke-static {p0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->native_unLoadPlugin(I)V

    .line 116
    return-void
.end method
