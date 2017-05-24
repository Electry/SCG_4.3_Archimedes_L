.class public Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;
.super Lcom/lenovo/scg/gallery3d/app/ActivityState;
.source "LocalTimeAlbumSetPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;
.implements Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;
.implements Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;
.implements Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyDetailsSource;,
        Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field private static final DATA_CACHE_SIZE:I = 0x100

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_RESUME_ANIMATION:Ljava/lang/String; = "resume_animation"

.field public static final KEY_SELECTED_CLUSTER_TYPE:Ljava/lang/String; = "selected-cluster"

.field public static final KEY_SET_SUBTITLE:Ljava/lang/String; = "set-subtitle"

.field public static final KEY_SET_TITLE:Ljava/lang/String; = "set-title"

.field private static final MSG_PICK_ALBUM:I = 0x1

.field private static final REQUEST_DO_ANIMATION:I = 0x1

.field private static final REQUEST_PHOTO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LocalTimeAlbumSetPage"

.field private static mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;


# instance fields
.field private mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

.field private mActionBarOnClickListener:Landroid/view/View$OnClickListener;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

.field private mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

.field private mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

.field private mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

.field private mDetailsSource:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyDetailsSource;

.field private mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;

.field private mGetAlbum:Z

.field private mGetContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLoadingBits:I

.field private mMenuListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mNeedUpdateSelection:Z

.field private mPositionProvider:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field private mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

.field private final mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

.field private mSelectedAction:I

.field protected mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

.field private mShareToOthersMore:Z

.field private mShowClusterMenu:Z

.field private mShowDetails:Z

.field private mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

.field private mSubtitle:Ljava/lang/String;

.field private mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mVibrator:Landroid/os/Vibrator;

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;-><init>()V

    .line 121
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mIsActive:Z

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 173
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mLoadingBits:I

    .line 175
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mInitialSynced:Z

    .line 178
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mNeedUpdateSelection:Z

    .line 180
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 573
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$3;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mPositionProvider:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .line 598
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$4;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mMenuListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 613
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$5;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionBarOnClickListener:Landroid/view/View$OnClickListener;

    .line 647
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShareToOthersMore:Z

    .line 1111
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/EyePosition;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->pickPhoto(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->onMenuItemSelected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShareToOthersMore:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$2900(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mNeedUpdateSelection:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mNeedUpdateSelection:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mX:F

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mY:F

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mZ:F

    return v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    return-object p1
.end method

.method private clearLoadingBit(I)V
    .locals 3
    .param p1, "loadingBit"    # I

    .prologue
    const/4 v2, 0x1

    .line 466
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mLoadingBits:I

    .line 467
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mLoadingBits:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 475
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    instance-of v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setEmptyViewVisible(Z)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->isInitOk()Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    instance-of v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setEmptyViewVisible(Z)V

    goto :goto_0

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    instance-of v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setEmptyViewVisible(Z)V

    goto :goto_0
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 934
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    .line 935
    .local v1, "count":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->getClusterTypeAction()I

    move-result v0

    .line 936
    .local v0, "action":I
    if-ne v0, v5, :cond_0

    const v3, 0x7f110003

    .line 937
    .local v3, "string":I
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 938
    .local v2, "format":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 936
    .end local v2    # "format":Ljava/lang/String;
    .end local v3    # "string":I
    :cond_0
    const v3, 0x7f110004

    goto :goto_0
.end method

.method private getSlotCenter(I[I)V
    .locals 8
    .param p1, "slotIndex"    # I
    .param p2, "center"    # [I

    .prologue
    .line 259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 260
    .local v0, "offset":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v4, v5, v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getBoundsOf(Lcom/lenovo/scg/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 261
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v4, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->getGridRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 262
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->getScrollX()I

    move-result v2

    .line 263
    .local v2, "scrollX":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->getScrollY()I

    move-result v3

    .line 264
    .local v3, "scrollY":I
    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    aput v5, p2, v4

    .line 265
    const/4 v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aput v5, p2, v4

    .line 266
    return-void
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 978
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShowDetails:Z

    .line 979
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->hide()V

    .line 980
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->setHighlightItemPath(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 981
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->invalidate()V

    .line 982
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 744
    const-string/jumbo v1, "media-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "mediaPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v1

    sput-object v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 748
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    sget-object v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    .line 749
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    sget-object v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/16 v4, 0x100

    invoke-direct {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    .line 750
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->setLoadingListener(Lcom/lenovo/scg/gallery3d/app/LoadingListener;)V

    .line 751
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->setModel(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)V

    .line 752
    return-void
.end method

.method private initializeViews()V
    .locals 6

    .prologue
    .line 755
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryContext;Z)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .line 756
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 758
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->get(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;

    move-result-object v0

    .line 759
    .local v0, "config":Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    .line 760
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->localTimeLabelSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    .line 761
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->setSlotRenderer(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;)V

    .line 762
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$6;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$6;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->setListener(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Listener;)V

    .line 785
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    .line 786
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$7;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$7;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 793
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/GLView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 794
    return-void
.end method

.method private onDown(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 391
    return-void
.end method

.method private onMenuItemSelected(Ljava/lang/String;)Z
    .locals 7
    .param p1, "menuItem"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 649
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 651
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0663

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 652
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 653
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 686
    :goto_0
    return v3

    .line 655
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f065a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 656
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 657
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    goto :goto_0

    .line 659
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f066a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 660
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 661
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShowDetails:Z

    if-eqz v4, :cond_2

    .line 662
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->hideDetails()V

    goto :goto_0

    .line 664
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->showDetails()V

    goto :goto_0

    .line 667
    :cond_3
    const v5, 0x7f0f0688

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 670
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f066d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 671
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 673
    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f068b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 674
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 675
    .local v1, "data":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, "mediaPath":Ljava/lang/String;
    const-string/jumbo v4, "media-path"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    invoke-virtual {v4, v5, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 679
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "mediaPath":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f068c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 680
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->requestSync(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 682
    :cond_7
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f06c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 683
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/scg/gallery3d/settings/GallerySettings;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    .line 686
    goto/16 :goto_0
.end method

.method private onUp(Z)V
    .locals 2
    .param p1, "followedByLongPress"    # Z

    .prologue
    .line 394
    if-eqz p1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->setPressedUp()V

    goto :goto_0
.end method

.method private pickAlbum(I)V
    .locals 10
    .param p1, "slotIndex"    # I

    .prologue
    const/4 v8, 0x1

    .line 294
    iget-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mIsActive:Z

    if-nez v7, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v7, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v6

    .line 297
    .local v6, "targetSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v6, :cond_0

    .line 298
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "mediaPath":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 301
    .local v2, "data":Landroid/os/Bundle;
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 302
    .local v1, "center":[I
    invoke-direct {p0, p1, v1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->getSlotCenter(I[I)V

    .line 303
    const-string/jumbo v7, "set-center"

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 304
    iget-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mGetAlbum:Z

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 305
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 306
    .local v0, "activity":Landroid/app/Activity;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "album-path"

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 307
    .local v5, "result":Landroid/content/Intent;
    const/4 v7, -0x1

    invoke-virtual {v0, v7, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 308
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 309
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v5    # "result":Landroid/content/Intent;
    :cond_2
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 310
    const-string/jumbo v7, "media-path"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v7

    const-class v9, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    invoke-virtual {v7, v9, v8, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 313
    :cond_3
    iget-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mGetContent:Z

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v7

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_4

    .line 314
    const-string v7, "auto-select-all"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 320
    :cond_4
    const-string/jumbo v7, "media-path"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v7

    const-class v9, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v7, v9}, Lcom/lenovo/scg/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v3

    .line 323
    .local v3, "inAlbum":Z
    const-string v9, "cluster-menu"

    if-nez v3, :cond_5

    move v7, v8

    :goto_1
    invoke-virtual {v2, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 324
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v7

    const-class v9, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v7, v9, v8, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 323
    :cond_5
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private pickPhoto(I)V
    .locals 10
    .param p1, "slotIndex"    # I

    .prologue
    const/4 v7, 0x1

    .line 329
    const-string/jumbo v6, "wwf5"

    const-string v8, "LocalTimeAlbumSet pickPhoto"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mIsActive:Z

    if-nez v6, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v6, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v2

    .line 333
    .local v2, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v2, :cond_0

    .line 336
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v6, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getItemIndex(I)I

    move-result v3

    .line 337
    .local v3, "itemIndex":I
    const/16 v6, 0x14

    if-ne v3, v6, :cond_4

    .line 338
    const-string v6, "HWJ"

    const-string v8, "-----------itemIndex is over---------------"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v4, 0x0

    .line 340
    .local v4, "mediaItemPath":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v0, "data":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v6, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v5

    .line 342
    .local v5, "timeMediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v5, :cond_2

    .line 343
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    .line 360
    :cond_2
    const-string v6, "HWJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-----mediaItemPath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    if-eqz v4, :cond_0

    .line 362
    const-string/jumbo v6, "media-path"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v6

    const-class v8, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v6, v8}, Lcom/lenovo/scg/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v1

    .line 366
    .local v1, "inAlbum":Z
    const-string v8, "cluster-menu"

    if-nez v1, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 367
    const-string/jumbo v6, "start_index"

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v8, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getItemIndex(I)I

    move-result v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v6

    const-class v8, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v6, v8, v7, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 366
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 377
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "inAlbum":Z
    .end local v4    # "mediaItemPath":Ljava/lang/String;
    .end local v5    # "timeMediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 378
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v6, "index-hint"

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v8, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getDataIndex(I)I

    move-result v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    const-string/jumbo v6, "media-set-path"

    sget-object v8, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string/jumbo v6, "media-item-path"

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v6, "from-LocalTimeAlbumSetPage"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 384
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v6

    const-class v7, Lcom/lenovo/scg/gallery3d/app/SinglePhotoPage;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private setLoadingBit(I)V
    .locals 1
    .param p1, "loadingBit"    # I

    .prologue
    .line 505
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mLoadingBits:I

    .line 506
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 985
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShowDetails:Z

    .line 986
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 987
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mDetailsSource:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    .line 988
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$8;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$8;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->show()V

    .line 997
    return-void
.end method

.method private transformPhotoPageIndexToSlotViewIndex(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 911
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v1

    .line 912
    .local v1, "mediaSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;>;"
    if-nez v1, :cond_1

    move v2, p1

    .line 930
    :cond_0
    :goto_0
    return v2

    .line 915
    :cond_1
    const/4 v2, 0x0

    .line 916
    .local v2, "slotViewIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 917
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;->mRealCount:I

    if-le p1, v3, :cond_2

    .line 918
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;->mCount:I

    add-int/2addr v2, v3

    .line 919
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;->mRealCount:I

    sub-int/2addr p1, v3

    .line 916
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 921
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;->mCount:I

    if-le p1, v3, :cond_3

    .line 922
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;->mCount:I

    add-int/2addr v2, v3

    goto :goto_0

    .line 924
    :cond_3
    add-int/2addr v2, p1

    .line 926
    goto :goto_0
.end method


# virtual methods
.method public doCluster(I)V
    .locals 5
    .param p1, "clusterType"    # I

    .prologue
    .line 417
    sget-object v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "basePath":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/FilterUtils;->switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "newPath":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 421
    .local v1, "data":Landroid/os/Bundle;
    const-string/jumbo v3, "media-path"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string/jumbo v3, "selected-cluster"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 424
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    invoke-virtual {v3, p0, v4, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v3, p0, v4, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchStateNotDestory(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected getActionBarListener()Ljava/util/ArrayList;
    .locals 2
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
    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionBarOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mMenuListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    return-object v0
.end method

.method public getTimeInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$TimeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->getTimeInfoList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected inSelectAllMode()Z
    .locals 1

    .prologue
    .line 1144
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->inSelectAllMode()Z

    .line 1145
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    return v0
.end method

.method public jumpPoint(I)V
    .locals 1
    .param p1, "point"    # I

    .prologue
    .line 554
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->makeSlotVisible(I)V

    .line 555
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShareToOthersMore:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->dismissMoreShareDialog()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->dismissRotateDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_2

    .line 250
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->hideDetails()V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 254
    :cond_3
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "restoreState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 433
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->initializeViews()V

    .line 434
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->initializeData(Landroid/os/Bundle;)V

    .line 435
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 436
    .local v0, "context":Landroid/content/Context;
    const-string v1, "get-content"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mGetContent:Z

    .line 437
    const-string v1, "get-album"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mGetAlbum:Z

    .line 438
    const-string/jumbo v1, "set-title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mTitle:Ljava/lang/String;

    .line 439
    const-string/jumbo v1, "set-subtitle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSubtitle:Ljava/lang/String;

    .line 440
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/EyePosition;

    invoke-direct {v1, v0, p0}, Lcom/lenovo/scg/gallery3d/app/EyePosition;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;

    .line 441
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyDetailsSource;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyDetailsSource;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mDetailsSource:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyDetailsSource;

    .line 442
    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mVibrator:Landroid/os/Vibrator;

    .line 443
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    .line 446
    const-string/jumbo v1, "selected-cluster"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectedAction:I

    .line 448
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$2;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$2;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mHandler:Landroid/os/Handler;

    .line 463
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 798
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 799
    .local v0, "activity":Landroid/app/Activity;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v10

    const-class v11, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v4

    .line 800
    .local v4, "inAlbum":Z
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    .line 802
    .local v5, "inflater":Landroid/view/MenuInflater;
    iget-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mGetContent:Z

    if-eqz v10, :cond_1

    .line 803
    const v10, 0x7f120012

    invoke-virtual {v5, v10, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 804
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mData:Landroid/os/Bundle;

    const-string/jumbo v11, "type-bits"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 805
    .local v8, "typeBits":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getSelectionModePrompt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 838
    .end local v8    # "typeBits":I
    :cond_0
    :goto_0
    const/4 v10, 0x1

    return v10

    .line 806
    :cond_1
    iget-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mGetAlbum:Z

    if-eqz v10, :cond_2

    .line 807
    const v10, 0x7f120012

    invoke-virtual {v5, v10, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 808
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    const v11, 0x7f0f065b

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setTitle(I)V

    goto :goto_0

    .line 810
    :cond_2
    const v10, 0x7f120001

    invoke-virtual {v5, v10, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 811
    iget-boolean v9, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShowClusterMenu:Z

    .line 812
    .local v9, "wasShowingClusterMenu":Z
    if-nez v4, :cond_4

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShowClusterMenu:Z

    .line 813
    if-nez v4, :cond_5

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->getClusterTypeAction()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const/4 v6, 0x1

    .line 814
    .local v6, "selectAlbums":Z
    :goto_2
    const v10, 0x7f100aed

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 815
    .local v7, "selectItem":Landroid/view/MenuItem;
    if-eqz v6, :cond_6

    const v10, 0x7f0f065b

    :goto_3
    invoke-virtual {v0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 817
    const v10, 0x7f100aeb

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 818
    .local v1, "cameraItem":Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 820
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    sget-object v11, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/lenovo/scg/gallery3d/app/FilterUtils;->setupMenuItems(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;Lcom/lenovo/scg/gallery3d/data/Path;Z)V

    .line 822
    const v10, 0x7f0f06c8

    invoke-static {v0, v10}, Lcom/lenovo/scg/gallery3d/util/HelpUtils;->getHelpIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    .line 824
    .local v2, "helpIntent":Landroid/content/Intent;
    const v10, 0x7f100af2

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 825
    .local v3, "helpItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_7

    const/4 v10, 0x1

    :goto_4
    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 826
    if-eqz v2, :cond_3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 828
    :cond_3
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 829
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setSubtitle(Ljava/lang/String;)V

    .line 830
    iget-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShowClusterMenu:Z

    if-eq v10, v9, :cond_0

    .line 831
    iget-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShowClusterMenu:Z

    if-eqz v10, :cond_8

    .line 832
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    iget v11, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectedAction:I

    invoke-virtual {v10, v11, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->enableClusterMenu(ILcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    goto/16 :goto_0

    .line 812
    .end local v1    # "cameraItem":Landroid/view/MenuItem;
    .end local v2    # "helpIntent":Landroid/content/Intent;
    .end local v3    # "helpItem":Landroid/view/MenuItem;
    .end local v6    # "selectAlbums":Z
    .end local v7    # "selectItem":Landroid/view/MenuItem;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 813
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 815
    .restart local v6    # "selectAlbums":Z
    .restart local v7    # "selectItem":Landroid/view/MenuItem;
    :cond_6
    const v10, 0x7f0f065c

    goto :goto_3

    .line 825
    .restart local v1    # "cameraItem":Landroid/view/MenuItem;
    .restart local v2    # "helpIntent":Landroid/content/Intent;
    .restart local v3    # "helpItem":Landroid/view/MenuItem;
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 834
    :cond_8
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->disableClusterMenu(Z)V

    goto/16 :goto_0
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->lockRendering()V

    .line 234
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mX:F

    .line 235
    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mY:F

    .line 236
    iput p3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mZ:F

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->unlockRendering()V

    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->invalidate()V

    .line 239
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 843
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 844
    .local v0, "activity":Landroid/app/Activity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    move v3, v4

    .line 884
    :goto_0
    return v3

    .line 846
    :sswitch_0
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 847
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 850
    :sswitch_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 851
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    goto :goto_0

    .line 854
    :sswitch_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 855
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShowDetails:Z

    if-eqz v4, :cond_0

    .line 856
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->hideDetails()V

    goto :goto_0

    .line 858
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->showDetails()V

    goto :goto_0

    .line 861
    :cond_1
    const v5, 0x7f0f0688

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 865
    :sswitch_3
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 869
    :sswitch_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 870
    .local v1, "data":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    .line 871
    .local v2, "mediaPath":Ljava/lang/String;
    const-string/jumbo v4, "media-path"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    invoke-virtual {v4, v5, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 876
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "mediaPath":Ljava/lang/String;
    :sswitch_5
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->requestSync(Landroid/content/Context;)V

    goto :goto_0

    .line 880
    :sswitch_6
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/scg/gallery3d/settings/GallerySettings;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 844
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100aeb -> :sswitch_3
        0x7f100aed -> :sswitch_1
        0x7f100aef -> :sswitch_4
        0x7f100af0 -> :sswitch_5
        0x7f100af1 -> :sswitch_6
        0x7f100b31 -> :sswitch_2
        0x7f100b36 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLeaveSelectionMode()V
    .locals 1

    .prologue
    .line 562
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onLeaveSelectionMode()V

    .line 563
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 566
    :cond_0
    return-void
.end method

.method public onLongTap(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 403
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mGetContent:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mGetAlbum:Z

    if-eqz v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getItemIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    .line 407
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 408
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 409
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 410
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 412
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->invalidate()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 510
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onPause()V

    .line 511
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mIsActive:Z

    .line 520
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->setSlotFilter(Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 522
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->pause()V

    .line 523
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->pause()V

    .line 524
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->pause()V

    .line 525
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/EyePosition;->pause()V

    .line 526
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->pause()V

    .line 528
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    if-eqz v0, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->hideDetails()V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->pause()V

    .line 536
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->disableClusterMenu(Z)V

    .line 537
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 539
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 540
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->clearLoadingBit(I)V

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->saveSelection()V

    .line 546
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mNeedUpdateSelection:Z

    .line 549
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 692
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onResume()V

    .line 693
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mIsActive:Z

    .line 695
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    move-result-object v0

    const-string/jumbo v1, "resume_animation"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    .line 696
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->setSlotFilter(Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 698
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mPositionProvider:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->setPositionProvider(Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V

    .line 699
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->start()V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->setContentPane(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 705
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->setLoadingBit(I)V

    .line 708
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mNeedUpdateSelection:Z

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->resume()V

    .line 715
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->resume()V

    .line 716
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/EyePosition;->resume()V

    .line 717
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->resume()V

    .line 718
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->resume()V

    .line 720
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mMenuListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setMenuOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 723
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mShowClusterMenu:Z

    if-eqz v0, :cond_2

    .line 724
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectedAction:I

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->enableClusterMenu(ILcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    .line 726
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mInitialSynced:Z

    if-nez v0, :cond_3

    .line 727
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->setLoadingBit(I)V

    .line 728
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->requestSync(Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 730
    :cond_3
    return-void
.end method

.method public onSelectionChange(Lcom/lenovo/scg/gallery3d/data/Path;Z)V
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "selected"    # Z

    .prologue
    .line 974
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSupportedMenuOperation()V

    .line 975
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 943
    packed-switch p1, :pswitch_data_0

    .line 968
    :goto_0
    return-void

    .line 948
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showActionBar(Z)V

    .line 949
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 958
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showActionBar(Z)V

    .line 959
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 963
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSupportedMenuOperation()V

    .line 964
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 943
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSingleTapUp(I)V
    .locals 6
    .param p1, "slotIndex"    # I

    .prologue
    .line 269
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mIsActive:Z

    if-nez v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getItemIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    .line 274
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 275
    .local v0, "targetItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 276
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 277
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->invalidate()V

    goto :goto_0

    .line 286
    .end local v0    # "targetItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 287
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->setPressedUp()V

    .line 289
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 891
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 892
    .local v0, "activity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showMainMenu(Z)V

    .line 895
    const v2, 0x7f100848

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->updateMenuItem(I)V

    .line 897
    packed-switch p1, :pswitch_data_0

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 899
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->startRisingAnimation()V

    .line 902
    :pswitch_1
    if-eqz p3, :cond_0

    .line 903
    const-string/jumbo v2, "return-index-hint"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 904
    .local v1, "mFocusIndex":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->transformPhotoPageIndexToSlotViewIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->makeSlotVisible(I)V

    goto :goto_0

    .line 897
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSyncDone(Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V
    .locals 3
    .param p1, "mediaSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .param p2, "resultCode"    # I

    .prologue
    .line 1001
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1002
    const-string v0, "LocalTimeAlbumSetPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSyncDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$9;

    invoke-direct {v1, p0, p2}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$9;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1023
    return-void
.end method

.method public setTimePosition(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeName"    # Ljava/lang/String;

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->setTimePosition(Ljava/lang/String;)V

    .line 1156
    return-void
.end method
