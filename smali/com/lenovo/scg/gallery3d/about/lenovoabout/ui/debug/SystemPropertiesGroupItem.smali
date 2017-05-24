.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/SystemPropertiesGroupItem;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;
.source "SystemPropertiesGroupItem.java"


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;)V
    .locals 4
    .param p1, "config"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .prologue
    .line 10
    const-string/jumbo v0, "\u7cfb\u7edf\u914d\u7f6e\u4fe1\u606f"

    const-string/jumbo v1, "row, cmcc, cta, background data"

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;

    const-string/jumbo v3, "\u79fb\u52a8\u5b9a\u5236\u7248"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isCmcc()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u662f\uff0c \u4e0d\u663e\u793a\u68c0\u67e5\u66f4\u65b0\uff0c\u7981\u6b62\u540e\u53f0\u68c0\u67e5\u66f4\u65b0, \u8054\u7f51\u64cd\u4f5c\u5f39\u7a97\u63d0\u793a\u7528\u6237\u3002"

    :goto_0
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isCmcc()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->WARN:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    :goto_1
    invoke-direct {v2, v3, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/SystemPropertiesGroupItem;->add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V

    .line 17
    new-instance v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;

    const-string/jumbo v3, "\u6d77\u5916\u7248"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isRow()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u662f\uff0c \u9690\u85cf\u68c0\u67e5\u66f4\u65b0\uff0c\u9690\u85cf\u610f\u89c1\u53cd\u9988, \u9690\u85cfQQ, \u5fae\u535a"

    :goto_2
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isRow()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->WARN:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    :goto_3
    invoke-direct {v2, v3, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/SystemPropertiesGroupItem;->add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V

    .line 27
    new-instance v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;

    const-string/jumbo v3, "\u540e\u53f0\u6570\u636e"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isBackgroundDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u5141\u8bb8\u540e\u53f0\u6570\u636e"

    :goto_4
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isBackgroundDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->NORMAL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    :goto_5
    invoke-direct {v2, v3, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/SystemPropertiesGroupItem;->add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V

    .line 31
    return-void

    .line 12
    :cond_0
    const-string/jumbo v0, "\u5426"

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->NORMAL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    goto :goto_1

    .line 17
    :cond_2
    const-string/jumbo v0, "\u5426"

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->NORMAL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    goto :goto_3

    .line 27
    :cond_4
    const-string/jumbo v0, "\u7981\u6b62\u540e\u53f0\u6570\u636e, \u81ea\u52a8\u68c0\u67e5\u66f4\u65b0\u5931\u6548"

    goto :goto_4

    :cond_5
    sget-object v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->WARN:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    goto :goto_5
.end method
