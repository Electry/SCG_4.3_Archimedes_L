.class public Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "CloudPhotoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$3;,
        Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$AdapterListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

.field public mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$AdapterListener;

.field private mClickPhoto:I

.field private mContext:Landroid/content/Context;

.field private mInflate:Landroid/view/LayoutInflater;

.field private mOptions:Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions;

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

.field private mViewPager:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .prologue
    const v3, 0x7f020426

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    .line 33
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mInflate:Landroid/view/LayoutInflater;

    .line 35
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .line 37
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mOptions:Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mClickPhoto:I

    .line 43
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mViewPager:Landroid/view/ViewGroup;

    .line 242
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$AdapterListener;

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mInflate:Landroid/view/LayoutInflater;

    .line 49
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mContext:Landroid/content/Context;

    .line 51
    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f020443

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

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

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mOptions:Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->initImageLoader(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mClickPhoto:I

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mClickPhoto:I

    return p1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 120
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 121
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 125
    return-void
.end method

.method public getClickPhoto()Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mClickPhoto:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mClickPhoto:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mClickPhoto:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClickPhotoName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "photoId"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "photoName":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoName()Ljava/lang/String;

    move-result-object v1

    .line 90
    .end local v0    # "i":I
    :cond_0
    return-object v1

    .line 83
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, -0x2

    .line 105
    check-cast p1, Landroid/view/View;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 106
    .local v1, "tag":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 107
    if-eqz v1, :cond_0

    .line 108
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    .end local v0    # "i":I
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_0
    move v0, v2

    .line 112
    goto :goto_1

    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 115
    goto :goto_1
.end method

.method public getViewPagerCurrentPos()I
    .locals 4

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "currentPos":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mViewPager:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mViewPager:Landroid/view/ViewGroup;

    check-cast v1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 98
    :cond_0
    const-string v1, "HWJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getViewPagerCurrentPos() currentPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v0
.end method

.method public getmClickPhoto()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mClickPhoto:I

    return v0
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
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    .line 155
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mViewPager:Landroid/view/ViewGroup;

    .line 156
    const-string v4, "HWJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "instantiateItem() position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mInflate:Landroid/view/LayoutInflater;

    const v5, 0x7f040079

    invoke-virtual {v4, v5, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, "imageLayout":Landroid/view/View;
    const v4, 0x7f10031e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 159
    .local v1, "imageView":Landroid/widget/ImageView;
    const v4, 0x7f10031f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 161
    .local v2, "loadingBar":Landroid/widget/ProgressBar;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 162
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 163
    const/4 v3, 0x0

    .line 164
    .local v3, "strPhotoCover":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmBigThumbUrl()Ljava/lang/String;

    move-result-object v3

    .line 166
    const-string v4, "HWJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strPhotoCover = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eqz v3, :cond_2

    .line 168
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mOptions:Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions;

    new-instance v6, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;Landroid/widget/ProgressBar;)V

    invoke-virtual {v4, v3, v1, v5, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 222
    .end local v3    # "strPhotoCover":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 223
    new-instance v4, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$2;

    invoke-direct {v4, p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$2;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    move-object v4, p1

    .line 237
    check-cast v4, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v0, v7}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 238
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 239
    return-object v0

    .line 219
    .restart local v3    # "strPhotoCover":Ljava/lang/String;
    :cond_2
    const v4, 0x7f020426

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 142
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAdapterListener(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$AdapterListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$AdapterListener;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$AdapterListener;

    .line 246
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
    .line 58
    .local p1, "cloudDataList":Ljava/util/List;, "Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mPhotoList:Ljava/util/List;

    .line 59
    return-void
.end method

.method public setmClickPhoto(I)V
    .locals 0
    .param p1, "mClickPhoto"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->mClickPhoto:I

    .line 78
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 151
    return-void
.end method
