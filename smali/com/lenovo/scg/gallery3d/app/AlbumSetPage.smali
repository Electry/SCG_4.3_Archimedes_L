.class public Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
.super Lcom/lenovo/scg/gallery3d/app/ActivityState;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;
.implements Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;
.implements Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;
.implements Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;,
        Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;,
        Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field private static final DATA_CACHE_SIZE:I = 0x100

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_SELECTED_CLUSTER_TYPE:Ljava/lang/String; = "selected-cluster"

.field public static final KEY_SET_SUBTITLE:Ljava/lang/String; = "set-subtitle"

.field public static final KEY_SET_TITLE:Ljava/lang/String; = "set-title"

.field private static final MSG_PICK_ALBUM:I = 0x1

.field private static final REQUEST_DO_ANIMATION:I = 0x1

.field public static final REQUEST_REFRESH_VIEW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AlbumSetPage"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

.field private mActionBarOnClickListener:Landroid/view/View$OnClickListener;

.field private mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

.field private mActionView:Z

.field private mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

.field private mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

.field private mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

.field private mCameraButton:Landroid/widget/Button;

.field private mConfig:Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;

.field private mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

.field private mDetailsSource:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;

.field mEmptyAlbumToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;

.field private mGetAlbum:Z

.field private mGetContent:Z

.field private mGetMultiContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLoadingBits:I

.field private mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mMenuListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mNeedUpdateSelection:Z

.field private mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

.field private final mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

.field private mSelectedAction:I

.field protected mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

.field private mShareToOthersMore:Z

.field private mShowClusterMenu:Z

.field private mShowDetails:Z

.field private mShowedEmptyToastForSelf:Z

.field private mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

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

.field private mUpdateReceiver:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;

.field private mVibrator:Landroid/os/Vibrator;

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;-><init>()V

    .line 115
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 144
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    .line 175
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 177
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 179
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    .line 183
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    .line 186
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mNeedUpdateSelection:Z

    .line 195
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 356
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 1142
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;

    .line 1208
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;

    .line 1280
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionBarOnClickListener:Landroid/view/View$OnClickListener;

    .line 1314
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShareToOthersMore:Z

    .line 1315
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$13;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$13;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mMenuListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private InitReceiver()V
    .locals 3

    .prologue
    .line 1211
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;

    .line 1212
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1213
    .local v0, "intFilter":Landroid/content/IntentFilter;
    const-string v1, "Cloud init login state action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1214
    const-string v1, "Cloud init count photo action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1215
    const-string v1, "Cloud resume download action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1216
    const-string v1, "Cloud finished download action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1217
    const-string v1, "Cloud update download action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1218
    const-string v1, "Cloud pause download action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1219
    const-string v1, "Cloud stop download action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1220
    const-string v1, "Cloud resume upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1221
    const-string v1, "Cloud finished upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1222
    const-string v1, "Cloud update upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1223
    const-string v1, "Cloud pause upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1224
    const-string v1, "Cloud stop upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1225
    const-string v1, "Cloud refresh ui action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1226
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1227
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/EyePosition;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetContent:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mY:F

    return v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mZ:F

    return v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->pickAlbum(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$1902(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionView:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mNeedUpdateSelection:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mNeedUpdateSelection:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShareToOthersMore:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->onMenuItemSelected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .prologue
    .line 89
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mX:F

    return v0
.end method

.method private static albumShouldOpenInFilmstrip(Lcom/lenovo/scg/gallery3d/data/MediaSet;)Z
    .locals 5
    .param p0, "album"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 350
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 351
    .local v0, "itemCount":I
    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v3, v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 353
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    return v2

    .line 351
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_1
    move v2, v3

    .line 353
    goto :goto_1
.end method

.method private cleanupCameraButton()V
    .locals 3

    .prologue
    .line 599
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    if-nez v1, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f100646

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 601
    .local v0, "galleryRoot":Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 602
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 603
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    goto :goto_0
.end method

.method private clearLoadingBit(I)V
    .locals 4
    .param p1, "loadingBit"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 617
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 618
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 624
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 629
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    instance-of v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setEmptyViewVisible(Z)V

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    instance-of v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setEmptyViewVisible(Z)V

    goto :goto_0

    .line 653
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    instance-of v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_3

    .line 654
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setEmptyViewVisible(Z)V

    .line 660
    :cond_3
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    if-eqz v0, :cond_0

    .line 661
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z

    .line 662
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->hideEmptyAlbumToast()V

    .line 663
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->hideCameraButton()V

    goto :goto_0
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 964
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    .line 965
    .local v1, "count":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->getClusterTypeAction()I

    move-result v0

    .line 966
    .local v0, "action":I
    if-ne v0, v5, :cond_0

    const v3, 0x7f110003

    .line 967
    .local v3, "string":I
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 968
    .local v2, "format":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 966
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
    .line 277
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 278
    .local v0, "offset":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v4, v5, v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getBoundsOf(Lcom/lenovo/scg/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 279
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v4, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 280
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getScrollX()I

    move-result v2

    .line 281
    .local v2, "scrollX":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getScrollY()I

    move-result v3

    .line 282
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

    .line 283
    const/4 v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aput v5, p2, v4

    .line 284
    return-void
.end method

.method private hideCameraButton()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    .line 1013
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->hide()V

    .line 1014
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 1015
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 1016
    return-void
.end method

.method private hideEmptyAlbumToast()V
    .locals 2

    .prologue
    .line 373
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 375
    .local v0, "toast":Landroid/widget/Toast;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 377
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 767
    const-string/jumbo v1, "media-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, "mediaPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 769
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    .line 770
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/16 v4, 0x100

    invoke-direct {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .line 771
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyLoadingListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->setLoadingListener(Lcom/lenovo/scg/gallery3d/app/LoadingListener;)V

    .line 772
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setModel(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)V

    .line 773
    return-void
.end method

.method private initializeViews()V
    .locals 7

    .prologue
    .line 776
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryContext;Z)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .line 777
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 779
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->get(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;

    move-result-object v6

    .line 782
    .local v6, "config":Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    instance-of v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->albumsetSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getBottomMenuBarHeight()I

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;->bottomMenuBarHeight:I

    .line 787
    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, v6, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->albumsetSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .line 788
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    iget-object v4, v6, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v5, v6, Lcom/lenovo/scg/gallery3d/app/Config$AlbumSetPage;->placeholderColor:I

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    .line 789
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->setSlotRenderer(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;)V

    .line 790
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$7;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$7;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->setListener(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;)V

    .line 820
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    .line 821
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$8;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$8;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 828
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 829
    return-void
.end method

.method private onDown(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 433
    return-void
.end method

.method private onMenuItemSelected(Ljava/lang/String;)Z
    .locals 7
    .param p1, "menuItem"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1331
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 1333
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0663

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1334
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 1335
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1368
    :goto_0
    return v3

    .line 1337
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f065b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1338
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 1339
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    goto :goto_0

    .line 1341
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f066a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1342
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1343
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v4, :cond_2

    .line 1344
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->hideDetails()V

    goto :goto_0

    .line 1346
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->showDetails()V

    goto :goto_0

    .line 1349
    :cond_3
    const v5, 0x7f0f0688

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1352
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f066d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1353
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 1355
    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f068b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1356
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1357
    .local v1, "data":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    .line 1358
    .local v2, "mediaPath":Ljava/lang/String;
    const-string/jumbo v4, "media-path"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    invoke-virtual {v4, v5, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1361
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

    .line 1362
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->requestSync(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1364
    :cond_7
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f06c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1365
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/scg/gallery3d/settings/GallerySettings;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    .line 1368
    goto/16 :goto_0
.end method

.method private onUp(Z)V
    .locals 2
    .param p1, "followedByLongPress"    # Z

    .prologue
    .line 465
    if-eqz p1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setPressedUp()V

    goto :goto_0
.end method

.method private pickAlbum(I)V
    .locals 11
    .param p1, "slotIndex"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 380
    iget-boolean v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-nez v9, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v9, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v6

    .line 383
    .local v6, "targetSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v6, :cond_0

    .line 384
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 385
    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->showEmptyAlbumToast(I)V

    goto :goto_0

    .line 388
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->hideEmptyAlbumToast()V

    .line 390
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, "mediaPath":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 393
    .local v2, "data":Landroid/os/Bundle;
    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 394
    .local v1, "center":[I
    invoke-direct {p0, p1, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->getSlotCenter(I[I)V

    .line 395
    const-string/jumbo v9, "set-center"

    invoke-virtual {v2, v9, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 396
    iget-boolean v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 397
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 398
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

    .line 399
    .local v5, "result":Landroid/content/Intent;
    const/4 v7, -0x1

    invoke-virtual {v0, v7, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 400
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 401
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v5    # "result":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v9

    if-lez v9, :cond_4

    .line 402
    const-string/jumbo v7, "media-path"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v7

    const-class v9, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v7, v9, v8, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 418
    :cond_4
    iget-boolean v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    if-eqz v9, :cond_5

    .line 419
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->hideActionBar()V

    .line 422
    :cond_5
    const-string/jumbo v9, "media-path"

    invoke-virtual {v2, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v9

    const-class v10, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v3

    .line 426
    .local v3, "inAlbum":Z
    const-string v9, "cluster-menu"

    if-nez v3, :cond_6

    move v7, v8

    :cond_6
    invoke-virtual {v2, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 427
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v7

    const-class v9, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v7, v9, v8, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private setLoadingBit(I)V
    .locals 1
    .param p1, "loadingBit"    # I

    .prologue
    .line 669
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mLoadingBits:I

    .line 670
    return-void
.end method

.method private setupCameraButton()Z
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v2, 0x0

    .line 578
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 595
    :cond_0
    :goto_0
    return v2

    .line 579
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f100646

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 580
    .local v0, "galleryRoot":Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 582
    new-instance v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    .line 583
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const v4, 0x7f0f04cd

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 584
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const v4, 0x7f0205df

    invoke-virtual {v3, v2, v4, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 585
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    new-instance v3, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$6;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$6;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 593
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 594
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showCameraButton()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->setupCameraButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mCameraButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 1019
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    .line 1020
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 1022
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mDetailsSource:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    .line 1024
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$9;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->show()V

    .line 1033
    return-void
.end method

.method private showEmptyAlbumToast(I)V
    .locals 3
    .param p1, "toastLength"    # I

    .prologue
    .line 360
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 362
    .local v0, "toast":Landroid/widget/Toast;
    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 370
    :goto_0
    return-void

    .line 367
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0f0689

    invoke-static {v1, v2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 368
    .restart local v0    # "toast":Landroid/widget/Toast;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 369
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public doCluster(I)V
    .locals 5
    .param p1, "clusterType"    # I

    .prologue
    .line 485
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "basePath":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/FilterUtils;->switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "newPath":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 488
    .local v1, "data":Landroid/os/Bundle;
    const-string/jumbo v3, "media-path"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string/jumbo v3, "selected-cluster"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 493
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 495
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    invoke-virtual {v3, p0, v4, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchStateNotDestory(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 501
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v3, p0, v4, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

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
    .line 758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionBarOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mMenuListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    return-object v0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 192
    const v0, 0x7f0d0013

    return v0
.end method

.method protected inSelectAllMode()Z
    .locals 1

    .prologue
    .line 1377
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->inSelectAllMode()Z

    .line 1378
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    return v0
.end method

.method public isGetAlbum()Z
    .locals 1

    .prologue
    .line 1132
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    return v0
.end method

.method public isGetContent()Z
    .locals 1

    .prologue
    .line 1125
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetContent:Z

    return v0
.end method

.method public isGetMultiContent()Z
    .locals 1

    .prologue
    .line 1138
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShareToOthersMore:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->dismissMoreShareDialog()V

    .line 262
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_1

    .line 263
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->hideDetails()V

    .line 274
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 268
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->hideActionBar()V

    .line 272
    :cond_3
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onCloudSingleTapUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 437
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 439
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->remindMobile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkMobileDataConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->MOBILE:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    invoke-direct {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    .line 442
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$2;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$2;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 448
    :cond_1
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->remindWifi()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkWifiConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->WIFI:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    invoke-direct {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    .line 450
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$3;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$3;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 457
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 460
    :cond_3
    const v1, 0x7f0f023a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "restoreState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 505
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 506
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->initializeViews()V

    .line 507
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->initializeData(Landroid/os/Bundle;)V

    .line 508
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 509
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "Cloud send create download action"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 510
    new-instance v1, Landroid/content/Intent;

    const-string v4, "Cloud send create upload action"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 511
    const-string v1, "get-multi-photo"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    .line 512
    const-string v1, "get-content"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetContent:Z

    .line 513
    const-string v1, "get-album"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    .line 515
    const-string v1, "action-view"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionView:Z

    .line 517
    const-string/jumbo v1, "set-title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    .line 518
    const-string/jumbo v1, "set-subtitle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSubtitle:Ljava/lang/String;

    .line 519
    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mVibrator:Landroid/os/Vibrator;

    .line 520
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/EyePosition;

    invoke-direct {v1, v0, p0}, Lcom/lenovo/scg/gallery3d/app/EyePosition;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;

    .line 521
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mDetailsSource:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyDetailsSource;

    .line 522
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    .line 523
    const-string/jumbo v1, "selected-cluster"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    .line 526
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getParentView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    .line 527
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->initActionBar()V

    .line 528
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->hideActionBar()V

    .line 529
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    new-instance v4, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$4;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$4;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->dealwithEvent(Landroid/view/View$OnClickListener;)V

    .line 538
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$5;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$5;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    .line 553
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->InitReceiver()V

    .line 554
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setGetMultiContent(Z)V

    .line 555
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isCloudSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->showEntry(Z)V

    .line 557
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "Cloud send create download action"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 558
    return-void

    :cond_0
    move v1, v3

    .line 555
    goto :goto_0
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 841
    .local v0, "activity":Landroid/app/Activity;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v10

    const-class v11, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v4

    .line 842
    .local v4, "inAlbum":Z
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    .line 844
    .local v5, "inflater":Landroid/view/MenuInflater;
    iget-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-eqz v10, :cond_1

    .line 845
    const v10, 0x7f120012

    invoke-virtual {v5, v10, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 846
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mData:Landroid/os/Bundle;

    const-string/jumbo v11, "type-bits"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 847
    .local v8, "typeBits":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getSelectionModePrompt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 880
    .end local v8    # "typeBits":I
    :cond_0
    :goto_0
    const/4 v10, 0x1

    return v10

    .line 848
    :cond_1
    iget-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v10, :cond_2

    .line 849
    const v10, 0x7f120012

    invoke-virtual {v5, v10, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 850
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    const v11, 0x7f0f065b

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setTitle(I)V

    goto :goto_0

    .line 852
    :cond_2
    const v10, 0x7f120001

    invoke-virtual {v5, v10, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 853
    iget-boolean v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    .line 854
    .local v9, "wasShowingClusterMenu":Z
    if-nez v4, :cond_4

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    .line 855
    if-nez v4, :cond_5

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->getClusterTypeAction()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const/4 v6, 0x1

    .line 856
    .local v6, "selectAlbums":Z
    :goto_2
    const v10, 0x7f100aed

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 857
    .local v7, "selectItem":Landroid/view/MenuItem;
    if-eqz v6, :cond_6

    const v10, 0x7f0f065b

    :goto_3
    invoke-virtual {v0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 859
    const v10, 0x7f100aeb

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 860
    .local v1, "cameraItem":Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 862
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/lenovo/scg/gallery3d/app/FilterUtils;->setupMenuItems(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;Lcom/lenovo/scg/gallery3d/data/Path;Z)V

    .line 864
    const v10, 0x7f0f06c8

    invoke-static {v0, v10}, Lcom/lenovo/scg/gallery3d/util/HelpUtils;->getHelpIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    .line 866
    .local v2, "helpIntent":Landroid/content/Intent;
    const v10, 0x7f100af2

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 867
    .local v3, "helpItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_7

    const/4 v10, 0x1

    :goto_4
    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 868
    if-eqz v2, :cond_3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 870
    :cond_3
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    .line 871
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setSubtitle(Ljava/lang/String;)V

    .line 872
    iget-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    if-eq v10, v9, :cond_0

    .line 873
    iget-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    if-eqz v10, :cond_8

    .line 874
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    iget v11, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    invoke-virtual {v10, v11, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->enableClusterMenu(ILcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    goto/16 :goto_0

    .line 854
    .end local v1    # "cameraItem":Landroid/view/MenuItem;
    .end local v2    # "helpIntent":Landroid/content/Intent;
    .end local v3    # "helpItem":Landroid/view/MenuItem;
    .end local v6    # "selectAlbums":Z
    .end local v7    # "selectItem":Landroid/view/MenuItem;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 855
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 857
    .restart local v6    # "selectAlbums":Z
    .restart local v7    # "selectItem":Landroid/view/MenuItem;
    :cond_6
    const v10, 0x7f0f065c

    goto :goto_3

    .line 867
    .restart local v1    # "cameraItem":Landroid/view/MenuItem;
    .restart local v2    # "helpIntent":Landroid/content/Intent;
    .restart local v3    # "helpItem":Landroid/view/MenuItem;
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 876
    :cond_8
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->disableClusterMenu(Z)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;

    .line 567
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->hideActionBar()V

    .line 569
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->removeActionBarView()V

    .line 572
    :cond_1
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onDestroy()V

    .line 573
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->cleanupCameraButton()V

    .line 575
    return-void
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->lockRendering()V

    .line 250
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mX:F

    .line 251
    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mY:F

    .line 252
    iput p3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mZ:F

    .line 253
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->unlockRendering()V

    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->invalidate()V

    .line 255
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 885
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 886
    .local v0, "activity":Landroid/app/Activity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    move v3, v4

    .line 926
    :goto_0
    return v3

    .line 888
    :sswitch_0
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 889
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 892
    :sswitch_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 893
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    goto :goto_0

    .line 896
    :sswitch_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 897
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v4, :cond_0

    .line 898
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->hideDetails()V

    goto :goto_0

    .line 900
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->showDetails()V

    goto :goto_0

    .line 903
    :cond_1
    const v5, 0x7f0f0688

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 907
    :sswitch_3
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 911
    :sswitch_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 912
    .local v1, "data":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    .line 913
    .local v2, "mediaPath":Ljava/lang/String;
    const-string/jumbo v4, "media-path"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    invoke-virtual {v4, v5, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 918
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "mediaPath":Ljava/lang/String;
    :sswitch_5
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->requestSync(Landroid/content/Context;)V

    goto :goto_0

    .line 922
    :sswitch_6
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/scg/gallery3d/settings/GallerySettings;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 886
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
    .line 708
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onLeaveSelectionMode()V

    .line 709
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 712
    :cond_0
    return-void
.end method

.method public onLongTap(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 474
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetAlbum:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getSelectedState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v0

    .line 477
    .local v0, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 479
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 480
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 674
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onPause()V

    .line 675
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 676
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->pause()V

    .line 677
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->pause()V

    .line 678
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->pause()V

    .line 679
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/EyePosition;->pause()V

    .line 680
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->pause()V

    .line 682
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    if-eqz v0, :cond_0

    .line 683
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->hideDetails()V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->disableClusterMenu(Z)V

    .line 690
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 693
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 698
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->saveSelection()V

    .line 699
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mNeedUpdateSelection:Z

    .line 702
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 718
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onResume()V

    .line 719
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 720
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->setContentPane(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 723
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    .line 726
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mNeedUpdateSelection:Z

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->resume()V

    .line 733
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->resume()V

    .line 734
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/EyePosition;->resume()V

    .line 735
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->resume()V

    .line 740
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShowClusterMenu:Z

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectedAction:I

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->enableClusterMenu(ILcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;)V

    .line 743
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mInitialSynced:Z

    if-nez v0, :cond_2

    .line 744
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V

    .line 745
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->requestSync(Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 749
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    if-eqz v0, :cond_3

    .line 750
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->showActionBar()V

    .line 753
    :cond_3
    return-void
.end method

.method public onSelectionChange(Lcom/lenovo/scg/gallery3d/data/Path;Z)V
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "selected"    # Z

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSupportedMenuOperation()V

    .line 1009
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 974
    packed-switch p1, :pswitch_data_0

    .line 1003
    :goto_0
    return-void

    .line 980
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showActionBar(Z)V

    .line 981
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 989
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showActionBar(Z)V

    .line 990
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 997
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSupportedMenuOperation()V

    .line 999
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 974
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSingleTapUp(I)V
    .locals 14
    .param p1, "slotIndex"    # I

    .prologue
    .line 287
    iget-boolean v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mIsActive:Z

    if-nez v9, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getSelectedState()Z

    move-result v9

    if-eqz v9, :cond_7

    sget-boolean v9, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mLaunchGalleryFromExternal:Z

    if-nez v9, :cond_7

    .line 290
    const-string v9, "AlbumSetPage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "single tap, slotIndex:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v9, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v8

    .line 293
    .local v8, "targetSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v8, :cond_0

    .line 295
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "folderName":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "folderPath":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getSelectedMap()Ljava/util/Map;

    move-result-object v7

    .line 299
    .local v7, "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 301
    .local v5, "isFound":Z
    sget-object v2, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultFilterDirectoryMap:Ljava/util/Map;

    .line 302
    .local v2, "defaultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 303
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 304
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 305
    .local v1, "bucketId":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 306
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    .line 307
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :goto_2
    const/4 v5, 0x1

    goto :goto_1

    .line 309
    :cond_3
    invoke-interface {v7, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 315
    .end local v1    # "bucketId":Ljava/lang/String;
    :cond_4
    if-nez v5, :cond_5

    .line 316
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6

    .line 317
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_5
    :goto_3
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    goto/16 :goto_0

    .line 319
    :cond_6
    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 328
    .end local v2    # "defaultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "folderName":Ljava/lang/String;
    .end local v4    # "folderPath":Ljava/lang/String;
    .end local v5    # "isFound":Z
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "targetSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_7
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 329
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v9, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v8

    .line 330
    .restart local v8    # "targetSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v8, :cond_0

    .line 331
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 333
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    goto/16 :goto_0

    .line 338
    .end local v8    # "targetSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_8
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 342
    .local v0, "activity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v9, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    .line 343
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setPressedUp()V

    .line 345
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, p1, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 934
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 935
    .local v0, "activity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetMultiContent:Z

    if-eq v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-eq v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionView:Z

    if-eqz v1, :cond_2

    .line 936
    :cond_0
    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showMainMenu(Z)V

    .line 942
    :goto_0
    const v1, 0x7f10084b

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->updateMenuItem(I)V

    .line 945
    if-eqz p3, :cond_1

    const-string v1, "empty-album"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 946
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->showEmptyAlbumToast(I)V

    .line 948
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 961
    :goto_1
    return-void

    .line 938
    :cond_2
    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showMainMenu(Z)V

    goto :goto_0

    .line 950
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->startRisingAnimation()V

    goto :goto_1

    .line 956
    :pswitch_1
    const-string v1, "AlbumSetPage"

    const-string v2, "REQUEST_REFRESH_VIEW"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    goto :goto_1

    .line 948
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
    .line 1037
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1038
    const-string v0, "AlbumSetPage"

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

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$10;

    invoke-direct {v1, p0, p2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$10;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1059
    return-void
.end method
