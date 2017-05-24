.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/EmailDebugInfoChildItem;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ToTextDebugChildItem;
.source "EmailDebugInfoChildItem.java"


# instance fields
.field mEmail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p2, "email"    # Ljava/lang/String;
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
    const-string/jumbo v0, "\u53d1\u9001\u90ae\u4ef6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u53d1\u9001\u672c\u9875\u8c03\u8bd5\u4fe1\u606f\u5230: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ToTextDebugChildItem;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/EmailDebugInfoChildItem;->mEmail:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 23
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "plain/text"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const-string v3, "android.intent.extra.EMAIL"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/EmailDebugInfoChildItem;->mEmail:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "About \u8c03\u8bd5\u4fe1\u606f"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/EmailDebugInfoChildItem;->toText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "\u627e\u4e0d\u5230\u7535\u5b50\u90ae\u4ef6\u5ba2\u6237\u7aef"

    invoke-static {v0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
