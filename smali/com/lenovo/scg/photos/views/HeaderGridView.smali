.class public Lcom/lenovo/scg/photos/views/HeaderGridView;
.super Landroid/widget/GridView;
.source "HeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/photos/views/HeaderGridView$1;,
        Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;,
        Lcom/lenovo/scg/photos/views/HeaderGridView$FullWidthFixedViewLayout;,
        Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HeaderGridView"


# instance fields
.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 76
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView;->initHeaderGridView()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 81
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView;->initHeaderGridView()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 86
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView;->initHeaderGridView()V

    .line 87
    return-void
.end method

.method private initHeaderGridView()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 72
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 180
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 181
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;

    .line 182
    .local v1, "info":Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;
    iget-object v3, v1, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 183
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 187
    .end local v1    # "info":Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;
    :cond_0
    return-void

    .line 180
    .restart local v1    # "info":Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/scg/photos/views/HeaderGridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 152
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 119
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;

    if-nez v3, :cond_0

    .line 120
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_0
    new-instance v2, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;-><init>(Lcom/lenovo/scg/photos/views/HeaderGridView$1;)V

    .line 124
    .local v2, "info":Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;
    new-instance v1, Lcom/lenovo/scg/photos/views/HeaderGridView$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/lenovo/scg/photos/views/HeaderGridView$FullWidthFixedViewLayout;-><init>(Lcom/lenovo/scg/photos/views/HeaderGridView;Landroid/content/Context;)V

    .line 125
    .local v1, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 126
    iput-object p1, v2, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 127
    iput-object v1, v2, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 128
    iput-object p2, v2, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 129
    iput-boolean p3, v2, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;->isSelectable:Z

    .line 130
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    if-eqz v0, :cond_1

    .line 135
    check-cast v0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->notifyDataSetChanged()V

    .line 137
    :cond_1
    return-void
.end method

.method public getHeaderViewCount()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 92
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 93
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView;->getNumColumns()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 169
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    check-cast v0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const/4 v1, 0x1

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lcom/lenovo/scg/photos/views/HeaderGridView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 175
    .end local v1    # "result":Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 40
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/photos/views/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 191
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 192
    new-instance v0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;

    iget-object v2, p0, Lcom/lenovo/scg/photos/views/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v2, p1}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;-><init>(Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 193
    .local v0, "hadapter":Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView;->getNumColumns()I

    move-result v1

    .line 194
    .local v1, "numColumns":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 195
    invoke-virtual {v0, v1}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 197
    :cond_0
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    .end local v0    # "hadapter":Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;
    .end local v1    # "numColumns":I
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setClipChildren(Z)V
    .locals 0
    .param p1, "clipChildren"    # Z

    .prologue
    .line 101
    return-void
.end method
