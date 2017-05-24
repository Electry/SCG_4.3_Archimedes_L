.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/SystemInfoGroupItem;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;
.source "SystemInfoGroupItem.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string/jumbo v0, "\u7cfb\u7edf\u4fe1\u606f"

    const-string/jumbo v1, "\u7cfb\u7edf\u76f8\u5173\u7684\u4fe1\u606f"

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem;

    const-class v1, Landroid/os/Build;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/SystemInfoGroupItem;->merge(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;)V

    .line 14
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem;

    const-class v1, Landroid/os/Build$VERSION;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/StaticClassGroupItem;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/SystemInfoGroupItem;->merge(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;)V

    .line 15
    return-void
.end method
