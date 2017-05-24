.class public Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;
.super Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;
.source "CloudAlbumSetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;
    }
.end annotation


# instance fields
.field private isMultMode:Z

.field private isSelectFolder:Z

.field private mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

.field public mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;

.field private mAlbumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f020425

    const/4 v2, 0x1

    .line 47
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V

    .line 40
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->isMultMode:Z

    .line 287
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;

    .line 48
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .line 49
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f020433

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mOptions:Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->isMultMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->isSelectFolder:Z

    return v0
.end method


# virtual methods
.method public addPhoto(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;)V
    .locals 9
    .param p1, "cloudPhoto"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .prologue
    .line 97
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    .line 98
    .local v2, "cloudAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmParentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 99
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmPhotosCount()I

    move-result v3

    .line 100
    .local v3, "count":I
    const/4 v6, 0x1

    if-ge v3, v6, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmSmallThumbUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmPosterUri(Ljava/lang/String;)V

    .line 103
    :cond_1
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmPhotosCount(I)V

    goto :goto_0

    .line 106
    .end local v2    # "cloudAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    .end local v3    # "count":I
    :cond_2
    const/4 v0, 0x0

    .line 107
    .local v0, "albumset":I
    const/4 v5, 0x0

    .line 108
    .local v5, "photo":I
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    .line 109
    .restart local v2    # "cloudAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    add-int/lit8 v0, v0, 0x1

    .line 110
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmPhotosCount()I

    move-result v6

    add-int/2addr v5, v6

    .line 111
    goto :goto_1

    .line 112
    .end local v2    # "cloudAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "Cloud count albumset key"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string v6, "Cloud count photo key"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "Cloud init count photo action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 125
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
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, "mSelectedAlbumList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;>;"
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 131
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

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

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    .line 132
    .local v0, "cloudAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmIsSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v0    # "cloudAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public getSingleSelectedAlbum()Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "selectAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmIsSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    const/4 v2, 0x0

    .line 167
    .end local v0    # "i":I
    :goto_1
    return-object v2

    .line 160
    .restart local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "selectAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    .line 161
    .restart local v1    # "selectAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmIsSelect()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v2, v1

    .line 165
    goto :goto_1

    .line 156
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_3
    move-object v2, v1

    .line 167
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, "adapterView":Landroid/view/View;
    if-nez p2, :cond_2

    .line 187
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mInflate:Landroid/view/LayoutInflater;

    const v10, 0x7f04006e

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    move-object v9, v0

    .line 191
    check-cast v9, Landroid/view/ViewGroup;

    invoke-static {v9}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 192
    const v9, 0x7f100303

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 193
    .local v4, "imgAlbumSetPoster":Landroid/widget/ImageView;
    const v9, 0x7f100306

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 194
    .local v8, "txAlbumSetName":Landroid/widget/TextView;
    const v9, 0x7f100307

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 195
    .local v7, "txAlbumCount":Landroid/widget/TextView;
    const v9, 0x7f100304

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 196
    .local v3, "imgAlbumSetCover":Landroid/widget/ImageView;
    const v9, 0x7f100303

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "imgAlbumSetPoster":Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 197
    .restart local v4    # "imgAlbumSetPoster":Landroid/widget/ImageView;
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 199
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, p1, :cond_1

    .line 200
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumName()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "albumSetName":Ljava/lang/String;
    const-string v9, "HWJ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "albumSetName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmPhotosCount()I

    move-result v1

    .line 203
    .local v1, "albumCount":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmPosterUri()Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "strAlbumSetPoster":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 206
    const-string v9, "HWJ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "albumSetName= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_0
    const-string v9, "HWJ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "albumCount= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const-string v10, "HWJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mAlbumList.get(position).getmAlbumId() = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mOptions:Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v9, v6, v4, v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 214
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 215
    iget-boolean v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->isMultMode:Z

    if-eqz v9, :cond_4

    .line 216
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmIsSelect()Z

    move-result v5

    .line 217
    .local v5, "isSelected":Z
    if-eqz v5, :cond_3

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    .end local v5    # "isSelected":Z
    :goto_2
    new-instance v9, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;

    invoke-direct {v9, p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;I)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    new-instance v9, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;

    invoke-direct {v9, p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;I)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 284
    .end local v1    # "albumCount":I
    .end local v2    # "albumSetName":Ljava/lang/String;
    .end local v6    # "strAlbumSetPoster":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 189
    .end local v3    # "imgAlbumSetCover":Landroid/widget/ImageView;
    .end local v4    # "imgAlbumSetPoster":Landroid/widget/ImageView;
    .end local v7    # "txAlbumCount":Landroid/widget/TextView;
    .end local v8    # "txAlbumSetName":Landroid/widget/TextView;
    :cond_2
    move-object v0, p2

    goto/16 :goto_0

    .line 217
    .restart local v1    # "albumCount":I
    .restart local v2    # "albumSetName":Ljava/lang/String;
    .restart local v3    # "imgAlbumSetCover":Landroid/widget/ImageView;
    .restart local v4    # "imgAlbumSetPoster":Landroid/widget/ImageView;
    .restart local v5    # "isSelected":Z
    .restart local v6    # "strAlbumSetPoster":Ljava/lang/String;
    .restart local v7    # "txAlbumCount":Landroid/widget/TextView;
    .restart local v8    # "txAlbumSetName":Landroid/widget/TextView;
    :cond_3
    const/16 v9, 0x8

    goto :goto_1

    .line 219
    .end local v5    # "isSelected":Z
    :cond_4
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 222
    :cond_5
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public isExistAlbumName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    .line 143
    .local v0, "album":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    if-eqz v0, :cond_0

    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const/4 v2, 0x1

    .line 150
    .end local v0    # "album":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSelectFolder(Z)V
    .locals 0
    .param p1, "is"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->isSelectFolder:Z

    .line 93
    return-void
.end method

.method public setAdapterListener(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;

    .line 291
    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "cloudDataList":Ljava/util/List;, "Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "albumset":I
    const/4 v4, 0x0

    .line 60
    .local v4, "photo":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    .line 61
    .local v2, "cloudAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    add-int/lit8 v0, v0, 0x1

    .line 62
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmPhotosCount()I

    move-result v5

    add-int/2addr v4, v5

    .line 63
    goto :goto_0

    .line 64
    .end local v2    # "cloudAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "Cloud count albumset key"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v5, "Cloud count photo key"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "Cloud init count photo action"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public setSelectAll(Z)V
    .locals 3
    .param p1, "all"    # Z

    .prologue
    .line 175
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 180
    :cond_0
    return-void

    .line 176
    :cond_1
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->isMultMode:Z

    .line 177
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    .line 178
    .local v1, "item":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmIsSelect(Z)V

    goto :goto_0
.end method

.method public setSelectMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->isMultMode:Z

    .line 172
    return-void
.end method
