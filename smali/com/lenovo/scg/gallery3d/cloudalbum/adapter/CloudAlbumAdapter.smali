.class public Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;
.super Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;
.source "CloudAlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;
    }
.end annotation


# instance fields
.field private isMultMode:Z

.field public mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;

.field private mAlbumId:Ljava/lang/String;

.field private mPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, 0x7f020426

    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V

    .line 23
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->isMultMode:Z

    .line 27
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mAlbumId:Ljava/lang/String;

    .line 252
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;

    .line 31
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mOptions:Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->isMultMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addData(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;)V
    .locals 1
    .param p1, "photo"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    return-void
.end method

.method public addDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_0
    return-void
.end method

.method public addPhoto(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;)V
    .locals 2
    .param p1, "cloudPhoto"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmParentId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    return-void
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "albumName":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmParentName()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 130
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedAlbumList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v2, "mSelectedPhotoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .line 137
    .local v0, "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmIsSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v0    # "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/16 v9, 0x8

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "adapterView":Landroid/view/View;
    if-nez p2, :cond_2

    .line 162
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mInflate:Landroid/view/LayoutInflater;

    const v10, 0x7f040070

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 166
    :goto_0
    const v7, 0x7f1002f9

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 167
    .local v3, "imgAlbumPoster":Landroid/widget/ImageView;
    const v7, 0x7f1002fa

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 168
    .local v2, "imageSelectIcon":Landroid/widget/ImageView;
    const v7, 0x7f10030b

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 169
    .local v1, "imageDownloadIcon":Landroid/widget/ImageView;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 171
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, p1, :cond_1

    .line 172
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmSmallThumbUrl()Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, "strAlbumCover":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 175
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mOptions:Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v7, v6, v3, v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 179
    :goto_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 180
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 181
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmIsSelect()Z

    move-result v4

    .line 182
    .local v4, "isSelected":Z
    if-eqz v4, :cond_4

    move v7, v8

    :goto_2
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    .end local v4    # "isSelected":Z
    :cond_0
    :goto_3
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoDownload()I

    move-result v5

    .line 188
    .local v5, "is_download":I
    const/4 v7, 0x1

    if-ne v5, v7, :cond_6

    :goto_4
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    new-instance v7, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$1;

    invoke-direct {v7, p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;I)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    new-instance v7, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;

    invoke-direct {v7, p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;I)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 249
    .end local v5    # "is_download":I
    .end local v6    # "strAlbumCover":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 164
    .end local v1    # "imageDownloadIcon":Landroid/widget/ImageView;
    .end local v2    # "imageSelectIcon":Landroid/widget/ImageView;
    .end local v3    # "imgAlbumPoster":Landroid/widget/ImageView;
    :cond_2
    move-object v0, p2

    goto/16 :goto_0

    .line 177
    .restart local v1    # "imageDownloadIcon":Landroid/widget/ImageView;
    .restart local v2    # "imageSelectIcon":Landroid/widget/ImageView;
    .restart local v3    # "imgAlbumPoster":Landroid/widget/ImageView;
    .restart local v6    # "strAlbumCover":Ljava/lang/String;
    :cond_3
    const v7, 0x7f020426

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .restart local v4    # "isSelected":Z
    :cond_4
    move v7, v9

    .line 182
    goto :goto_2

    .line 185
    .end local v4    # "isSelected":Z
    :cond_5
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .restart local v5    # "is_download":I
    :cond_6
    move v8, v9

    .line 188
    goto :goto_4
.end method

.method public getmAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public getmPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    return-object v0
.end method

.method public setAdapterListener(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;

    .line 256
    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "cloudDataList":Ljava/util/List;, "Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setSelectAll(Z)V
    .locals 3
    .param p1, "all"    # Z

    .prologue
    .line 150
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 155
    :cond_0
    return-void

    .line 151
    :cond_1
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->isMultMode:Z

    .line 152
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .line 153
    .local v1, "item":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmIsSelect(Z)V

    goto :goto_0
.end method

.method public setSelectMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->isMultMode:Z

    .line 147
    return-void
.end method

.method public setmAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlbumId"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mAlbumId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public updatePhoto(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;)V
    .locals 4
    .param p1, "cloudPhoto"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .prologue
    .line 81
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 87
    :cond_0
    return-void

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .line 83
    .local v1, "photo":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoDownload(I)V

    goto :goto_0
.end method
