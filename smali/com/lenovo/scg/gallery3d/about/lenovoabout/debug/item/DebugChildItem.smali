.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;
.source "DebugChildItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "level"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    .prologue
    .line 13
    invoke-direct {p0, p2, p1, p3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V

    .line 14
    return-void
.end method


# virtual methods
.method public newView(Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1
    .param p1, "last"    # Landroid/view/View;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 17
    const v0, 0x7f04009b

    invoke-virtual {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;->newViewByLayout(Landroid/view/View;Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
