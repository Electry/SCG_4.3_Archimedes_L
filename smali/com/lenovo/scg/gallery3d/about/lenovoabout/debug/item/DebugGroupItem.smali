.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;
.source "DebugGroupItem.java"


# instance fields
.field protected childs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;

    .prologue
    .line 15
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->NORMAL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->childs:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V
    .locals 1
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public addNormalChildItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;

    sget-object v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->NORMAL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    invoke-direct {v0, p1, p2, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V

    .line 70
    return-void
.end method

.method public get(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;

    return-object v0
.end method

.method public getChilds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->childs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLevel()Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->ERROR:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    .line 56
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->hasWarn()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->WARN:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    goto :goto_0

    .line 56
    :cond_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->NORMAL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    goto :goto_0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->ERROR:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->hasLevel(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)Z

    move-result v0

    return v0
.end method

.method public hasLevel(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)Z
    .locals 4
    .param p1, "target"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "has":Z
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->childs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;

    .line 43
    .local v2, "item":Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->getLevel()Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 48
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;
    :cond_1
    return v0
.end method

.method public hasWarn()Z
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->WARN:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->hasLevel(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)Z

    move-result v0

    return v0
.end method

.method public merge(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;)V
    .locals 2
    .param p1, "source"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->childs:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    return-void
.end method

.method public newView(Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1
    .param p1, "last"    # Landroid/view/View;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 60
    const v0, 0x7f04009d

    invoke-virtual {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->newViewByLayout(Landroid/view/View;Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
