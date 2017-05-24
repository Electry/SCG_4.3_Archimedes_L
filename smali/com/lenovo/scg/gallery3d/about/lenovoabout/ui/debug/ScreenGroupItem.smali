.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/ScreenGroupItem;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;
.source "ScreenGroupItem.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const-string/jumbo v4, "\u5c4f\u5e55"

    const-string/jumbo v5, "\u5217\u4e3e\u5c4f\u5e55\u7684\u5404\u4e2a\u53c2\u6570"

    invoke-direct {p0, v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/ScreenGroupItem;->mContext:Landroid/content/Context;

    .line 17
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 18
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 19
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 21
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker;-><init>()V

    .line 24
    .local v1, "invoker":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker;
    :try_start_0
    const-string/jumbo v4, "\u5c4f\u5e55\u8d44\u6e90\u7c7b\u578b"

    const-class v5, Landroid/util/DisplayMetrics;

    iget v6, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v5, v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker;->scanFieldForIntValue(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/ScreenGroupItem;->addNormalChildItem(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    :try_start_1
    new-instance v4, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/ScreenGroupItem$1;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/ScreenGroupItem$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/ScreenGroupItem;)V

    invoke-virtual {v1, v2, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker;->scanAllField(Ljava/lang/Object;Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker$InvokeNonParamListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    :goto_1
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 38
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
