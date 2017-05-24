.class public Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# instance fields
.field private mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

.field private mBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClickPosition:I

.field private mInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

.field private mPhotoInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestCount:I

.field private mRequestUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSort:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;
    .param p3, "sort"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "photoInfos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;>;"
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mBitmaps:Ljava/util/HashMap;

    .line 33
    iput v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mRequestCount:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mRequestUrls:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .line 39
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mPhotoInfos:Ljava/util/List;

    .line 40
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mSort:Ljava/lang/String;

    .line 41
    iput v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mRequestCount:I

    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mRequestUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    return-void
.end method


# virtual methods
.method public addBitmap(Landroid/graphics/Bitmap;Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "info"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->notifyDataSetChanged()V

    .line 106
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mPhotoInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLargePhotoUrl(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mPhotoInfos:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mPhotoInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-object v1

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mPhotoInfos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    .line 118
    .local v0, "photoInfo":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getLargePhotoUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPhotoInfo(I)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mPhotoInfos:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mPhotoInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-object v0

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mPhotoInfos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    .line 131
    .local v0, "photoInfo":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    goto :goto_0
.end method

.method public getSort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mSort:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    iput p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mClickPosition:I

    .line 66
    if-nez p2, :cond_2

    .line 67
    new-instance v3, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v3, "imageView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901ac

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 69
    .local v4, "imageWidth":I
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901ad

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 70
    .local v2, "imageHeight":I
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v6, v4, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    .end local v2    # "imageHeight":I
    .end local v4    # "imageWidth":I
    :goto_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mPhotoInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    .line 76
    .local v5, "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mSort:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setSort(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0207ec

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getPhotoUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 81
    .local v1, "bitmapCatch":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 82
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 85
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    :cond_1
    :goto_1
    return-object v3

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapCatch":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v3    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    :cond_2
    move-object v3, p2

    .line 73
    check-cast v3, Landroid/widget/ImageView;

    .restart local v3    # "imageView":Landroid/widget/ImageView;
    goto :goto_0

    .line 88
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmapCatch":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v5    # "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    :cond_3
    const-string v6, "ImageAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "url  :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getPhotoUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mRequestUrls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getPhotoUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 90
    const-string v6, "count"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load count     "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mRequestCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mRequestCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getPhotoUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mSort:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getUpdateTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->loadPhotoGrapherPhoto(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mRequestUrls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getPhotoUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public releaseResource()V
    .locals 7

    .prologue
    .line 137
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mPhotoInfos:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mPhotoInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mPhotoInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    .line 139
    .local v5, "workPhotoInfo":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->releaseBitmap()V

    goto :goto_0

    .line 141
    .end local v5    # "workPhotoInfo":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mPhotoInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 143
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 144
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 145
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 146
    .local v1, "bitmapCatch":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_2

    .line 147
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 148
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 149
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 153
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapCatch":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 154
    return-void
.end method
