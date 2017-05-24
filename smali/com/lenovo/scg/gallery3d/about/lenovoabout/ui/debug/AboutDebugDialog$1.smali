.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog$1;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;
.source "AboutDebugDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;->addFuctions(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;

    invoke-direct {p0, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 93
    .local v1, "context":Landroid/content/Context;
    const-string v4, ""

    .line 95
    .local v4, "readme":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 96
    .local v3, "in":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;

    invoke-virtual {v5, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v3    # "in":Ljava/io/InputStream;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    const-string/jumbo v4, "\u4e0d\u80fd\u8bfb\u53d6readme\u4fe1\u606f!"

    .line 106
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v5, "About \u7248\u672c\u4fe1\u606f"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 109
    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 111
    return-void

    .line 98
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
