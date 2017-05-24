.class public Lcom/lenovo/scg/gallery3d/app/AlbumPage;
.super Lcom/lenovo/scg/gallery3d/app/ActivityState;
.source "AlbumPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;
.implements Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;
.implements Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;
.implements Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;,
        Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field public static final KEY_AUTO_SELECT_ALL:Ljava/lang/String; = "auto-select-all"

.field public static final KEY_EMPTY_ALBUM:Ljava/lang/String; = "empty-album"

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_PARENT_MEDIA_PATH:Ljava/lang/String; = "parent-media-path"

.field public static final KEY_RESUME_ANIMATION:Ljava/lang/String; = "resume_animation"

.field public static final KEY_SCREENSHOT:Ljava/lang/String; = "start-screen-shot-folder"

.field public static final KEY_SET_CENTER:Ljava/lang/String; = "set-center"

.field public static final KEY_SHOW_CLUSTER_MENU:Ljava/lang/String; = "cluster-menu"

.field public static final KEY_START_INDEX:Ljava/lang/String; = "start_index"

.field private static final MSG_PICK_PHOTO:I = 0x0

.field private static final REQUEST_DO_ANIMATION:I = 0x3

.field public static final REQUEST_PHOTO:I = 0x2

.field private static final REQUEST_SLIDESHOW:I = 0x1

.field public static final START_SCREENSHOT_FOLDER_ACTION:Ljava/lang/String; = "lenovo.intent.action.START_SCREENSHOT_FOLDER"

.field public static final S_REQUEST_SELECT_FOLDER:I = 0x9999

.field private static final TAG:Ljava/lang/String; = "AlbumPage"

.field private static final USER_DISTANCE_METER:F = 0.3f


# instance fields
.field private backListener:Landroid/view/View$OnClickListener;

.field private mActionBarOnClickListener:Landroid/view/View$OnClickListener;

.field private mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

.field private mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

.field private mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

.field private mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

.field private mBGColor:[F

.field private mDefGetMultiContentId:Ljava/lang/String;

.field private mDefGetMultiContentName:Ljava/lang/String;

.field private mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

.field private mDetailsSource:Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;

.field private mFocusIndex:I

.field private mGetContent:Z

.field private mGetMultiContent:Z

.field private mGetMultiContentId:Ljava/lang/String;

.field private mGetMultiContentName:Ljava/lang/String;

.field private mGetMultiLocal:Z

.field private mHandler:Landroid/os/Handler;

.field private mInCameraAndWantQuitOnPause:Z

.field private mInCameraApp:Z

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLaunchedFromPhotoPage:Z

.field private mLoadingBits:I

.field private mLoadingFailed:Z

.field private mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mMediaSetPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private mMenuListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mNeedUpdateSelection:Z

.field private mOpenCenter:Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

.field private mParentMediaSetString:Ljava/lang/String;

.field private mPositionProvider:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field private mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

.field private mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

.field private final mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

.field protected mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

.field private mShareToOthersMore:Z

.field private mShowClusterMenu:Z

.field private mShowDetails:Z

.field private mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

.field private mSyncResult:I

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

.field private mToFolderHint:Ljava/lang/String;

.field private mUserDistance:F

.field private mVibrator:Landroid/os/Vibrator;

.field private mbScreenShot:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;-><init>()V

    .line 93
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mbScreenShot:Z

    .line 123
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 154
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 167
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    .line 172
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mNeedUpdateSelection:Z

    .line 174
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 182
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 184
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mInitialSynced:Z

    .line 190
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/RelativePosition;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    .line 198
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mBGColor:[F

    .line 200
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$1;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mPositionProvider:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .line 227
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$2;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 605
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->backListener:Landroid/view/View$OnClickListener;

    .line 753
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mShareToOthersMore:Z

    .line 754
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$6;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$6;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMenuListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 803
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$7;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$7;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActionBarOnClickListener:Landroid/view/View$OnClickListener;

    .line 1348
    return-void

    .line 198
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/SlotView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)[F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mBGColor:[F

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onUpPressed()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mbScreenShot:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mbScreenShot:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->backAlbumPage()V

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onGetMultiPhoto()V

    return-void
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onUploadMultiPhoto()V

    return-void
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/app/AlbumPage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->pickPhoto(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onMenuItemSelected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mShareToOthersMore:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/app/AlbumPage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/gallery3d/app/AlbumPage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onSingleTapUp(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$2802(Lcom/lenovo/scg/gallery3d/app/AlbumPage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSyncResult:I

    return p1
.end method

.method static synthetic access$2902(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/lenovo/scg/gallery3d/app/AlbumPage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLoadingFailed:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLoadingFailed:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->showSyncErrorIfNecessary(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/lenovo/scg/gallery3d/app/AlbumPage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mNeedUpdateSelection:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mNeedUpdateSelection:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/RelativePosition;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    .prologue
    .line 83
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mUserDistance:F

    return v0
.end method

.method private backAlbumPage()V
    .locals 3

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mShareToOthersMore:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->dismissMoreShareDialog()V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->dismissRotateDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    :cond_1
    :goto_0
    return-void

    .line 338
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v0, :cond_3

    .line 339
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->hideDetails()V

    .line 340
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->hideActionBar()V

    goto :goto_0

    .line 343
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 346
    :cond_4
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inMultiSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z

    .line 348
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->hideActionBarBottom()V

    .line 349
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveMultiSelectionMode()V

    goto :goto_0

    .line 353
    :cond_5
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v0, :cond_6

    .line 354
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    move-result-object v0

    const-string v1, "albumpage-transition"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->putIfNotPresent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    :cond_6
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 360
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->GIVEUP:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AlbumPage$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$3;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 372
    :cond_7
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mInCameraApp:Z

    if-eqz v0, :cond_8

    .line 373
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 375
    :cond_8
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onUpPressed()V

    .line 376
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->hideActionBar()V

    goto/16 :goto_0
.end method

.method private clearLoadingBit(I)V
    .locals 4
    .param p1, "loadTaskBit"    # I

    .prologue
    const/4 v3, 0x1

    .line 1294
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLoadingBits:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 1295
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLoadingBits:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mIsActive:Z

    if-eqz v1, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1297
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getStateCount()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 1298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1299
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "empty-album"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1300
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->setStateResult(ILandroid/content/Intent;)V

    .line 1301
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 1313
    .end local v0    # "result":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1303
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    instance-of v1, v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setEmptyViewVisible(Z)V

    goto :goto_0

    .line 1308
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    instance-of v1, v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_0

    .line 1309
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setEmptyViewVisible(Z)V

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 1049
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mShowDetails:Z

    .line 1050
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->hide()V

    .line 1051
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 1052
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->invalidate()V

    .line 1053
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1018
    const-string/jumbo v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 1019
    const-string/jumbo v0, "parent-media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    .line 1020
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 1021
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    .line 1031
    :goto_0
    return-void

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    .line 1028
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .line 1029
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Lcom/lenovo/scg/gallery3d/app/AlbumPage$1;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcom/lenovo/scg/gallery3d/app/LoadingListener;)V

    .line 1030
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setModel(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)V

    goto :goto_0
.end method

.method private initializeViews()V
    .locals 6

    .prologue
    .line 966
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryContext;Z)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .line 967
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 968
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;->get(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;

    move-result-object v0

    .line 969
    .local v0, "config":Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SlotView;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    .line 970
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget v5, v0, Lcom/lenovo/scg/gallery3d/app/Config$AlbumPage;->placeholderColor:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SlotView;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    .line 971
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setSlotRenderer(Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 972
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/GLView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 973
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/AlbumPage$8;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$8;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setListener(Lcom/lenovo/scg/gallery3d/ui/SlotView$Listener;)V

    .line 1001
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    .line 1002
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/AlbumPage$9;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$9;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 1009
    return-void
.end method

.method private onDown(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 406
    return-void
.end method

.method private onGetContent(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 8
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    const/4 v7, 0x1

    .line 501
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v1

    .line 502
    .local v1, "dm":Lcom/lenovo/scg/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 503
    .local v0, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string v5, "crop"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 504
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v3

    .line 508
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x2000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 511
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string/jumbo v5, "output"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-nez v4, :cond_0

    .line 512
    const-string/jumbo v4, "return-data"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 514
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 515
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 521
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 517
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 518
    .restart local v2    # "intent":Landroid/content/Intent;
    const/4 v4, -0x1

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 519
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private onGetMultiPhoto()V
    .locals 9

    .prologue
    .line 529
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 530
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v6, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v2

    .line 532
    .local v2, "dm":Lcom/lenovo/scg/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 534
    .local v0, "activity":Landroid/app/Activity;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 535
    .local v4, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v5

    .line 536
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 538
    .end local v4    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v7, "photos-path"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 539
    const/4 v7, -0x1

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 541
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 542
    return-void
.end method

.method private onMenuItemSelected(Ljava/lang/String;)Z
    .locals 6
    .param p1, "menuItem"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 770
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 772
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0663

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 773
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 799
    :goto_0
    return v2

    .line 775
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f065a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 776
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 777
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    goto :goto_0

    .line 779
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f06c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 780
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->showClusterDialog(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    goto :goto_0

    .line 782
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0669

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 783
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 784
    .local v1, "data":Landroid/os/Bundle;
    const-string/jumbo v3, "media-set-path"

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string/jumbo v3, "repeat"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 786
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    invoke-virtual {v3, v4, v2, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 788
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

    .line 789
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v3, :cond_4

    .line 790
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->hideDetails()V

    goto/16 :goto_0

    .line 792
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->showDetails()V

    goto/16 :goto_0

    .line 795
    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f066d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 796
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_6
    move v2, v3

    .line 799
    goto/16 :goto_0
.end method

.method private onSingleTapUp(I)V
    .locals 6
    .param p1, "slotIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 418
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mIsActive:Z

    if-nez v2, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z

    if-eqz v2, :cond_3

    .line 421
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->get(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 422
    .local v1, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 423
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->multi(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 424
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 425
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 426
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->get(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 427
    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 428
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 432
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 437
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 438
    .local v0, "activity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->fullScreen(Z)V

    .line 441
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 442
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    .line 445
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private onUp(Z)V
    .locals 2
    .param p1, "followedByLongPress"    # Z

    .prologue
    .line 409
    if-eqz p1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setPressedUp()V

    goto :goto_0
.end method

.method private onUpPressed()V
    .locals 3

    .prologue
    .line 394
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getStateCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 395
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onBackPressed()V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 397
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 398
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "media-path"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private onUploadMultiPhoto()V
    .locals 15

    .prologue
    .line 545
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v9, "cloudPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    const/4 v8, 0x0

    .line 547
    .local v8, "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    const/4 v10, 0x0

    .line 548
    .local v10, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v11

    .line 549
    .local v11, "dm":Lcom/lenovo/scg/gallery3d/data/DataManager;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 550
    .local v6, "activity":Landroid/app/Activity;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 551
    .local v13, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v11, v13}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_size"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 552
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 553
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 554
    new-instance v8, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    .end local v8    # "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    invoke-direct {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;-><init>()V

    .line 555
    .restart local v8    # "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContentId:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setmId(Ljava/lang/String;)V

    .line 556
    const-string v0, "_data"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setmPath(Ljava/lang/String;)V

    .line 557
    const-string v0, "_size"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setSize(J)V

    .line 558
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 561
    .end local v13    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 562
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "cloud upload photo from local"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 565
    new-instance v14, Landroid/content/Intent;

    const-class v0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-direct {v14, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 566
    .local v14, "service":Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 567
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v0, "Cloud is upload or is download key"

    const/16 v1, 0x13

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 568
    const-string v0, "Cloud upload list or download list key"

    invoke-virtual {v7, v0, v9}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 569
    invoke-virtual {v14, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 570
    invoke-virtual {v6, v14}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 571
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onBackPressed()V

    .line 572
    return-void
.end method

.method private pickPhoto(I)V
    .locals 2
    .param p1, "slotIndex"    # I

    .prologue
    .line 450
    const-string/jumbo v0, "wwf5"

    const-string v1, "AlbumPage pickPhoto"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->pickPhoto(IZ)V

    .line 452
    return-void
.end method

.method private pickPhoto(IZ)V
    .locals 7
    .param p1, "slotIndex"    # I
    .param p2, "startInFilmstrip"    # Z

    .prologue
    const/4 v6, 0x1

    .line 455
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mIsActive:Z

    if-nez v3, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    if-nez p2, :cond_2

    .line 459
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 462
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->get(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 463
    .local v1, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 464
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v3, :cond_3

    .line 465
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onGetContent(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    goto :goto_0

    .line 466
    :cond_3
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v3, :cond_4

    .line 467
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    move-result-object v2

    .line 468
    .local v2, "transitions":Lcom/lenovo/scg/gallery3d/app/TransitionStore;
    const-string v3, "albumpage-transition"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 469
    const-string v3, "index-hint"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 470
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onBackPressed()V

    goto :goto_0

    .line 476
    .end local v2    # "transitions":Lcom/lenovo/scg/gallery3d/app/TransitionStore;
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    if-eqz v3, :cond_5

    .line 477
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->hideActionBar()V

    .line 481
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 482
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "index-hint"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
    const-string/jumbo v3, "open-animation-rect"

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v4, p1, v5}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getSlotRect(ILcom/lenovo/scg/gallery3d/ui/GLView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 484
    const-string/jumbo v3, "media-set-path"

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string/jumbo v3, "media-item-path"

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v3, "albumpage-transition"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    const-string/jumbo v3, "start-in-filmstrip"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 492
    if-eqz p2, :cond_6

    .line 493
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/lenovo/scg/gallery3d/app/FilmstripPage;

    invoke-virtual {v3, p0, v4, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 495
    :cond_6
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/lenovo/scg/gallery3d/app/SinglePhotoPage;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private prepareAnimationBackToFilmstrip(I)V
    .locals 5
    .param p1, "slotIndex"    # I

    .prologue
    .line 1081
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->isActive(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->get(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1083
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 1084
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    move-result-object v1

    .line 1085
    .local v1, "transitions":Lcom/lenovo/scg/gallery3d/app/TransitionStore;
    const-string v2, "index-hint"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1086
    const-string/jumbo v2, "open-animation-rect"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v3, p1, v4}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getSlotRect(ILcom/lenovo/scg/gallery3d/ui/GLView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setLoadingBit(I)V
    .locals 1
    .param p1, "loadTaskBit"    # I

    .prologue
    .line 1290
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLoadingBits:I

    .line 1291
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 1034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mShowDetails:Z

    .line 1035
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 1036
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    .line 1037
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AlbumPage$10;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$10;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->show()V

    .line 1046
    return-void
.end method

.method private showSyncErrorIfNecessary(Z)V
    .locals 3
    .param p1, "loadingFailed"    # Z

    .prologue
    .line 1284
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLoadingBits:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSyncResult:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mIsActive:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1285
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0f0681

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1287
    :cond_1
    return-void
.end method

.method private switchToFilmstrip()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1090
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 1098
    :goto_0
    return-void

    .line 1091
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v0

    .line 1092
    .local v0, "targetPhoto":I
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->prepareAnimationBackToFilmstrip(I)V

    .line 1093
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v1, :cond_1

    .line 1094
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onBackPressed()V

    goto :goto_0

    .line 1096
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->pickPhoto(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public doCluster(I)V
    .locals 7
    .param p1, "clusterType"    # I

    .prologue
    .line 590
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "basePath":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, "newPath":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 593
    .local v2, "data":Landroid/os/Bundle;
    const-string/jumbo v4, "media-path"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mShowClusterMenu:Z

    if-eqz v4, :cond_0

    .line 595
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 596
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v4, "set-title"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string/jumbo v4, "set-subtitle"

    invoke-static {v1, p1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->getClusterByTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 602
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
    .line 897
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 898
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActionBarOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMenuListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    return-object v0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 224
    const v0, 0x7f0d0018

    return v0
.end method

.method public onAlbumModeSelected(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1379
    if-nez p1, :cond_0

    .line 1380
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->switchToFilmstrip()V

    .line 1382
    :cond_0
    return-void
.end method

.method protected onBackPressed()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->showActionBar()V

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->backAlbumPage()V

    .line 323
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "restoreState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 667
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 668
    const v3, 0x3e99999a    # 0.3f

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->meterToPixel(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mUserDistance:F

    .line 669
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->initializeViews()V

    .line 670
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->initializeData(Landroid/os/Bundle;)V

    .line 672
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z

    .line 673
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0f0269

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mDefGetMultiContentName:Ljava/lang/String;

    .line 674
    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mDefaultId:Ljava/lang/String;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mDefGetMultiContentId:Ljava/lang/String;

    .line 675
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0f0928

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mToFolderHint:Ljava/lang/String;

    .line 677
    const-string v3, "get-content"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetContent:Z

    .line 678
    const-string v3, "get-multi-photo"

    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    .line 679
    const-string v3, "get multi folder id"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mDefGetMultiContentId:Ljava/lang/String;

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContentId:Ljava/lang/String;

    .line 680
    const-string v3, "get multi folder name"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mDefGetMultiContentName:Ljava/lang/String;

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContentName:Ljava/lang/String;

    .line 681
    const-string v3, "cluster-menu"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mShowClusterMenu:Z

    .line 682
    const-string/jumbo v3, "start_index"

    const/4 v5, -0x1

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 683
    .local v2, "startIndex":I
    if-lez v2, :cond_0

    .line 684
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setStartIndex(I)V

    .line 686
    :cond_0
    new-instance v3, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Lcom/lenovo/scg/gallery3d/app/AlbumPage$1;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mDetailsSource:Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyDetailsSource;

    .line 687
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 690
    .local v1, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 693
    .local v0, "absActivity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->clickFolderFilter()V

    .line 696
    new-instance v3, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getParentView()Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-direct {v3, v5, v1, v6, v7}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    .line 697
    const-string/jumbo v3, "vibrator"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mVibrator:Landroid/os/Vibrator;

    .line 699
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    if-eqz v3, :cond_1

    .line 700
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->initActionBar()V

    .line 702
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->hideActionBar()V

    .line 704
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->dealwithEvent(Landroid/view/View$OnClickListener;)V

    .line 705
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->setWindowFeature()V

    .line 706
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isCloudSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetContent:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->setShowCloud(Z)V

    .line 709
    :cond_1
    if-eqz p1, :cond_2

    .line 710
    const-string/jumbo v3, "start-screen-shot-folder"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mbScreenShot:Z

    .line 716
    :cond_2
    const-string v3, "auto-select-all"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 717
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->selectAll()V

    .line 720
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    const-class v5, Lcom/lenovo/scg/gallery3d/app/FilmstripPage;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLaunchedFromPhotoPage:Z

    .line 721
    const-string v3, "app-bridge"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mInCameraApp:Z

    .line 723
    new-instance v3, Lcom/lenovo/scg/gallery3d/app/AlbumPage$5;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$5;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;

    .line 738
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    if-eqz v3, :cond_4

    .line 739
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->enterMultiSelectionMode()V

    .line 740
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->setCanChangeFolder(Z)V

    .line 742
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mToFolderHint:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->setToFolder(Ljava/lang/String;)V

    .line 743
    return-void

    :cond_5
    move v3, v4

    .line 706
    goto :goto_0
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    .line 1057
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 1058
    .local v1, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    move-result-object v0

    .line 1060
    .local v0, "actionBar":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;
    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 1062
    .local v2, "inflator":Landroid/view/MenuInflater;
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetContent:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z

    if-eqz v4, :cond_1

    .line 1063
    :cond_0
    const v4, 0x7f120012

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1064
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string/jumbo v6, "type-bits"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1065
    .local v3, "typeBits":I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getSelectionModePrompt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 1076
    .end local v3    # "typeBits":I
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setSubtitle(Ljava/lang/String;)V

    .line 1077
    return v5

    .line 1067
    :cond_1
    const/high16 v4, 0x7f120000

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1068
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 1070
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-static {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/app/FilterUtils;->setupMenuItems(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;Lcom/lenovo/scg/gallery3d/data/Path;Z)V

    .line 1072
    const v4, 0x7f100aee

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mShowClusterMenu:Z

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1073
    const v4, 0x7f100aeb

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->isCameraSource(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 952
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onDestroy()V

    .line 953
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->setLoadingListener(Lcom/lenovo/scg/gallery3d/app/LoadingListener;)V

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->hideActionBar()V

    .line 960
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->removeActionBarView()V

    .line 963
    :cond_1
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 1140
    :goto_0
    return v1

    .line 1104
    :sswitch_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onUpPressed()V

    goto :goto_0

    .line 1108
    :sswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    goto :goto_0

    .line 1111
    :sswitch_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 1112
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    goto :goto_0

    .line 1115
    :sswitch_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->showClusterDialog(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    goto :goto_0

    .line 1119
    :sswitch_4
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mInCameraAndWantQuitOnPause:Z

    .line 1120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1121
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "media-set-path"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string/jumbo v2, "repeat"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1123
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    invoke-virtual {v2, v3, v1, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 1124
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->hideActionBar()V

    goto :goto_0

    .line 1128
    .end local v0    # "data":Landroid/os/Bundle;
    :sswitch_5
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v2, :cond_0

    .line 1129
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->hideDetails()V

    goto :goto_0

    .line 1131
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->showDetails()V

    goto :goto_0

    .line 1136
    :sswitch_6
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 1102
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
    .line 1229
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onLeaveSelectionMode()V

    .line 1230
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 1233
    :cond_0
    return-void
.end method

.method public onLongTap(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 575
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetContent:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z

    if-eqz v1, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->get(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 579
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 580
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 581
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 585
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 906
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onPause()V

    .line 907
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 915
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 919
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->pause()V

    .line 920
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->pause()V

    .line 923
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->pause()V

    .line 924
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->pause()V

    .line 927
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    if-eqz v0, :cond_2

    .line 928
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->hideDetails()V

    .line 932
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetContent:Z

    if-nez v0, :cond_3

    .line 933
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->disableAlbumModeMenu(Z)V

    .line 936
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v0, :cond_4

    .line 937
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 938
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 939
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->clearLoadingBit(I)V

    .line 943
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 944
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->saveSelection()V

    .line 945
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mNeedUpdateSelection:Z

    .line 948
    :cond_5
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 840
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onResume()V

    .line 841
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 843
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    if-eqz v2, :cond_0

    .line 844
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->setWindowFeature()V

    .line 845
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->showActionBar()V

    .line 849
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    move-result-object v2

    const-string/jumbo v5, "resume_animation"

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    .line 850
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    if-eqz v2, :cond_1

    .line 851
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 852
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mPositionProvider:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->setPositionProvider(Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V

    .line 853
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->start()V

    .line 856
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->setContentPane(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 858
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-le v2, v3, :cond_6

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v5, :cond_7

    move v5, v3

    :goto_1
    or-int v1, v2, v5

    .line 859
    .local v1, "enableHomeButton":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    move-result-object v0

    .line 860
    .local v0, "actionBar":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;
    invoke-virtual {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 861
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetContent:Z

    if-nez v2, :cond_2

    .line 862
    invoke-virtual {v0, v3, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 866
    :cond_2
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    .line 867
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLoadingFailed:Z

    .line 870
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 871
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mNeedUpdateSelection:Z

    .line 875
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    if-eqz v2, :cond_4

    .line 876
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->resume()V

    .line 879
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->resume()V

    .line 880
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumView:Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer;->setPressedIndex(I)V

    .line 881
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->resume()V

    .line 883
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMenuListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setMenuOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 885
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mInitialSynced:Z

    if-nez v2, :cond_5

    .line 886
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->setLoadingBit(I)V

    .line 887
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-eqz v2, :cond_5

    .line 888
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->requestSync(Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 891
    :cond_5
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mInCameraApp:Z

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mInCameraAndWantQuitOnPause:Z

    .line 892
    return-void

    .end local v0    # "actionBar":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;
    .end local v1    # "enableHomeButton":Z
    :cond_6
    move v2, v4

    .line 858
    goto :goto_0

    :cond_7
    move v5, v4

    goto :goto_1
.end method

.method public onSelectionChange(Lcom/lenovo/scg/gallery3d/data/Path;Z)V
    .locals 4
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "selected"    # Z

    .prologue
    .line 1237
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z

    if-eqz v2, :cond_2

    .line 1238
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 1239
    .local v0, "select":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->updateSelect(I)V

    .line 1240
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    .line 1241
    .local v1, "total":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->setSelectedAll(Z)V

    .line 1253
    .end local v0    # "select":I
    .end local v1    # "total":I
    :goto_1
    return-void

    .line 1241
    .restart local v0    # "select":I
    .restart local v1    # "total":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1250
    .end local v0    # "select":I
    .end local v1    # "total":I
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSupportedMenuOperation()V

    goto :goto_1
.end method

.method public onSelectionModeChange(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 1174
    packed-switch p1, :pswitch_data_0

    .line 1208
    :goto_0
    return-void

    .line 1176
    :pswitch_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z

    if-eqz v0, :cond_1

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->showActionBarBottom()V

    goto :goto_0

    .line 1179
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showActionBar(Z)V

    .line 1182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 1187
    :pswitch_1
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z

    if-eqz v0, :cond_3

    .line 1188
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->hideActionBarBottom()V

    goto :goto_0

    .line 1190
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showActionBar(Z)V

    .line 1192
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1197
    :pswitch_2
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContent:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z

    if-eqz v0, :cond_5

    .line 1198
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->updateSelect(I)V

    .line 1199
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 1202
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSupportedMenuOperation()V

    .line 1203
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1174
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

    .line 1146
    packed-switch p1, :pswitch_data_0

    .line 1167
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 1168
    .local v0, "activity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->fullScreen(Z)V

    .line 1170
    .end local v0    # "activity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    :cond_0
    return-void

    .line 1149
    :pswitch_0
    if-eqz p3, :cond_0

    .line 1150
    const-string/jumbo v1, "photo-index"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 1151
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->setCenterIndex(I)V

    goto :goto_0

    .line 1155
    :pswitch_1
    if-eqz p3, :cond_0

    .line 1156
    const-string/jumbo v1, "return-index-hint"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 1157
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    goto :goto_0

    .line 1161
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->startRisingAnimation()V

    goto :goto_0

    .line 1146
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
    .line 1257
    const-string v0, "AlbumPage"

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

    .line 1258
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AlbumPage$11;

    invoke-direct {v1, p0, p2}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$11;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1276
    return-void
.end method

.method public onUpdateBar(I)V
    .locals 1
    .param p1, "curCount"    # I

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->updateBar(I)V

    .line 1015
    :cond_0
    return-void
.end method

.method public setFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 746
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContentId:Ljava/lang/String;

    .line 748
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContentName:Ljava/lang/String;

    .line 749
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mToFolderHint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->setToFolder(Ljava/lang/String;)V

    .line 751
    :cond_0
    return-void
.end method
