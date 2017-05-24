.class public Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
.super Lcom/lenovo/scg/gallery3d/app/ActivityState;
.source "CameraBrowsePage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;
.implements Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;
.implements Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$MyDetailsSource;,
        Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field public static final KEY_AUTO_SELECT_ALL:Ljava/lang/String; = "auto-select-all"

.field public static final KEY_CAMERA_DATA:Ljava/lang/String; = "camera-data-key"

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_PARENT_MEDIA_PATH:Ljava/lang/String; = "parent-media-path"

.field public static final KEY_RESUME_ANIMATION:Ljava/lang/String; = "resume_animation"

.field public static final KEY_SET_CENTER:Ljava/lang/String; = "set-center"

.field public static final KEY_SHOW_CLUSTER_MENU:Ljava/lang/String; = "cluster-menu"

.field private static final MSG_BROWSE_LOCK_ORIENTATION:I = 0x4

.field private static final MSG_BROWSE_UNLOCK_ORIENTATION:I = 0x5

.field private static final MSG_PICK_PHOTO:I = 0x1

.field private static final REQUEST_DO_ANIMATION:I = 0x3

.field private static final REQUEST_PHOTO:I = 0x2

.field private static final REQUEST_SLIDESHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraBrowsePage"

.field private static final USER_DISTANCE_METER:F = 0.3f

.field private static mIsFromCameraData:Z


# instance fields
.field private backListener:Landroid/view/View$OnClickListener;

.field private mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

.field private mActionBarOnClickListener:Landroid/view/View$OnClickListener;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

.field public mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

.field private mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

.field private mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

.field private mBGColor:[F

.field private mContext:Landroid/content/Context;

.field private mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

.field private mDetailsSource:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$MyDetailsSource;

.field private mFocusIndex:I

.field private mGetContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLoadingBits:I

.field private mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mMediaSetPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private mMenuListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOpenCenter:Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

.field private mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

.field private mParentMediaSetString:Ljava/lang/String;

.field private mPositionProvider:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field private mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

.field private final mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

.field protected mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

.field private mShareToOthersMore:Z

.field private mShowClusterMenu:Z

.field private mShowDetails:Z

.field private mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

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

.field private mUserDistance:F

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mIsFromCameraData:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;-><init>()V

    .line 120
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mIsActive:Z

    .line 143
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    .line 151
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mFocusIndex:I

    .line 165
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mContext:Landroid/content/Context;

    .line 167
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    .line 169
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 171
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    .line 173
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mLoadingBits:I

    .line 175
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mInitialSynced:Z

    .line 177
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/RelativePosition;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mOpenCenter:Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    .line 181
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mBGColor:[F

    .line 183
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$1;-><init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mPositionProvider:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .line 205
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$2;-><init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 432
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$3;-><init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->backListener:Landroid/view/View$OnClickListener;

    .line 1035
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$9;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$9;-><init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionBarOnClickListener:Landroid/view/View$OnClickListener;

    .line 1069
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mShareToOthersMore:Z

    .line 1070
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$10;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$10;-><init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMenuListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void

    .line 181
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/SlotView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->pickPhoto(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/app/OrientationManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->onSingleTapUp(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->hideDetails()V

    return-void
.end method

.method static synthetic access$1902(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mShareToOthersMore:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->onMenuItemSelected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/RelativePosition;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mOpenCenter:Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    .prologue
    .line 79
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mUserDistance:F

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)[F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mBGColor:[F

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->backLastView()V

    return-void
.end method

.method private backLastView()V
    .locals 2

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 522
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->hideDetails()V

    .line 523
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->hideActionBar()V

    .line 531
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/lenovo/scg/gallery3d/ui/OrientationSource;)V

    .line 532
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 527
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->onUpPressed()V

    .line 528
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->hideActionBar()V

    goto :goto_0
.end method

.method private checkFolderFilterMap(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 11
    .param p1, "mediaSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    const/4 v10, 0x0

    .line 709
    const/4 v2, 0x0

    .line 713
    .local v2, "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p1, v7, v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 715
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 716
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 725
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, "itemFilePath":Ljava/lang/String;
    const-string v7, "/DCIM/Camera/continuous_"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 728
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 729
    .local v6, "tmpBucketId":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getSelectedMap()Ljava/util/Map;

    move-result-object v5

    .line 730
    .local v5, "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->checkCCBucketIdinDb(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 731
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v7

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->saveBucketId2Db(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    .end local v3    # "itemFilePath":Ljava/lang/String;
    .end local v5    # "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "tmpBucketId":Ljava/lang/String;
    :cond_1
    return-void

    .line 720
    :catch_0
    move-exception v1

    .line 721
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "CameraBrowsePage"

    const-string v8, "catch exception"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private clearLoadingBit(I)V
    .locals 2
    .param p1, "loadTaskBit"    # I

    .prologue
    .line 907
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mLoadingBits:I

    .line 908
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mLoadingBits:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 915
    :cond_0
    return-void
.end method

.method private getSlotRect(I)Landroid/graphics/Rect;
    .locals 5
    .param p1, "slotIndex"    # I

    .prologue
    .line 360
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 361
    .local v0, "offset":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getBoundsOf(Lcom/lenovo/scg/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 362
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 363
    .local v1, "r":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 364
    return-object v1
.end method

.method public static getmIsFromCameraData()Z
    .locals 1

    .prologue
    .line 535
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mIsFromCameraData:Z

    return v0
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mShowDetails:Z

    .line 754
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->hide()V

    .line 755
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 756
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->invalidate()V

    .line 757
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 694
    const-string/jumbo v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSetPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 695
    const-string/jumbo v0, "parent-media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mParentMediaSetString:Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSetPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 697
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    .line 698
    const-string v0, "MediaSet is null. Path = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSetPath:Lcom/lenovo/scg/gallery3d/data/Path;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->checkFolderFilterMap(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    .line 701
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    .line 702
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .line 703
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$MyLoadingListener;-><init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$1;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcom/lenovo/scg/gallery3d/app/LoadingListener;)V

    .line 704
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setModel(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)V

    .line 705
    return-void
.end method

.method private initializeViews()V
    .locals 6

    .prologue
    .line 638
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryContext;Z)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .line 639
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 640
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;->get(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;

    move-result-object v0

    .line 641
    .local v0, "config":Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SlotView;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    .line 642
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    sget-boolean v2, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mIsFromCameraData:Z

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setCameraBrowseState(Z)V

    .line 644
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget v5, v0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;->placeholderColor:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SlotView;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    .line 645
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 646
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/GLView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 647
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$5;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$5;-><init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setListener(Lcom/lenovo/scg/gallery3d/ui/SlotView$Listener;)V

    .line 684
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    .line 685
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$6;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$6;-><init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 691
    return-void
.end method

.method private onDown(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 292
    return-void
.end method

.method private onGetContent(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 8
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    const/4 v7, 0x1

    .line 368
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v1

    .line 369
    .local v1, "dm":Lcom/lenovo/scg/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 370
    .local v0, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mData:Landroid/os/Bundle;

    const-string v5, "crop"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 371
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v3

    .line 375
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x2000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 378
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mData:Landroid/os/Bundle;

    const-string/jumbo v5, "output"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-nez v4, :cond_0

    .line 379
    const-string/jumbo v4, "return-data"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 381
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 382
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 388
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 384
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 385
    .restart local v2    # "intent":Landroid/content/Intent;
    const/4 v4, -0x1

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 386
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private onMenuItemSelected(Ljava/lang/String;)Z
    .locals 6
    .param p1, "menuItem"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1086
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 1088
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0663

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1089
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 1115
    :goto_0
    return v2

    .line 1091
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f065a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1092
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 1093
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    goto :goto_0

    .line 1095
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f06c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1096
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->showClusterDialog(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    goto :goto_0

    .line 1098
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0669

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1099
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1100
    .local v1, "data":Landroid/os/Bundle;
    const-string/jumbo v3, "media-set-path"

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSetPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string/jumbo v3, "repeat"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1102
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    invoke-virtual {v3, v4, v2, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1104
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f066a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1105
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mShowDetails:Z

    if-eqz v3, :cond_4

    .line 1106
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->hideDetails()V

    goto/16 :goto_0

    .line 1108
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->showDetails()V

    goto/16 :goto_0

    .line 1111
    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f066d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1112
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_6
    move v2, v3

    .line 1115
    goto/16 :goto_0
.end method

.method private onSingleTapUp(I)V
    .locals 6
    .param p1, "slotIndex"    # I

    .prologue
    const/4 v5, 0x1

    .line 304
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mIsActive:Z

    if-nez v2, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->get(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 308
    .local v1, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 309
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 311
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 316
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 317
    .local v0, "activity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->fullScreen(Z)V

    .line 320
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 321
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    .line 323
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private onUp(Z)V
    .locals 2
    .param p1, "followedByLongPress"    # Z

    .prologue
    .line 295
    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    goto :goto_0
.end method

.method private onUpPressed()V
    .locals 3

    .prologue
    .line 281
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getStateCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 282
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onBackPressed()V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 284
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 285
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "media-path"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mParentMediaSetString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private pickPhoto(I)V
    .locals 5
    .param p1, "slotIndex"    # I

    .prologue
    .line 328
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mIsActive:Z

    if-nez v2, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mFlags:I

    .line 332
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->get(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 333
    .local v1, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 334
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mGetContent:Z

    if-eqz v2, :cond_2

    .line 335
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->onGetContent(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    goto :goto_0

    .line 339
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    if-eqz v2, :cond_3

    .line 340
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->hide()V

    .line 343
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->hideActionBar()V

    .line 346
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 347
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "index-hint"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    const-string/jumbo v2, "open-animation-rect"

    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 349
    const-string/jumbo v2, "media-set-path"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSetPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v2, "media-item-path"

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v2, "START_FROM_CONTINUE_PICTURE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 354
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/FilmstripPage;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private setLoadingBit(I)V
    .locals 1
    .param p1, "loadTaskBit"    # I

    .prologue
    .line 903
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mLoadingBits:I

    .line 904
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mShowDetails:Z

    .line 740
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mDetailsSource:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    .line 742
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$7;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$7;-><init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->show()V

    .line 750
    return-void
.end method


# virtual methods
.method public doCluster(I)V
    .locals 7
    .param p1, "clusterType"    # I

    .prologue
    .line 417
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "basePath":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, "newPath":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 420
    .local v2, "data":Landroid/os/Bundle;
    const-string/jumbo v4, "media-path"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mShowClusterMenu:Z

    if-eqz v4, :cond_0

    .line 422
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 423
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v4, "set-title"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string/jumbo v4, "set-subtitle"

    invoke-static {v1, p1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->getClusterByTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 429
    return-void
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
    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionBarOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMenuListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    return-object v0
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mShareToOthersMore:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->dismissMoreShareDialog()V

    .line 276
    :cond_0
    const-string v0, "CameraBrowserPage : onBackPressed"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->backLastView()V

    .line 278
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 1026
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "restoreState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 445
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2, v8}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/lenovo/scg/gallery3d/ui/OrientationSource;)V

    .line 446
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mContext:Landroid/content/Context;

    .line 447
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v9}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 448
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mContext:Landroid/content/Context;

    const v3, 0x7f0a008a

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    .line 449
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mFlags:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mFlags:I

    .line 452
    const v2, 0x3e99999a    # 0.3f

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->meterToPixel(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mUserDistance:F

    .line 455
    const-string v2, "camera-data-key"

    invoke-virtual {p1, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mIsFromCameraData:Z

    .line 458
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->initializeViews()V

    .line 459
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->initializeData(Landroid/os/Bundle;)V

    .line 461
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 462
    .local v0, "absActivity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getParentView()Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    .line 463
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->initActionBar()V

    .line 464
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->dealwithEvent(Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->setWindowFeature()V

    .line 466
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v2, v7}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->setShowCloud(Z)V

    .line 469
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getOrientationManager()Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    .line 472
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2, v8}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/lenovo/scg/gallery3d/ui/OrientationSource;)V

    .line 475
    const-string v2, "get-content"

    invoke-virtual {p1, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mGetContent:Z

    .line 476
    const-string v2, "cluster-menu"

    invoke-virtual {p1, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mShowClusterMenu:Z

    .line 478
    new-instance v2, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$MyDetailsSource;

    invoke-direct {v2, p0, v8}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$MyDetailsSource;-><init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$1;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mDetailsSource:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$MyDetailsSource;

    .line 479
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mVibrator:Landroid/os/Vibrator;

    .line 482
    const-string v2, "auto-select-all"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->selectAll()V

    .line 487
    :cond_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 488
    const-string/jumbo v2, "set-center"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 489
    .local v1, "center":[I
    if-eqz v1, :cond_1

    .line 490
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mOpenCenter:Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    aget v3, v1, v7

    aget v4, v1, v9

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/RelativePosition;->setAbsolutePosition(II)V

    .line 491
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mOpenCenter:Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->startScatteringAnimation(Lcom/lenovo/scg/gallery3d/ui/RelativePosition;)V

    .line 495
    .end local v1    # "center":[I
    :cond_1
    new-instance v2, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$4;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$4;-><init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mHandler:Landroid/os/Handler;

    .line 518
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 762
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->hide()V

    .line 765
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 618
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onDestroy()V

    .line 619
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcom/lenovo/scg/gallery3d/app/LoadingListener;)V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->hideActionBar()V

    .line 624
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->removeActionBarView()V

    .line 625
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    if-eqz v0, :cond_1

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/lenovo/scg/gallery3d/ui/OrientationSource;)V

    .line 631
    const-string v0, "CameraBrowserPage : onDestroy"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showActionBar(Z)V

    .line 635
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 770
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 806
    :goto_0
    return v1

    .line 772
    :sswitch_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->onUpPressed()V

    goto :goto_0

    .line 776
    :sswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    goto :goto_0

    .line 779
    :sswitch_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 780
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    goto :goto_0

    .line 783
    :sswitch_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->showClusterDialog(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    goto :goto_0

    .line 787
    :sswitch_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 788
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "media-set-path"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSetPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string/jumbo v2, "repeat"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 790
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    invoke-virtual {v2, v3, v1, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 794
    .end local v0    # "data":Landroid/os/Bundle;
    :sswitch_5
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mShowDetails:Z

    if-eqz v2, :cond_0

    .line 795
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->hideDetails()V

    goto :goto_0

    .line 797
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->showDetails()V

    goto :goto_0

    .line 802
    :sswitch_6
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 770
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f100aeb -> :sswitch_6
        0x7f100aec -> :sswitch_4
        0x7f100aed -> :sswitch_2
        0x7f100aee -> :sswitch_3
        0x7f100b31 -> :sswitch_5
        0x7f100b36 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLeaveSelectionMode()V
    .locals 1

    .prologue
    .line 541
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onLeaveSelectionMode()V

    .line 542
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 545
    :cond_0
    return-void
.end method

.method public onLongTap(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 392
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->inflaterActionbar()V

    .line 394
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionBarOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setActionBarOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    :cond_0
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mGetContent:Z

    if-eqz v1, :cond_2

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 398
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->get(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 399
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v0, :cond_1

    .line 400
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 401
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 403
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->invalidate()V

    .line 406
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMenuListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setMenuOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 599
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onPause()V

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mIsActive:Z

    .line 602
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 604
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->pause()V

    .line 605
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->pause()V

    .line 606
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->pause()V

    .line 608
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 610
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 611
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->clearLoadingBit(I)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->pause()V

    .line 614
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 550
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onResume()V

    .line 551
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mIsActive:Z

    .line 552
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    if-eqz v2, :cond_0

    .line 553
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->hide()V

    .line 555
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->setWindowFeature()V

    .line 556
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->showActionBar()V

    .line 558
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    move-result-object v2

    const-string/jumbo v5, "resume_animation"

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    .line 559
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    if-eqz v2, :cond_1

    .line 560
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 561
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mPositionProvider:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->setPositionProvider(Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V

    .line 562
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->start()V

    .line 565
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->setContentPane(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 567
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    .line 568
    .local v1, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-le v2, v3, :cond_4

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v5, :cond_2

    move v4, v3

    :cond_2
    or-int v0, v2, v4

    .line 569
    .local v0, "enableHomeButton":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 572
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->setLoadingBit(I)V

    .line 573
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->resume()V

    .line 575
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->resume()V

    .line 576
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->resume()V

    .line 580
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mInitialSynced:Z

    if-nez v2, :cond_3

    .line 581
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->setLoadingBit(I)V

    .line 582
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->requestSync(Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 584
    :cond_3
    return-void

    .end local v0    # "enableHomeButton":Z
    :cond_4
    move v2, v4

    .line 568
    goto :goto_0
.end method

.method public onSelectionChange(Lcom/lenovo/scg/gallery3d/data/Path;Z)V
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "selected"    # Z

    .prologue
    .line 873
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSupportedMenuOperation()V

    .line 875
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 838
    packed-switch p1, :pswitch_data_0

    .line 863
    :goto_0
    return-void

    .line 841
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->hideActionBar()V

    .line 842
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showActionBar(Z)V

    .line 843
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 848
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->showActionBar()V

    .line 849
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showActionBar(Z)V

    .line 850
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 857
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSupportedMenuOperation()V

    .line 859
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 812
    packed-switch p1, :pswitch_data_0

    .line 832
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 833
    .local v0, "activity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->fullScreen(Z)V

    .line 835
    .end local v0    # "activity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    :cond_0
    return-void

    .line 815
    :pswitch_0
    if-eqz p3, :cond_0

    .line 816
    const-string/jumbo v1, "photo-index"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mFocusIndex:I

    .line 817
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mFocusIndex:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setCenterIndex(I)V

    goto :goto_0

    .line 821
    :pswitch_1
    if-eqz p3, :cond_0

    .line 822
    const-string/jumbo v1, "return-index-hint"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mFocusIndex:I

    .line 823
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mFocusIndex:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    goto :goto_0

    .line 827
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    .line 812
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSyncDone(Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V
    .locals 3
    .param p1, "mediaSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .param p2, "resultCode"    # I

    .prologue
    .line 879
    const-string v0, "CameraBrowsePage"

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

    .line 880
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$8;

    invoke-direct {v1, p0, p2}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$8;-><init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 900
    return-void
.end method

.method public onUpdateBar(I)V
    .locals 1
    .param p1, "curCount"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->updateBar(I)V

    .line 413
    :cond_0
    return-void
.end method
