.class public Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecentPicDataAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView$OnDeleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;
    }
.end annotation


# static fields
.field private static final MSG_REFRESH_IMAGE:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAdapterHandler:Landroid/os/Handler;

.field private mAdapterView:Landroid/view/View;

.field private mCameraBgIcon:Landroid/graphics/drawable/Drawable;

.field private mCameraIcon:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mCurrentRequestType:I

.field private mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private mIconRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/Vector",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImageListener:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;

.field private mImagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mImageview_layout:Landroid/widget/RelativeLayout;

.field private mInflate:Landroid/view/LayoutInflater;

.field private mIsFromGif:Z

.field private mIsReplaceImage:Z

.field private mItemPressIcon:Landroid/graphics/drawable/Drawable;

.field private mListCount:I

.field private mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;

.field private mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

.field private mSortImagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mCameraIcon:Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mCameraBgIcon:Landroid/graphics/drawable/Drawable;

    .line 72
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mIsReplaceImage:Z

    .line 74
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mIsFromGif:Z

    .line 76
    const-string v0, "RecentPicDataAdapter"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->TAG:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mCurrentRequestType:I

    .line 80
    iput v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mListCount:I

    .line 82
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    .line 84
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    .line 412
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$2;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mAdapterHandler:Landroid/os/Handler;

    .line 446
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$3;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImageListener:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;

    .line 87
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mIconRecords:Ljava/util/Map;

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mInflate:Landroid/view/LayoutInflater;

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mCameraIcon:Landroid/graphics/drawable/Drawable;

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mItemPressIcon:Landroid/graphics/drawable/Drawable;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mCurrentRequestType:I

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mIsReplaceImage:Z

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mIsFromGif:Z

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->refreshIcon(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;)V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mAdapterHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createOtherItem(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;ILandroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;)Landroid/view/View;
    .locals 5
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    .param p2, "position"    # I
    .param p3, "adapterView"    # Landroid/view/View;
    .param p4, "imageView"    # Landroid/widget/ImageView;
    .param p5, "imageSelectIcon"    # Landroid/widget/ImageView;

    .prologue
    .line 345
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 346
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    check-cast p1, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 349
    .restart local p1    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    :cond_0
    if-nez p1, :cond_2

    .line 379
    :cond_1
    :goto_0
    return-object p3

    .line 352
    :cond_2
    if-eqz p1, :cond_1

    .line 353
    invoke-virtual {p1, p2}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmPosition(I)V

    .line 354
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 356
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    const/4 v2, 0x0

    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->saveIconRecords(Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V

    .line 363
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    move-result-object v1

    .line 364
    .local v1, "resManager":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createOtherItem() image.getmUri() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createOtherItem() position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->getImageDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 369
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 370
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 359
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "resManager":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;
    :cond_3
    const/16 v2, 0x8

    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 374
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "resManager":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImageListener:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;

    invoke-virtual {v1, p1, v2, v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->loadImage(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;Landroid/graphics/drawable/Drawable;Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;)V

    goto :goto_0
.end method

.method private refreshIcon(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;)V
    .locals 6
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;

    .prologue
    .line 428
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mIconRecords:Ljava/util/Map;

    iget-object v5, p1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;->image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 429
    .local v1, "datas":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/boxcontrol/Image;>;"
    if-nez v1, :cond_1

    .line 435
    :cond_0
    return-void

    .line 430
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 431
    .local v0, "data":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mAdapterView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 432
    .local v3, "v":Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    iget-object v4, p1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private saveIconRecords(Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "data"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .prologue
    .line 438
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mIconRecords:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 439
    .local v0, "datas":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/boxcontrol/Image;>;"
    if-nez v0, :cond_0

    .line 440
    new-instance v0, Ljava/util/Vector;

    .end local v0    # "datas":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/boxcontrol/Image;>;"
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 441
    .restart local v0    # "datas":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/boxcontrol/Image;>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mIconRecords:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_1
    return-void
.end method

.method private sortListByDate()V
    .locals 8

    .prologue
    .line 194
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 195
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 197
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 198
    .local v0, "curImage":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 199
    .local v3, "sortListLen":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 200
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 201
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDateTaken()J

    move-result-wide v6

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDateTaken()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-lez v4, :cond_1

    .line 203
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 196
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDateTaken()J

    move-result-wide v6

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDateTaken()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-gez v4, :cond_2

    .line 206
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 199
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "curImage":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    .end local v2    # "j":I
    .end local v3    # "sortListLen":I
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    .line 214
    .end local v1    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public addImagesList(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V
    .locals 1
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .prologue
    .line 217
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_0
    return-void
.end method

.method public clearImagesList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    .line 112
    :cond_1
    return-void
.end method

.method public createImagesList()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSortImagesList:Ljava/util/ArrayList;

    .line 121
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    .line 410
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 124
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mCurrentRequestType:I

    if-nez v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mListCount:I

    .line 127
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mListCount:I

    .line 148
    :goto_0
    return v0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mListCount:I

    .line 130
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mListCount:I

    if-lt v0, v1, :cond_2

    .line 131
    iput v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mListCount:I

    .line 135
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mListCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mListCount:I

    goto :goto_0

    .line 133
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mListCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mListCount:I

    goto :goto_1

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mListCount:I

    .line 143
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mListCount:I

    if-lt v0, v1, :cond_4

    .line 144
    iput v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mListCount:I

    .line 148
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mListCount:I

    goto :goto_0
.end method

.method public getImagesListCount()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItem() position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemId() position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v3, 0x0

    .line 236
    .local v3, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    if-nez p2, :cond_1

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mInflate:Landroid/view/LayoutInflater;

    const v4, 0x7f040027

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 241
    .local v16, "adapterView":Landroid/view/View;
    :goto_0
    const v2, 0x7f1000a9

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 242
    .local v18, "imageView":Landroid/widget/ImageView;
    const v2, 0x7f10011f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 246
    .local v17, "imageSelectIcon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mCurrentRequestType:I

    if-nez v2, :cond_3

    .line 247
    if-nez p1, :cond_2

    .line 248
    new-instance v3, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .end local v3    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v15}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    .line 249
    .restart local v3    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    sget v2, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mSingleMode_FirstIcon_Position:I

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmPosition(I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mCameraIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    const/16 v2, 0x3c

    const/16 v4, 0x3c

    const/16 v5, 0x3c

    const/16 v6, 0x3c

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 258
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    if-eqz v3, :cond_0

    .line 261
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 272
    :cond_0
    :goto_1
    new-instance v2, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;Landroid/widget/ImageView;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    return-object v16

    .line 239
    .end local v16    # "adapterView":Landroid/view/View;
    .end local v17    # "imageSelectIcon":Landroid/widget/ImageView;
    .end local v18    # "imageView":Landroid/widget/ImageView;
    :cond_1
    move-object/from16 v16, p2

    .restart local v16    # "adapterView":Landroid/view/View;
    goto :goto_0

    .line 264
    .restart local v17    # "imageSelectIcon":Landroid/widget/ImageView;
    .restart local v18    # "imageView":Landroid/widget/ImageView;
    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 265
    add-int/lit8 v4, p1, -0x1

    move-object/from16 v2, p0

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->createOtherItem(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;ILandroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;)Landroid/view/View;

    goto :goto_1

    .line 268
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mCurrentRequestType:I

    if-ne v2, v4, :cond_0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    .line 269
    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->createOtherItem(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;ILandroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;)Landroid/view/View;

    goto :goto_1
.end method

.method public initImagesListState()V
    .locals 8

    .prologue
    .line 169
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 171
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 172
    .local v3, "img":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    .line 173
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "img.getDateTaken() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDateTaken()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .end local v3    # "img":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->sortListByDate()V

    .line 178
    .end local v0    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->getmSelectList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 179
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->getmSelectList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 181
    .local v2, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    if-eqz v2, :cond_2

    .line 182
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    goto :goto_1

    .line 186
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    :cond_3
    return-void
.end method

.method public onDeleteListener(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V
    .locals 1
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 397
    if-eqz p1, :cond_0

    .line 398
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    .line 399
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;->onPhotoSelectedChange(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V

    .line 400
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->notifyDataSetChanged()V

    .line 403
    :cond_0
    return-void
.end method

.method public setAdapterView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mAdapterView:Landroid/view/View;

    .line 384
    return-void
.end method

.method public setFromGif(Z)V
    .locals 0
    .param p1, "mIsFromGif"    # Z

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mIsFromGif:Z

    .line 465
    return-void
.end method

.method public setRequestType(I)V
    .locals 0
    .param p1, "currentType"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mCurrentRequestType:I

    .line 100
    return-void
.end method

.method public setmIsReplaceImage(Z)V
    .locals 0
    .param p1, "mIsReplaceImage"    # Z

    .prologue
    .line 460
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mIsReplaceImage:Z

    .line 461
    return-void
.end method

.method public setmOnPhotoSelectedChangeListener(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;)V
    .locals 0
    .param p1, "mOnPhotoSelectedChangeListener"    # Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;

    .line 388
    return-void
.end method

.method public setmSelectPhotoView(Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;)V
    .locals 0
    .param p1, "mSelectPhotoView"    # Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    .line 392
    return-void
.end method

.method public updateSelectedState()V
    .locals 3

    .prologue
    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mImagesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 164
    .local v1, "img":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "img":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    :cond_0
    return-void
.end method
