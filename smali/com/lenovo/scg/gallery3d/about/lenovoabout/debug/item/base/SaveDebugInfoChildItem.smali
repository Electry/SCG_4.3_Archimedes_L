.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/SaveDebugInfoChildItem;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ToTextDebugChildItem;
.source "SaveDebugInfoChildItem.java"


# instance fields
.field mSavePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;>;"
    const-string/jumbo v0, "\u4fdd\u5b58\u8c03\u8bd5\u4fe1\u606f"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4fdd\u5b58\u8c03\u8bd5\u4fe1\u606f\u5230\u6587\u4ef6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ToTextDebugChildItem;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/SaveDebugInfoChildItem;->mSavePath:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 25
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/SaveDebugInfoChildItem;->mSavePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/SaveDebugInfoChildItem;->toText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 27
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "\u5df2\u4fdd\u5b58\u5230\u6587\u4ef6"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
