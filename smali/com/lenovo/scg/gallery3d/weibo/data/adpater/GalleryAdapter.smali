.class public Lcom/lenovo/scg/gallery3d/weibo/data/adpater/GalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryAdapter.java"


# instance fields
.field private mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/GalleryAdapter;->mBitmaps:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/GalleryAdapter;->mContext:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/GalleryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/GalleryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "mBitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/GalleryAdapter;->mBitmaps:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/GalleryAdapter;->mContext:Landroid/content/Context;

    .line 33
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/GalleryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/GalleryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 35
    if-eqz p2, :cond_0

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/GalleryAdapter;->mBitmaps:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/GalleryAdapter;->mBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/GalleryAdapter;->mBitmaps:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 61
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 62
    .local v1, "imgView":Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    if-nez p2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/GalleryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400e2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    :cond_0
    const v2, 0x7f1005a6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "imgView":Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    .line 74
    .restart local v1    # "imgView":Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    return-object p2
.end method
