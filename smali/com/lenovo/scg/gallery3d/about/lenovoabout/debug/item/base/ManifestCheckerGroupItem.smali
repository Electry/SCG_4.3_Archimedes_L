.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;
.source "ManifestCheckerGroupItem.java"


# instance fields
.field mAndroidManifestChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "package_name"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;

    invoke-direct {v0, p3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;->mAndroidManifestChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;

    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;->mAndroidManifestChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;

    invoke-virtual {v0, p4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->init(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public checkActivity(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;->mAndroidManifestChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->isActivityExited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;->lastFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->ERROR:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    invoke-direct {v0, v1, p1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;->add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V

    .line 26
    :cond_0
    return-void
.end method

.method public checkMeta(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;->mAndroidManifestChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;->lastFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->ERROR:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    invoke-direct {v0, v1, p1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;->add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V

    .line 41
    :cond_0
    return-void
.end method

.method public checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;->mAndroidManifestChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->isPermissionExited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;->lastFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->ERROR:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    invoke-direct {v0, v1, p1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;->add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V

    .line 36
    :cond_0
    return-void
.end method

.method public checkReceiver(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;->mAndroidManifestChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->isReceiverExited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;->lastFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->ERROR:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    invoke-direct {v0, v1, p1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;->add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V

    .line 31
    :cond_0
    return-void
.end method

.method lastFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
