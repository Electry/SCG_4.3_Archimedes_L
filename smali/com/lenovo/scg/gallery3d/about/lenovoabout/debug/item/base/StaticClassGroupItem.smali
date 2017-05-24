.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;
.source "StaticClassGroupItem.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "scan all static fields"

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 14
    .local v1, "name":Ljava/lang/String;
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker;-><init>()V

    .line 16
    .local v0, "invoker":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker;
    :try_start_0
    new-instance v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem$1;

    invoke-direct {v2, p0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker;->scanAllStaticField(Ljava/lang/Class;Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker$InvokeNonParamListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v2

    goto :goto_0
.end method
