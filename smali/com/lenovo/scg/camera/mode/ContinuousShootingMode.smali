.class public Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "ContinuousShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;,
        Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;,
        Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;
    }
.end annotation


# static fields
.field private static final MAX_SHOT_COUNT:I = 0x65

.field private static final MSG_END_SHOT:I = 0x3

.field private static final MSG_FINISH_NOTIFY:I = 0x2

.field private static final MSG_SHOT_FINISH:I = 0x1

.field private static final MSG_UPDATE_COUNT:I

.field private static final NUMBER_ID:[I

.field private static final TIME_INTERVAL:I

.field private static final mIsThreadPool:Z


# instance fields
.field private cLock:Ljava/util/concurrent/locks/Lock;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mImgCentile:Landroid/widget/ImageView;

.field private mImgOnes:Landroid/widget/ImageView;

.field private mImgTenths:Landroid/widget/ImageView;

.field private mIsBreak:Z

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private final mSaveLock:[B

.field private mSaveRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveThread:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;

.field private mShotCountNow:I

.field private mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

.field private mUnsavedDataSize:J

.field private mVgShotFigure:Landroid/view/ViewGroup;

.field private mVgStartHint:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->NUMBER_ID:[I

    return-void

    :array_0
    .array-data 4
        0x7f02077b
        0x7f02077c
        0x7f02077d
        0x7f02077e
        0x7f02077f
        0x7f020780
        0x7f020781
        0x7f020782
        0x7f020783
        0x7f020784
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 64
    iput v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    .line 66
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mIsBreak:Z

    .line 68
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveRequestList:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 86
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    .line 88
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 90
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveThread:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;

    .line 410
    new-instance v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;-><init>(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mHandler:Landroid/os/Handler;

    .line 513
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveLock:[B

    .line 832
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mUnsavedDataSize:J

    .line 834
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->cLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;)Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveThread:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;

    return-object p1
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;Lcom/lenovo/scg/camera/ContinuousShotTool;)Lcom/lenovo/scg/camera/ContinuousShotTool;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/ContinuousShotTool;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->addRequestList(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;J)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;
    .param p1, "x1"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->recycleUnsavedSpace(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->shutdownExecutorService()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->saveFile()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    .prologue
    .line 53
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveRequestList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)[B
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveLock:[B

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mIsBreak:Z

    return v0
.end method

.method private addRequestList(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;)V
    .locals 2
    .param p1, "object"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;

    .prologue
    .line 744
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 750
    return-void

    .line 748
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private addUnsavedSpace(J)V
    .locals 7
    .param p1, "length"    # J

    .prologue
    .line 837
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->cLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 839
    :try_start_0
    iget-wide v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mUnsavedDataSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mUnsavedDataSize:J

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUnsavedDataSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mUnsavedDataSize:J

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->cLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 844
    return-void

    .line 842
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->cLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private copyContentValues([Landroid/content/ContentValues;)[Landroid/content/ContentValues;
    .locals 4
    .param p1, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 357
    array-length v2, p1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 358
    const/4 v1, 0x0

    .line 364
    :cond_0
    return-object v1

    .line 360
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [Landroid/content/ContentValues;

    .line 361
    .local v1, "result":[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 362
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createView()V
    .locals 10

    .prologue
    const v9, 0x7f100297

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 369
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v4

    .line 371
    .local v4, "vg":Landroid/view/ViewGroup;
    const v5, 0x7f100294

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 372
    .local v3, "vChild":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 373
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 375
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 376
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040060

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    .line 377
    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 378
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 379
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    const v5, 0x7f10029b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mImgOnes:Landroid/widget/ImageView;

    .line 381
    const v5, 0x7f10029a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mImgTenths:Landroid/widget/ImageView;

    .line 382
    const v5, 0x7f100299

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mImgCentile:Landroid/widget/ImageView;

    .line 383
    const v5, 0x7f100295

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mVgStartHint:Landroid/view/ViewGroup;

    .line 384
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mVgShotFigure:Landroid/view/ViewGroup;

    .line 386
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 387
    .local v2, "rotateLayout":Lcom/lenovo/scg/camera/ui/RotateLayout;
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;->getOrientation()I

    move-result v5

    invoke-virtual {v2, v5, v8}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 388
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mVgStartHint:Landroid/view/ViewGroup;

    check-cast v5, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;->getOrientation()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 390
    return-void
.end method

.method private destroyView()V
    .locals 3

    .prologue
    .line 394
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 395
    .local v1, "vg":Landroid/view/ViewGroup;
    const v2, 0x7f100294

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, "vChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 397
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 398
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 400
    :cond_0
    return-void
.end method

.method private recycleUnsavedSpace(J)V
    .locals 3
    .param p1, "length"    # J

    .prologue
    .line 847
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->cLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 849
    :try_start_0
    iget-wide v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mUnsavedDataSize:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mUnsavedDataSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->cLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 853
    return-void

    .line 851
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->cLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private declared-synchronized saveFile()V
    .locals 19

    .prologue
    .line 754
    monitor-enter p0

    :try_start_0
    const-string/jumbo v15, "start save file "

    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 756
    const/4 v12, 0x0

    .line 757
    .local v12, "uri":Landroid/net/Uri;
    const/4 v13, 0x0

    .line 759
    .local v13, "value":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v14, v15, [Landroid/content/ContentValues;

    .line 760
    .local v14, "values":[Landroid/content/ContentValues;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v15, v14

    if-ge v4, v15, :cond_0

    .line 761
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveRequestList:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;

    .line 762
    .local v9, "request":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;
    new-instance v13, Landroid/content/ContentValues;

    .end local v13    # "value":Landroid/content/ContentValues;
    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 764
    .restart local v13    # "value":Landroid/content/ContentValues;
    const-string/jumbo v15, "title"

    iget-object v0, v9, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->title:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v15, "_display_name"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v9, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".jpg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string/jumbo v15, "mime_type"

    const-string v16, "image/jpeg"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v15, "datetaken"

    iget-wide v0, v9, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->lTimeTaken:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 768
    const-string/jumbo v15, "width"

    iget v0, v9, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->width:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 769
    const-string v15, "height"

    iget v0, v9, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->height:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    const-string/jumbo v15, "picasa_id"

    invoke-static {}, Lcom/lenovo/scg/camera/Storage;->getCurrentBucketId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v15, "bucket_id"

    invoke-static {}, Lcom/lenovo/scg/camera/Storage;->getCurrentBucketId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v15, "_data"

    iget-object v0, v9, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->title:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string/jumbo v15, "orientation"

    iget v0, v9, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->orientation:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    aput-object v13, v14, v4

    .line 760
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 778
    .end local v9    # "request":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;
    :cond_0
    const-string/jumbo v15, "values count=%d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    array-length v0, v14

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    if-eqz v13, :cond_2

    .line 781
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->copyContentValues([Landroid/content/ContentValues;)[Landroid/content/ContentValues;

    move-result-object v10

    .line 782
    .local v10, "result":[Landroid/content/ContentValues;
    if-eqz v10, :cond_1

    .line 783
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v5

    .line 784
    .local v5, "nCount":I
    const-string v15, "insert file count=%d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 786
    .end local v5    # "nCount":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 789
    .end local v10    # "result":[Landroid/content/ContentValues;
    :cond_2
    if-eqz v12, :cond_3

    .line 790
    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 791
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-static {v15, v12}, Lcom/lenovo/scg/camera/Thumbnail;->needSpectialHandle(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 792
    .local v8, "pathName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 793
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_4

    .line 794
    invoke-static {v8}, Lcom/lenovo/scg/camera/Thumbnail;->getBitmapFromeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 799
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    invoke-interface {v15}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15}, Lcom/lenovo/scg/camera/MaskBitmapHolder;->getInstance(Landroid/content/res/Resources;)Lcom/lenovo/scg/camera/MaskBitmapHolder;

    move-result-object v3

    .line 800
    .local v3, "holder":Lcom/lenovo/scg/camera/MaskBitmapHolder;
    const-string/jumbo v15, "orientation"

    invoke-virtual {v13, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v12, v2, v15, v3}, Lcom/lenovo/scg/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;ILcom/lenovo/scg/camera/MaskBitmapHolder;)Lcom/lenovo/scg/camera/Thumbnail;

    move-result-object v11

    .line 802
    .local v11, "thumbnail":Lcom/lenovo/scg/camera/Thumbnail;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    invoke-interface {v15, v11}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;->saveThumbnailToFile(Lcom/lenovo/scg/camera/Thumbnail;)V

    .line 805
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "holder":Lcom/lenovo/scg/camera/MaskBitmapHolder;
    .end local v6    # "id":J
    .end local v8    # "pathName":Ljava/lang/String;
    .end local v11    # "thumbnail":Lcom/lenovo/scg/camera/Thumbnail;
    :cond_3
    const-string v15, "end save file "

    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    monitor-exit p0

    return-void

    .line 796
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "id":J
    .restart local v8    # "pathName":Ljava/lang/String;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v6, v7, v0, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 754
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "i":I
    .end local v6    # "id":J
    .end local v8    # "pathName":Ljava/lang/String;
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "value":Landroid/content/ContentValues;
    .end local v14    # "values":[Landroid/content/ContentValues;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15
.end method

.method private shutdownExecutorService()V
    .locals 4

    .prologue
    .line 476
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveThread:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;

    if-eqz v2, :cond_1

    .line 477
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveThread:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->stopSave()V

    .line 478
    const-wide/16 v0, 0x0

    .line 479
    .local v0, "lWaitCnt":J
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveThread:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;

    if-eqz v2, :cond_1

    .line 481
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 487
    const-wide/16 v2, 0x28

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 492
    .end local v0    # "lWaitCnt":J
    :cond_1
    return-void

    .line 482
    .restart local v0    # "lWaitCnt":J
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 303
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 97
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 99
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v2, Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    .line 100
    new-array v1, v4, [I

    const v2, 0x7f10015f

    aput v2, v1, v6

    .line 101
    .local v1, "exclude":[I
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    invoke-interface {v2, v1}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;->clearUIScreen([I)V

    .line 103
    new-instance v2, Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;-><init>(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 104
    new-instance v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/data/ContinuousShotPara;-><init>()V

    .line 105
    .local v0, "csp":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    const/16 v2, 0x65

    iput v2, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCount:I

    .line 106
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mDelayTime:J

    .line 107
    sget-object v2, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;->FORMAT_JEPG:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    iput-object v2, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->format:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    .line 108
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mHandler:Landroid/os/Handler;

    iput-object v2, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mHandlerOnEnd:Landroid/os/Handler;

    .line 109
    const/4 v2, 0x3

    iput v2, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->msgOnEnd:I

    .line 110
    sget-object v2, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_FAST:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    iput-object v2, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->shotMode:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    .line 111
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->init(Lcom/lenovo/scg/camera/data/ContinuousShotPara;)V

    .line 113
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getSupportZSD()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mIsSupportZSD:Z

    .line 114
    const-string v2, "continuous shot mode, ZSD=%s"

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mIsSupportZSD:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveRequestList:Ljava/util/ArrayList;

    .line 117
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->createView()V

    .line 122
    new-instance v2, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;-><init>(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveThread:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;

    .line 125
    return-void
.end method

.method protected exit()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 132
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->stopTakePicture()V

    .line 134
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->uninit()Z

    .line 136
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mIsBreak:Z

    .line 138
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->shutdownExecutorService()V

    .line 139
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearCurrentMode()V

    .line 140
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->destroyView()V

    .line 142
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    if-nez v1, :cond_2

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoController;

    .line 144
    .local v0, "pc":Lcom/lenovo/scg/camera/PhotoController;
    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->getCameraState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public isTakePictureFinish()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mIsBreak:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 315
    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mVgShotFigure:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mVgShotFigure:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->restoreFlash()V

    .line 279
    :cond_1
    return-void
.end method

.method public declared-synchronized onPictureTaken([BLandroid/location/Location;)Z
    .locals 6
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v5, 0x1

    .line 196
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_1

    .line 244
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 199
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mIsBreak:Z

    if-ne v1, v5, :cond_3

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsBreak=true, mShotCountNow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 201
    iget v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    if-lez v1, :cond_2

    .line 202
    const-string v1, "continuous shot onPictureTaken will return"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 205
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "will go on,mShotCountNow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 208
    :cond_3
    array-length v1, p1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->addUnsavedSpace(J)V

    .line 213
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveThread:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    invoke-virtual {v1, p1, v2}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->addData([BI)V

    .line 216
    iget v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    if-gtz v1, :cond_4

    .line 217
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveThread:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->start()V

    .line 220
    :cond_4
    iget v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    .line 221
    const-string v1, "ContinuousShootingMode . onPictureTaken count=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 224
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 225
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    iget v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_5

    .line 228
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->showCountUI()V

    .line 231
    :cond_5
    iget v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    const/16 v2, 0x65

    if-lt v1, v2, :cond_6

    .line 232
    const-string v1, "ContinuousShootingMode . onPictureTaken will stop continuous shot"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mIsBreak:Z

    .line 234
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 238
    :cond_6
    iget v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    if-ne v1, v5, :cond_0

    .line 239
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mVgStartHint:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 240
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mVgStartHint:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mVgShotFigure:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public onPictureTakenTimeOut()V
    .locals 4

    .prologue
    .line 858
    const-string v0, "ContinuousShootingMode"

    const-string/jumbo v1, "onPictureTakenTimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 860
    return-void
.end method

.method public onPowerOff()V
    .locals 2

    .prologue
    .line 335
    const-string v0, "enter onPowerOff"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mVgShotFigure:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mVgShotFigure:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->restoreFlash()V

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->stopShot()V

    .line 345
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->shutdownExecutorService()V

    .line 346
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->saveFile()V

    .line 348
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->uninit()Z

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 352
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearCurrentMode()V

    .line 353
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->destroyView()V

    .line 354
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 285
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public setIsBreak(Z)V
    .locals 1
    .param p1, "bIsBreak"    # Z

    .prologue
    .line 329
    const-string v0, "enter setIsBreak"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 330
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mIsBreak:Z

    .line 331
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->setOrientation(I)V

    .line 179
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 180
    .local v1, "vg":Landroid/view/ViewGroup;
    const v2, 0x7f100297

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 181
    .local v0, "rotateLayout":Lcom/lenovo/scg/camera/ui/RotateLayout;
    if-eqz v0, :cond_0

    .line 182
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 184
    :cond_0
    return-void
.end method

.method public showCountUI()V
    .locals 7

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "nCentile":I
    const/4 v2, 0x0

    .line 251
    .local v2, "nTenths":I
    const/4 v1, 0x0

    .line 253
    .local v1, "nOnes":I
    iget v3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    div-int/lit8 v0, v3, 0x64

    .line 254
    iget v3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    div-int/lit8 v3, v3, 0xa

    rem-int/lit8 v2, v3, 0xa

    .line 255
    iget v3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    rem-int/lit8 v1, v3, 0xa

    .line 257
    const-string v3, "mShotCountNow=%d count=%d%d%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mImgCentile:Landroid/widget/ImageView;

    sget-object v4, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->NUMBER_ID:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mImgTenths:Landroid/widget/ImageView;

    sget-object v4, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->NUMBER_ID:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mImgOnes:Landroid/widget/ImageView;

    sget-object v4, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->NUMBER_ID:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    return-void
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 309
    return-void
.end method

.method public stopShot()V
    .locals 1

    .prologue
    .line 320
    const-string v0, "enter ContinuousShootingMode stopShot"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mIsBreak:Z

    .line 322
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->stopTakePicture()V

    .line 326
    :cond_0
    return-void
.end method
