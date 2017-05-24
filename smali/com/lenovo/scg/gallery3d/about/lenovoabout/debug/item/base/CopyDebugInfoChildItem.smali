.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/CopyDebugInfoChildItem;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ToTextDebugChildItem;
.source "CopyDebugInfoChildItem.java"


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;>;"
    const-string/jumbo v0, "\u62f7\u8d1d\u5230\u7c98\u8d34\u677f"

    const-string/jumbo v1, "\u5c06\u8c03\u8bd5\u4fe1\u606f\u62f7\u8d1d\u5230\u7c98\u8d34\u677f"

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ToTextDebugChildItem;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ClipboardHelper;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ClipboardHelper;-><init>(Landroid/content/Context;)V

    .line 22
    .local v1, "helper":Lcom/lenovo/scg/gallery3d/about/lenovoabout/ClipboardHelper;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/CopyDebugInfoChildItem;->toText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ClipboardHelper;->setText(Ljava/lang/String;)V

    .line 24
    const-string/jumbo v2, "\u5df2\u62f7\u8d1d"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 25
    return-void
.end method
