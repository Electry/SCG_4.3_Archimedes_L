.class public Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;
.implements Lcom/lenovo/scg/gallery3d/data/DataManager$DeleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;,
        Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateContent;,
        Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;,
        Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;,
        Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;,
        Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;,
        Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailListener;,
        Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$FullImageListener;,
        Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$FullImageJob;,
        Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailJob;,
        Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;,
        Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;
    }
.end annotation


# static fields
.field private static final BIT_FULL_IMAGE:I = 0x2

.field private static final BIT_SCREEN_NAIL:I = 0x1

.field private static final DATA_CACHE_SIZE:I = 0x20

.field private static final IMAGE_CACHE_SIZE:I = 0x7

.field private static final MIN_LOAD_COUNT:I = 0x10

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final MSG_UPDATE_IMAGE_REQUESTS:I = 0x4

.field private static final SCREEN_NAIL_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PhotoDataAdapter"

.field private static mBucketId:Ljava/lang/String;

.field private static mHasChangeSDCard:Z

.field private static sImageFetchSeq:[Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mCameraIndex:I

.field private mChangeMediaSetPath:Ljava/lang/String;

.field private final mChanges:[J

.field private mContentEnd:I

.field private mContentStart:I

.field private mCurrentIndex:I

.field private final mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private mDataListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;

.field private mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private mFocusHintDirection:I

.field private mFocusHintPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            "Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInitOk:Z

.field private mIsActive:Z

.field private mIsPanorama:Z

.field private mIsStaticCamera:Z

.field private mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNeedFullImage:Z

.field private final mPaths:[Lcom/lenovo/scg/gallery3d/data/Path;

.field private final mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

.field private mReloadTask:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

.field private mSize:I

.field private mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private final mSourceListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;

.field private mSourceVersion:J

.field private final mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

.field private final mTileProvider:Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;

.field private final mUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, "k":I
    const/16 v3, 0x10

    new-array v3, v3, [Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    sput-object v3, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    .line 108
    sget-object v3, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .local v2, "k":I
    new-instance v4, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v7, v6}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 110
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_0

    .line 111
    sget-object v3, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    new-instance v4, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v0, v6}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 112
    sget-object v3, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    new-instance v4, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    neg-int v5, v0

    invoke-direct {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    sget-object v3, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    new-instance v4, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v7, v8}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 116
    sget-object v3, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    new-instance v4, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v6, v8}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 117
    sget-object v3, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    new-instance v4, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v8}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 1115
    sput-boolean v7, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mHasChangeSDCard:Z

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/data/MediaSet;Lcom/lenovo/scg/gallery3d/data/Path;IIZZ)V
    .locals 6
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "view"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p3, "mediaSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .param p4, "itemPath"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p5, "indexHint"    # I
    .param p6, "cameraIndex"    # I
    .param p7, "isPanorama"    # Z
    .param p8, "isStaticCamera"    # Z

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;

    .line 133
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 135
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 137
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    .line 146
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 148
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .line 157
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    .line 161
    new-array v0, v3, [Lcom/lenovo/scg/gallery3d/data/Path;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/lenovo/scg/gallery3d/data/Path;

    .line 173
    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    .line 175
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSize:I

    .line 189
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    .line 191
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 193
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mInitOk:Z

    .line 202
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;

    .line 1127
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChangeMediaSetPath:Ljava/lang/String;

    .line 213
    invoke-static {p3}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 214
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .line 215
    invoke-static {p4}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/Path;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 216
    iput p5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 217
    iput p6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    .line 218
    iput-boolean p7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    .line 219
    iput-boolean p8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mIsStaticCamera:Z

    .line 220
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 225
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    .line 227
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 258
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 259
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$1202(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return p1
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$1802(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1902(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    return-void
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    return-void
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    return-void
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    return-void
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p1, "x1"    # Ljava/util/concurrent/Callable;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mHasChangeSDCard:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 59
    sput-boolean p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mHasChangeSDCard:Z

    return p0
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/MediaSet;)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChangeMediaSetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChangeMediaSetPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mInitOk:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mInitOk:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/lenovo/scg/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/lenovo/scg/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    return v0
.end method

.method static synthetic access$3500(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->isTemporaryItem(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/MediaItem;)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "x2"    # Lcom/lenovo/scg/gallery3d/util/Future;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateFullImage(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "x2"    # Lcom/lenovo/scg/gallery3d/util/Future;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateScreenNail(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/util/Future;)V

    return-void
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1009
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1010
    .local v1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1012
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1014
    :goto_0
    return-object v2

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 1015
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1016
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private fireDataChange()V
    .locals 13

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, "changed":Z
    const/4 v3, -0x3

    .local v3, "i":I
    :goto_0
    const/4 v9, 0x3

    if-gt v3, v9, :cond_1

    .line 292
    iget v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v9, v3

    invoke-direct {p0, v9}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v6

    .line 293
    .local v6, "newVersion":J
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v10, v3, 0x3

    aget-wide v10, v9, v10

    cmp-long v9, v10, v6

    if-eqz v9, :cond_0

    .line 294
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v10, v3, 0x3

    aput-wide v6, v9, v10

    .line 295
    const/4 v1, 0x1

    .line 291
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 299
    .end local v6    # "newVersion":J
    :cond_1
    if-nez v1, :cond_2

    .line 341
    :goto_1
    return-void

    .line 304
    :cond_2
    const/4 v0, 0x7

    .line 305
    .local v0, "N":I
    const/4 v9, 0x7

    new-array v2, v9, [I

    .line 308
    .local v2, "fromIndex":[I
    const/4 v9, 0x7

    new-array v5, v9, [Lcom/lenovo/scg/gallery3d/data/Path;

    .line 309
    .local v5, "oldPaths":[Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/lenovo/scg/gallery3d/data/Path;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    invoke-static {v9, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    const/4 v3, 0x0

    :goto_2
    const/4 v9, 0x7

    if-ge v3, v9, :cond_3

    .line 313
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/lenovo/scg/gallery3d/data/Path;

    iget v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v10, v3

    add-int/lit8 v10, v10, -0x3

    invoke-direct {p0, v10}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v10

    aput-object v10, v9, v3

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 317
    :cond_3
    const/4 v3, 0x0

    :goto_3
    const/4 v9, 0x7

    if-ge v3, v9, :cond_8

    .line 318
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/lenovo/scg/gallery3d/data/Path;

    aget-object v8, v9, v3

    .line 319
    .local v8, "p":Lcom/lenovo/scg/gallery3d/data/Path;
    if-nez v8, :cond_4

    .line 320
    const v9, 0x7fffffff

    aput v9, v2, v3

    .line 317
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 326
    :cond_4
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_5
    const/4 v9, 0x7

    if-ge v4, v9, :cond_5

    .line 327
    aget-object v9, v5, v4

    if-ne v9, v8, :cond_6

    .line 331
    :cond_5
    const/4 v9, 0x7

    if-ge v4, v9, :cond_7

    add-int/lit8 v9, v4, -0x3

    :goto_6
    aput v9, v2, v3

    goto :goto_4

    .line 326
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 331
    :cond_7
    const v9, 0x7fffffff

    goto :goto_6

    .line 335
    .end local v4    # "j":I
    .end local v8    # "p":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_8
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->isHaveCamera()Z

    move-result v9

    if-eqz v9, :cond_9

    sget v9, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 340
    :cond_9
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    neg-int v10, v10

    iget v11, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int/2addr v11, v12

    invoke-virtual {v9, v2, v10, v11}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->notifyDataChange([III)V

    goto :goto_1
.end method

.method private getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 466
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 472
    :goto_0
    return-object v0

    .line 467
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 469
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v0, :cond_3

    .line 470
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    rem-int/lit8 v1, p1, 0x20

    aget-object v0, v0, v1

    goto :goto_0

    .line 467
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 472
    goto :goto_0
.end method

.method private getItemInternal(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 269
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-lt p1, v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-object v0

    .line 270
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    rem-int/lit8 v1, p1, 0x20

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private getPath(I)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 284
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 285
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method private getVersion(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 278
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    .line 279
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v2

    goto :goto_0
.end method

.method private isTemporaryItem(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z
    .locals 6
    .param p1, "mediaItem"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    const/4 v1, 0x0

    .line 843
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-gez v2, :cond_1

    .line 854
    :cond_0
    :goto_0
    return v1

    .line 845
    :cond_1
    instance-of v2, p1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 846
    check-cast v0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    .line 847
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v2

    sget v3, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne v2, v3, :cond_0

    .line 849
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 850
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 851
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    .line 853
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 854
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private newPlaceholderScreenNail(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 3
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 861
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    .line 862
    .local v1, "width":I
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    .line 863
    .local v0, "height":I
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    invoke-direct {v2, v1, v0}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;-><init>(II)V

    return-object v2
.end method

.method public static setBucketID(Ljava/lang/String;)V
    .locals 1
    .param p0, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 1118
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mBucketId:Ljava/lang/String;

    if-eq p0, v0, :cond_0

    .line 1119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mHasChangeSDCard:Z

    .line 1121
    :cond_0
    sput-object p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mBucketId:Ljava/lang/String;

    .line 1122
    return-void
.end method

.method private sort([I)V
    .locals 5
    .param p1, "array"    # [I

    .prologue
    .line 346
    array-length v1, p1

    .line 347
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    div-int/lit8 v3, v1, 0x2

    if-ge v0, v3, :cond_0

    .line 348
    aget v2, p1, v0

    .line 349
    .local v2, "temp":I
    add-int/lit8 v3, v1, -0x1

    sub-int/2addr v3, v0

    aget v3, p1, v3

    aput v3, p1, v0

    .line 350
    add-int/lit8 v3, v1, -0x1

    sub-int/2addr v3, v0

    aput v2, p1, v3

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v2    # "temp":I
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 353
    aget v3, p1, v0

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_1

    .line 354
    aget v3, p1, v0

    neg-int v3, v3

    aput v3, p1, v0

    .line 352
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 357
    :cond_2
    return-void
.end method

.method private startTaskIfNeeded(II)Lcom/lenovo/scg/gallery3d/util/Future;
    .locals 11
    .param p1, "index"    # I
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 868
    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v4, :cond_0

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v4, :cond_1

    :cond_0
    move-object v4, v6

    .line 894
    :goto_0
    return-object v4

    .line 870
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 871
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_2

    move-object v4, v6

    goto :goto_0

    .line 872
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    rem-int/lit8 v7, p1, 0x20

    aget-object v1, v4, v7

    .line 873
    .local v1, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v1, :cond_3

    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 874
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v2

    .line 876
    .local v2, "version":J
    if-ne p2, v5, :cond_4

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v4, :cond_4

    iget-wide v8, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v4, v8, v2

    if-nez v4, :cond_4

    .line 877
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/lenovo/scg/gallery3d/util/Future;

    goto :goto_0

    .line 873
    .end local v2    # "version":J
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 878
    .restart local v2    # "version":J
    :cond_4
    if-ne p2, v10, :cond_5

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v4, :cond_5

    iget-wide v8, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v4, v8, v2

    if-nez v4, :cond_5

    .line 879
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    goto :goto_0

    .line 882
    :cond_5
    if-ne p2, v5, :cond_6

    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_6

    .line 883
    iput-wide v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 884
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    new-instance v5, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v5, p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    new-instance v6, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailListener;

    invoke-direct {v6, p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v4

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 886
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/lenovo/scg/gallery3d/util/Future;

    goto :goto_0

    .line 888
    :cond_6
    if-ne p2, v10, :cond_7

    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_7

    .line 889
    iput-wide v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 890
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    new-instance v5, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$FullImageJob;

    invoke-direct {v5, p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$FullImageJob;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    new-instance v6, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$FullImageListener;

    invoke-direct {v6, p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$FullImageListener;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v4

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 892
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    goto/16 :goto_0

    :cond_7
    move-object v4, v6

    .line 894
    goto/16 :goto_0
.end method

.method private updateCurrentIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 476
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ne v1, p1, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    if-ltz p1, :cond_0

    .line 478
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 479
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 481
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    rem-int/lit8 v2, p1, 0x20

    aget-object v0, v1, v2

    .line 482
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 484
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 485
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 486
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    .line 488
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v1, :cond_2

    .line 489
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-interface {v1, p1, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/lenovo/scg/gallery3d/data/Path;)V

    .line 492
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    goto :goto_0

    .line 482
    :cond_3
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    goto :goto_1
.end method

.method private updateFullImage(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 4
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p2, "future":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 402
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eq v2, p2, :cond_2

    .line 403
    :cond_0
    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 404
    .local v1, "fullImage":Landroid/graphics/BitmapRegionDecoder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 417
    .end local v1    # "fullImage":Landroid/graphics/BitmapRegionDecoder;
    :cond_1
    :goto_0
    return-void

    .line 408
    :cond_2
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 409
    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapRegionDecoder;

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 410
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v2, :cond_3

    .line 411
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 412
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 413
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 416
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0
.end method

.method private updateImageCache()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 898
    new-instance v6, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 899
    .local v6, "toBeRemoved":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .local v1, "i":I
    :goto_0
    iget v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v7, :cond_5

    .line 900
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    rem-int/lit8 v8, v1, 0x20

    aget-object v3, v7, v8

    .line 901
    .local v3, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v3, :cond_1

    .line 899
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 902
    :cond_1
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    .line 903
    .local v4, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 904
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 905
    if-eqz v0, :cond_4

    .line 906
    iget v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 907
    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v7, :cond_2

    .line 908
    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 909
    iput-object v12, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 911
    :cond_2
    iput-object v12, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 912
    const-wide/16 v8, -0x1

    iput-wide v8, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 914
    :cond_3
    iget-wide v8, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 917
    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    instance-of v7, v7, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    if-eqz v7, :cond_0

    .line 918
    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v5, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    .line 919
    .local v5, "s":Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getHeight()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->updatePlaceholderSize(II)V

    goto :goto_1

    .line 923
    .end local v5    # "s":Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;
    :cond_4
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-direct {v0, v12}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;)V

    .line 924
    .restart local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 929
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v3    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v4    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_5
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 930
    .restart local v4    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 931
    .restart local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 932
    :cond_7
    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v7}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 933
    :cond_8
    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    invoke-interface {v7}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->recycle()V

    goto :goto_2

    .line 936
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v4    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_9
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateScreenNailUploadQueue()V

    .line 937
    return-void
.end method

.method private updateImageRequests()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const/4 v10, 0x0

    .line 753
    iget-boolean v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v8, :cond_1

    .line 785
    :cond_0
    return-void

    .line 755
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 756
    .local v1, "currentIndex":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    rem-int/lit8 v9, v1, 0x20

    aget-object v5, v8, v9

    .line 757
    .local v5, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v8, v9, :cond_0

    .line 763
    const/4 v7, 0x0

    .line 764
    .local v7, "task":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    array-length v8, v8

    if-ge v3, v8, :cond_4

    .line 765
    sget-object v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v6, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 766
    .local v6, "offset":I
    sget-object v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v0, v8, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    .line 767
    .local v0, "bit":I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_3

    iget-boolean v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    if-nez v8, :cond_3

    .line 764
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 768
    :cond_3
    add-int v8, v1, v6

    invoke-direct {p0, v8, v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->startTaskIfNeeded(II)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v7

    .line 769
    if-eqz v7, :cond_2

    .line 773
    .end local v0    # "bit":I
    .end local v6    # "offset":I
    :cond_4
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 774
    .local v2, "entry":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v8, v2, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v8, :cond_6

    iget-object v8, v2, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eq v8, v7, :cond_6

    .line 775
    iget-object v8, v2, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 776
    iput-object v10, v2, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 777
    iput-wide v12, v2, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 779
    :cond_6
    iget-object v8, v2, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v8, :cond_5

    iget-object v8, v2, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eq v8, v7, :cond_5

    .line 780
    iget-object v8, v2, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 781
    iput-object v10, v2, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 782
    iput-wide v12, v2, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    goto :goto_1
.end method

.method private updateScreenNail(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 5
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p2, "future":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<Lcom/lenovo/scg/gallery3d/ui/ScreenNail;>;"
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 365
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 367
    .local v3, "screenNail":Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eq v4, p2, :cond_2

    .line 368
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->recycle()V

    .line 398
    :cond_1
    :goto_0
    return-void

    .line 372
    :cond_2
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 376
    if-eqz v3, :cond_3

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    instance-of v4, v4, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    if-eqz v4, :cond_3

    .line 378
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    .line 379
    .local v2, "original":Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;
    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->combine(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v3

    .line 382
    .end local v2    # "original":Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;
    :cond_3
    if-nez v3, :cond_6

    .line 383
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 389
    :goto_1
    const/4 v1, -0x3

    .local v1, "i":I
    :goto_2
    const/4 v4, 0x3

    if-gt v1, v4, :cond_5

    .line 390
    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    if-ne p1, v4, :cond_7

    .line 391
    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 392
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v4, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 396
    :cond_5
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 397
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateScreenNailUploadQueue()V

    goto :goto_0

    .line 385
    .end local v1    # "i":I
    :cond_6
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 386
    iput-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    goto :goto_1

    .line 389
    .restart local v1    # "i":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private updateScreenNailUploadQueue()V
    .locals 2

    .prologue
    .line 513
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    .line 514
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    .line 515
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 516
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    .line 517
    neg-int v1, v0

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_0
    return-void
.end method

.method private updateSlidingWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 729
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x7

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 730
    .local v2, "start":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 732
    .local v0, "end":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ne v3, v0, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 735
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .line 738
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x10

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x20

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 739
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x20

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 740
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-gt v3, v4, :cond_2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_0

    .line 741
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v1, v3, :cond_5

    .line 742
    if-lt v1, v2, :cond_3

    if-lt v1, v0, :cond_4

    .line 743
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    rem-int/lit8 v4, v1, 0x20

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 741
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 746
    :cond_5
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 747
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 748
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method private updateTileProvider()V
    .locals 3

    .prologue
    .line 702
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 703
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_0

    .line 704
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 708
    :goto_0
    return-void

    .line 706
    :cond_0
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    goto :goto_0
.end method

.method private updateTileProvider(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    .locals 7
    .param p1, "entry"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .prologue
    .line 711
    iget-object v2, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 712
    .local v2, "screenNail":Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 713
    .local v0, "fullImage":Landroid/graphics/BitmapRegionDecoder;
    if-eqz v2, :cond_1

    .line 714
    if-eqz v0, :cond_0

    .line 715
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;II)V

    .line 716
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 725
    :goto_0
    return-void

    .line 718
    :cond_0
    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v3

    .line 719
    .local v3, "width":I
    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v1

    .line 720
    .local v1, "height":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4, v2, v3, v1}, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;II)V

    goto :goto_0

    .line 723
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->clear()V

    goto :goto_0
.end method

.method private uploadScreenNail(I)V
    .locals 7
    .param p1, "offset"    # I

    .prologue
    .line 496
    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v1, v5, p1

    .line 497
    .local v1, "index":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v5, :cond_0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v1, v5, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v2

    .line 500
    .local v2, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v2, :cond_0

    .line 502
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 503
    .local v0, "e":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    .line 505
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 506
    .local v3, "s":Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    instance-of v5, v3, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    if-eqz v5, :cond_0

    .line 507
    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    .end local v3    # "s":Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->getTexture()Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    move-result-object v4

    .line 508
    .local v4, "t":Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 565
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 566
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v1

    goto :goto_0
.end method

.method public getImageSize(ILcom/lenovo/scg/gallery3d/ui/PhotoView$Size;)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "size"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    .prologue
    const/4 v2, 0x0

    .line 553
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 554
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    .line 555
    iput v2, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->width:I

    .line 556
    iput v2, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->height:I

    .line 561
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    iput v1, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->width:I

    .line 559
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getHeight()I

    move-result v1

    iput v1, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->getLevelCount()I

    move-result v0

    return v0
.end method

.method public getLoadingState(I)I
    .locals 4
    .param p1, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 624
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 625
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_1

    .line 628
    :cond_0
    :goto_0
    return v1

    .line 626
    :cond_1
    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 627
    :cond_2
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 668
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v0, v1, p1

    .line 669
    .local v0, "index":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v0, v1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    rem-int/lit8 v2, v0, 0x20

    aget-object v1, v1, v2

    .line 672
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getScreenNail(I)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method public getScreenNail(I)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v4, 0x0

    .line 528
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v1, v3, p1

    .line 529
    .local v1, "index":I
    if-ltz v1, :cond_0

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge v1, v3, :cond_0

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 548
    :goto_0
    return-object v3

    .line 531
    :cond_1
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v3, :cond_2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v1, v3, :cond_3

    :cond_2
    move-object v3, v4

    goto :goto_0

    .line 533
    :cond_3
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v3, :cond_4

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 535
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v2

    .line 536
    .local v2, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v2, :cond_5

    move-object v3, v4

    goto :goto_0

    .line 533
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 538
    .restart local v2    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 539
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_6

    move-object v3, v4

    goto :goto_0

    .line 543
    :cond_6
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-nez v3, :cond_7

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 544
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 545
    if-nez p1, :cond_7

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 548
    :cond_7
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    goto :goto_0
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "level"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "tileSize"    # I

    .prologue
    .line 653
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isCamera(I)Z
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 577
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeletable(I)Z
    .locals 3
    .param p1, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 618
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 619
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGif(I)Z
    .locals 4
    .param p1, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 599
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 601
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v2, 0x80

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isHaveCamera()Z
    .locals 1

    .prologue
    .line 1364
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanorama(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeech(I)Z
    .locals 4
    .param p1, "offset"    # I

    .prologue
    const/high16 v3, 0x400000

    const/4 v1, 0x0

    .line 609
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 611
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/2addr v2, v3

    if-ne v3, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isStaticCamera(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 587
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mIsStaticCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo(I)Z
    .locals 4
    .param p1, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 592
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 593
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    .line 524
    return-void
.end method

.method public onDelete(Lcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 0
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 1371
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 1372
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 443
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 444
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v2, :cond_0

    .line 445
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->terminate()V

    .line 447
    :cond_0
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 449
    sget-object v2, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->setDeleteListener(Lcom/lenovo/scg/gallery3d/data/DataManager$DeleteListener;)V

    .line 451
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->removeContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 453
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 454
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 455
    :cond_2
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 456
    :cond_3
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->recycle()V

    goto :goto_0

    .line 458
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ImageEntry;
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 459
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 461
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    .line 462
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->freeResources()V

    .line 463
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 422
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->prepareResources()V

    .line 424
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 425
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 426
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 428
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->isHaveCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->invalidate()V

    .line 433
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->setDeleteListener(Lcom/lenovo/scg/gallery3d/data/DataManager$DeleteListener;)V

    .line 435
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 436
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->start()V

    .line 438
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    .line 439
    return-void
.end method

.method public setCurrentPhoto(Lcom/lenovo/scg/gallery3d/data/Path;I)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "indexHint"    # I

    .prologue
    .line 677
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v1, p1, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 679
    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 680
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 681
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 682
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    .line 685
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 686
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 687
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method public setDataListener(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;

    .line 361
    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 693
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    .line 694
    return-void
.end method

.method public setFocusHintPath(Lcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 0
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 699
    return-void
.end method

.method public setMediaSetSource(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 0
    .param p1, "mediaSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 264
    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 571
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 572
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 573
    return-void
.end method

.method public setPath(Lcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 1
    .param p1, "itemPath"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 1375
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/Path;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 1376
    return-void
.end method

.method public setSourcePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mediaSetPath"    # Ljava/lang/String;
    .param p2, "screenNailSetPath"    # Ljava/lang/String;

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChangeMediaSetPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->setCameraAllPath(Ljava/lang/String;)V

    .line 1134
    const-string v0, "/local/camera"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChangeMediaSetPath:Ljava/lang/String;

    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/combo/item/{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChangeMediaSetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChangeMediaSetPath:Ljava/lang/String;

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/filter/delete/{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChangeMediaSetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mChangeMediaSetPath:Ljava/lang/String;

    .line 1138
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method
