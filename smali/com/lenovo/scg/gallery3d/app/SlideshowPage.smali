.class public Lcom/lenovo/scg/gallery3d/app/SlideshowPage;
.super Lcom/lenovo/scg/gallery3d/app/ActivityState;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/SlideshowPage$SequentialSource;,
        Lcom/lenovo/scg/gallery3d/app/SlideshowPage$ShuffleSource;,
        Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;,
        Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Model;
    }
.end annotation


# static fields
.field public static final KEY_DREAM:Ljava/lang/String; = "dream"

.field public static final KEY_ITEM_PATH:Ljava/lang/String; = "media-item-path"

.field public static final KEY_PHOTO_INDEX:Ljava/lang/String; = "photo-index"

.field public static final KEY_RANDOM_ORDER:Ljava/lang/String; = "random-order"

.field public static final KEY_REPEAT:Ljava/lang/String; = "repeat"

.field public static final KEY_SET_PATH:Ljava/lang/String; = "media-set-path"

.field private static final MSG_LOAD_NEXT_BITMAP:I = 0x1

.field private static final MSG_SHOW_PENDING_BITMAP:I = 0x2

.field private static final SLIDESHOW_DELAY:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "SlideshowPage"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mModel:Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Model;

.field private mPendingSlide:Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;

.field private final mResultIntent:Landroid/content/Intent;

.field private final mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

.field private mSlideshowView:Lcom/lenovo/scg/gallery3d/ui/SlideshowView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    .line 109
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$1;-><init>(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 343
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;)Lcom/lenovo/scg/gallery3d/ui/SlideshowView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/lenovo/scg/gallery3d/ui/SlideshowView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->showPendingBitmap()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->loadNextBitmap()V

    return-void
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;)Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowPage;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/data/MediaSet;I)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->findMediaItem(Lcom/lenovo/scg/gallery3d/data/MediaSet;I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method private static findMediaItem(Lcom/lenovo/scg/gallery3d/data/MediaSet;I)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 6
    .param p0, "mediaSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .param p1, "index"    # I

    .prologue
    .line 254
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 255
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    .line 256
    .local v4, "subset":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    .line 257
    .local v0, "count":I
    if-ge p1, v0, :cond_0

    .line 258
    invoke-static {v4, p1}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->findMediaItem(Lcom/lenovo/scg/gallery3d/data/MediaSet;I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v5

    .line 263
    .end local v0    # "count":I
    .end local v4    # "subset":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :goto_1
    return-object v5

    .line 260
    .restart local v0    # "count":I
    .restart local v4    # "subset":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_0
    sub-int/2addr p1, v0

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "count":I
    .end local v4    # "subset":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 263
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    goto :goto_1
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 226
    const-string/jumbo v7, "random-order"

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 229
    .local v5, "random":Z
    const-string/jumbo v7, "media-set-path"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "mediaPath":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/lenovo/scg/gallery3d/app/FilterUtils;->newFilterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 231
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v3

    .line 233
    .local v3, "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v5, :cond_0

    .line 234
    const-string/jumbo v7, "repeat"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 235
    .local v6, "repeat":Z
    new-instance v7, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    new-instance v9, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$ShuffleSource;

    invoke-direct {v9, v3, v6}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$ShuffleSource;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;Z)V

    invoke-direct {v7, v8, v9, v10, v4}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryContext;Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;ILcom/lenovo/scg/gallery3d/data/Path;)V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mModel:Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Model;

    .line 236
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string/jumbo v8, "photo-index"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v11, v7}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    .line 245
    :goto_0
    return-void

    .line 238
    .end local v6    # "repeat":Z
    :cond_0
    const-string/jumbo v7, "photo-index"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, "index":I
    const-string/jumbo v7, "media-item-path"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "itemPath":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    .line 241
    .local v4, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_1
    const-string/jumbo v7, "repeat"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 242
    .restart local v6    # "repeat":Z
    new-instance v7, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    new-instance v9, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$SequentialSource;

    invoke-direct {v9, v3, v6}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$SequentialSource;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;Z)V

    invoke-direct {v7, v8, v9, v0, v4}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryContext;Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SlideshowSource;ILcom/lenovo/scg/gallery3d/data/Path;)V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mModel:Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Model;

    .line 243
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string/jumbo v8, "photo-index"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v11, v7}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private initializeViews()V
    .locals 2

    .prologue
    .line 248
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/lenovo/scg/gallery3d/ui/SlideshowView;

    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/lenovo/scg/gallery3d/ui/SlideshowView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->setContentPane(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 251
    return-void
.end method

.method private loadNextBitmap()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mModel:Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Model;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$3;-><init>(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;)V

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Model;->nextSlide(Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    .line 176
    return-void
.end method

.method private showPendingBitmap()V
    .locals 6

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;

    .line 183
    .local v0, "slide":Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;
    if-nez v0, :cond_1

    .line 184
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mIsActive:Z

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/lenovo/scg/gallery3d/ui/SlideshowView;

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;->item:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->next(Landroid/graphics/Bitmap;I)V

    .line 192
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string/jumbo v3, "media-item-path"

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;->item:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "photo-index"

    iget v4, v0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;->index:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    .line 193
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method protected getActionBarListener()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f0d001f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "restoreState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 138
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mFlags:I

    or-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mFlags:I

    .line 139
    const-string v0, "dream"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mFlags:I

    or-int/lit8 v0, v0, 0x24

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mFlags:I

    .line 147
    :goto_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$2;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$2;-><init>(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    .line 163
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->initializeViews()V

    .line 164
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->initializeData(Landroid/os/Bundle;)V

    .line 165
    return-void

    .line 144
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mFlags:I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onPause()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mModel:Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Model;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Model;->pause()V

    .line 201
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/lenovo/scg/gallery3d/ui/SlideshowView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->release()V

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onResume()V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mIsActive:Z

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mModel:Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Model;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Model;->resume()V

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->showPendingBitmap()V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->loadNextBitmap()V

    goto :goto_0
.end method
