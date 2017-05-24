.class public Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BackgroundListAdapter.java"


# instance fields
.field private frameImageDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;->frameImageDataList:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;->mContext:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;->frameImageDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 50
    if-nez p2, :cond_1

    .line 51
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040132

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "adapterView":Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;->frameImageDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;

    .line 57
    .local v1, "frameImageData":Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;
    const v4, 0x7f1007d1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 58
    .local v2, "frametThumbnail":Landroid/widget/ImageView;
    const v4, 0x7f1007d2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 59
    .local v3, "isFrameSelected":Landroid/widget/ImageView;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 61
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 63
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->getThumbnailRes()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    :cond_0
    return-object v0

    .line 53
    .end local v0    # "adapterView":Landroid/view/View;
    .end local v1    # "frameImageData":Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;
    .end local v2    # "frametThumbnail":Landroid/widget/ImageView;
    .end local v3    # "isFrameSelected":Landroid/widget/ImageView;
    :cond_1
    move-object v0, p2

    .restart local v0    # "adapterView":Landroid/view/View;
    goto :goto_0
.end method

.method public setFrameImageDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "frameImageDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/adapter/BackgroundListAdapter;->frameImageDataList:Ljava/util/ArrayList;

    .line 46
    return-void
.end method
