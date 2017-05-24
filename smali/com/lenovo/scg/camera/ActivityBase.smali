.class public abstract Lcom/lenovo/scg/camera/ActivityBase;
.super Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
.source "ActivityBase.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/LayoutChangeNotifier$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;,
        Lcom/lenovo/scg/camera/ActivityBase$HideCameraAppView;,
        Lcom/lenovo/scg/camera/ActivityBase$CameraOpenThread;,
        Lcom/lenovo/scg/camera/ActivityBase$ScreenOffReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field private static final CAMERA_APP_VIEW_TOGGLE_TIME:I = 0x64

.field private static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field public static final SECURE_CAMERA_EXTRA:Ljava/lang/String; = "secure_camera"

.field private static final TAG:Ljava/lang/String; = "ActivityBase"

.field private static final UPDATE_STORAGE_HINT:I

.field private static sFirstStartAfterScreenOn:Z

.field private static sScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field protected static sSecureAlbumId:I


# instance fields
.field private activityFinishReceiver:Landroid/content/BroadcastReceiver;

.field protected mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

.field protected mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

.field protected mCameraAppView:Landroid/view/View;

.field private mCameraAppViewFadeIn:Landroid/view/animation/Animation;

.field private mCameraAppViewFadeOut:Landroid/view/animation/Animation;

.field protected mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

.field protected mCameraDisabled:Z

.field protected mCameraId:I

.field public mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

.field private final mHandler:Landroid/os/Handler;

.field protected mNumberOfCameras:I

.field protected mOpenCameraFail:Z

.field protected mParameters:Landroid/hardware/Camera$Parameters;

.field protected mPaused:Z

.field protected mPendingSwitchCameraId:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResultCodeForTesting:I

.field private mResultDataForTesting:Landroid/content/Intent;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field protected mSecureCamera:Z

.field protected mShowCameraAppView:Z

.field private mSingleTapArea:Landroid/view/View;

.field private mStorageHint:Lcom/lenovo/scg/camera/OnScreenHint;

.field private mStorageSpace:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/camera/ActivityBase;->sFirstStartAfterScreenOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mShowCameraAppView:Z

    .line 138
    const-wide/32 v0, 0x12c00000

    iput-wide v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mStorageSpace:J

    .line 142
    new-instance v0, Lcom/lenovo/scg/camera/ActivityBase$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ActivityBase$1;-><init>(Lcom/lenovo/scg/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/lenovo/scg/camera/ActivityBase$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ActivityBase$2;-><init>(Lcom/lenovo/scg/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    new-instance v0, Lcom/lenovo/scg/camera/ActivityBase$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ActivityBase$3;-><init>(Lcom/lenovo/scg/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 296
    new-instance v0, Lcom/lenovo/scg/camera/ActivityBase$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ActivityBase$4;-><init>(Lcom/lenovo/scg/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->activityFinishReceiver:Landroid/content/BroadcastReceiver;

    .line 692
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 66
    sput-boolean p0, Lcom/lenovo/scg/camera/ActivityBase;->sFirstStartAfterScreenOn:Z

    return p0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/ActivityBase;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ActivityBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/ActivityBase;->onSingleTapUp(II)Z

    move-result v0

    return v0
.end method

.method public static isFirstStartAfterScreenOn()Z
    .locals 1

    .prologue
    .line 186
    sget-boolean v0, Lcom/lenovo/scg/camera/ActivityBase;->sFirstStartAfterScreenOn:Z

    return v0
.end method

.method public static listContinuousShooting(Z)Ljava/lang/String;
    .locals 12
    .param p0, "getPictures"    # Z

    .prologue
    .line 894
    const-string v8, "ActivityBase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "listContinuousShooting(getPictures:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 896
    .local v6, "start":J
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 898
    .local v1, "buffer":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/lenovo/scg/camera/Storage;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 899
    .local v5, "path":Ljava/io/File;
    new-instance v8, Lcom/lenovo/scg/camera/ContinuosFileFilter;

    invoke-direct {v8}, Lcom/lenovo/scg/camera/ContinuosFileFilter;-><init>()V

    invoke-virtual {v5, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 901
    .local v2, "files":[Ljava/io/File;
    const-string v8, "/local/all/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 902
    invoke-static {}, Lcom/lenovo/scg/camera/Storage;->getCurrentBucketId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 903
    .local v0, "bucketId":I
    sput v0, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    .line 905
    if-eqz p0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_0
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 907
    if-eqz v2, :cond_3

    .line 908
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v8, v2

    if-ge v4, v8, :cond_3

    .line 909
    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 908
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 905
    .end local v4    # "i":I
    :cond_0
    const-string v8, "0"

    goto :goto_0

    .line 912
    .restart local v4    # "i":I
    :cond_1
    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 913
    .local v3, "fs":[Ljava/io/File;
    if-eqz v3, :cond_2

    array-length v8, v3

    if-gtz v8, :cond_2

    .line 914
    const-string v8, "anql"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete empty directory:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v4

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " result:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v4

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 920
    :cond_2
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 921
    const-string v8, "/local/all/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 922
    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 925
    .end local v3    # "fs":[Ljava/io/File;
    .end local v4    # "i":I
    :cond_3
    const-string v8, "ActivityBase"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-string v8, "ActivityBase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "listContinuousShooting spend time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private onSingleTapUp(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 622
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 631
    :goto_0
    return v1

    .line 624
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v4, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-static {v1, v4}, Lcom/lenovo/scg/camera/CameraUtil;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    .line 625
    .local v0, "relativeLocation":[I
    aget v1, v0, v3

    sub-int/2addr p1, v1

    .line 626
    aget v1, v0, v2

    sub-int/2addr p2, v1

    .line 627
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-ltz p2, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 628
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {p0, v1, p1, p2}, Lcom/lenovo/scg/camera/ActivityBase;->onSingleTapUp(Landroid/view/View;II)V

    move v1, v2

    .line 629
    goto :goto_0

    :cond_2
    move v1, v3

    .line 631
    goto :goto_0
.end method

.method public static resetFirstStartAfterScreenOn()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/camera/ActivityBase;->sFirstStartAfterScreenOn:Z

    .line 191
    return-void
.end method


# virtual methods
.method protected addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "isVideo"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 652
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSecureCamera:Z

    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 654
    .local v0, "id":I
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v1, p1, v0}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->addSecureAlbumItem(ZI)V

    .line 656
    .end local v0    # "id":I
    :cond_0
    return-void
.end method

.method public createCameraScreenNail(Z)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 5
    .param p1, "getPictures"    # Z

    .prologue
    .line 452
    const v2, 0x7f1001b5

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    .line 453
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 455
    .local v0, "data":Landroid/os/Bundle;
    if-eqz p1, :cond_3

    .line 456
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSecureCamera:Z

    if-eqz v2, :cond_2

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/secure/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lenovo/scg/camera/ActivityBase;->sSecureAlbumId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "path":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_0

    .line 467
    invoke-static {p1}, Lcom/lenovo/scg/camera/ActivityBase;->listContinuousShooting(Z)Ljava/lang/String;

    move-result-object v1

    .line 470
    :cond_0
    const-string/jumbo v2, "media-set-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string/jumbo v2, "media-item-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string/jumbo v2, "show_when_locked"

    iget-boolean v3, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSecureCamera:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 475
    iget-object v2, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    if-eqz v2, :cond_1

    .line 476
    iget-object v2, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->recycle()V

    .line 478
    :cond_1
    new-instance v2, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;-><init>(Lcom/lenovo/scg/camera/ActivityBase;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    .line 479
    const-string v2, "app-bridge"

    iget-object v3, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 480
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 481
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/FilmstripPage;

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 485
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->getCameraScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 486
    iget-object v2, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    return-object v2

    .line 459
    .end local v1    # "path":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .line 462
    .end local v1    # "path":Ljava/lang/String;
    :cond_3
    const-string v1, "/local/all/0"

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .line 483
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v3

    const-class v4, Lcom/lenovo/scg/gallery3d/app/FilmstripPage;

    invoke-virtual {v2, v3, v4, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mResultCodeForTesting:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    return-object v0
.end method

.method public getStorageSpace()J
    .locals 2

    .prologue
    .line 404
    iget-wide v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mStorageSpace:J

    return-wide v0
.end method

.method public gotoGallery(Z)V
    .locals 2
    .param p1, "isWatchBack"    # Z

    .prologue
    .line 447
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    const/4 v1, 0x1

    # invokes: Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->switchWithCaptureAnimation(IZ)V
    invoke-static {v0, v1, p1}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->access$200(Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;IZ)V

    .line 448
    return-void
.end method

.method public initUtilScreenSize()V
    .locals 2

    .prologue
    .line 305
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 306
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 307
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    .line 308
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    .line 309
    return-void
.end method

.method protected installIntentFilter()V
    .locals 2

    .prologue
    .line 388
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/camera/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    return-void
.end method

.method public isCameraTabInPhotoPage()Z
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->isCameraTabInPhotoPage()Z

    move-result v0

    return v0
.end method

.method public isPanoramaActivity()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public isRequestAudioFocus(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "request"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 276
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method public isSecureCamera()Z
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSecureCamera:Z

    return v0
.end method

.method public notifyScreenNailChanged()V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    # invokes: Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->notifyScreenNailChanged()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->access$500(Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;)V

    .line 643
    return-void
.end method

.method protected onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 649
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 210
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->disableToggleStatusBar()V

    .line 217
    const v3, 0x7f0a0052

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/ActivityBase;->setTheme(I)V

    .line 218
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 219
    sget-boolean v3, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_ACTION_BAR:Z

    if-eqz v3, :cond_1

    .line 220
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/ActivityBase;->requestWindowFeature(I)Z

    .line 226
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 227
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 229
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSecureCamera:Z

    .line 231
    sget v3, Lcom/lenovo/scg/camera/ActivityBase;->sSecureAlbumId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/lenovo/scg/camera/ActivityBase;->sSecureAlbumId:I

    .line 237
    :goto_1
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSecureCamera:Z

    if-eqz v3, :cond_0

    .line 238
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/lenovo/scg/camera/ActivityBase;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/lenovo/scg/camera/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    sget-object v3, Lcom/lenovo/scg/camera/ActivityBase;->sScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    .line 241
    new-instance v3, Lcom/lenovo/scg/camera/ActivityBase$ScreenOffReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/lenovo/scg/camera/ActivityBase$ScreenOffReceiver;-><init>(Lcom/lenovo/scg/camera/ActivityBase$1;)V

    sput-object v3, Lcom/lenovo/scg/camera/ActivityBase;->sScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/ActivityBase;->sScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->sendActivityFinishBroadcast()V

    .line 248
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->registerFinishReceiver()V

    .line 250
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->initUtilScreenSize()V

    .line 252
    return-void

    .line 222
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/ActivityBase;->requestWindowFeature(I)Z

    goto :goto_0

    .line 232
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v3, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 233
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSecureCamera:Z

    goto :goto_1

    .line 235
    :cond_3
    const-string/jumbo v3, "secure_camera"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSecureCamera:Z

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 380
    invoke-static {p0}, Lcom/lenovo/scg/camera/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    .line 381
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSecureCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->activityFinishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 383
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 384
    return-void
.end method

.method protected onFullScreenChanged(Z)V
    .locals 1
    .param p1, "full"    # Z

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mShowCameraAppView:Z

    if-ne v0, p1, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mShowCameraAppView:Z

    .line 587
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->updateCameraAppView()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v2, 0x52

    const/4 v0, 0x1

    .line 341
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_2

    .line 342
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    :cond_1
    :goto_0
    return v0

    .line 344
    :cond_2
    if-ne p1, v2, :cond_3

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v1, :cond_1

    .line 348
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 353
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x1

    .line 356
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 599
    iget-object v3, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    if-nez v3, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    sub-int v2, p4, p2

    .line 602
    .local v2, "width":I
    sub-int v0, p5, p3

    .line 603
    .local v0, "height":I
    sget-boolean v3, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v3, :cond_0

    .line 604
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/lenovo/scg/camera/CameraScreenNail;

    .line 605
    .local v1, "screenNail":Lcom/lenovo/scg/camera/CameraScreenNail;
    invoke-static {p0}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_2

    .line 606
    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 612
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->notifyScreenNailChanged()V

    goto :goto_0

    .line 610
    :cond_2
    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 316
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ActivityBase;->isRequestAudioFocus(Ljava/lang/Boolean;)V

    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mStorageHint:Lcom/lenovo/scg/camera/OnScreenHint;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mStorageHint:Lcom/lenovo/scg/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/OnScreenHint;->cancel()V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mStorageHint:Lcom/lenovo/scg/camera/OnScreenHint;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 323
    return-void
.end method

.method protected onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 646
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 260
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 262
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->installIntentFilter()V

    .line 263
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->updateStorageHintOnResume()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->updateStorageSpace()V

    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 268
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ActivityBase;->isRequestAudioFocus(Ljava/lang/Boolean;)V

    .line 270
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->initUtilScreenSize()V

    .line 272
    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 635
    return-void
.end method

.method public abstract onStorageSpaceUpdated()V
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method protected pickAlbum(I)V
    .locals 6
    .param p1, "bucketId"    # I

    .prologue
    const/4 v4, 0x1

    .line 857
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 858
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "/local/all/"

    .line 862
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 863
    const-string/jumbo v3, "media-path"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    const-class v5, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v1

    .line 866
    .local v1, "inAlbum":Z
    const-string v5, "cluster-menu"

    if-nez v1, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 868
    const-string v3, "camera-data-key"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 871
    iget-object v3, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    # invokes: Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->pickAlbum(Landroid/os/Bundle;)V
    invoke-static {v3, v0}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->access$800(Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;Landroid/os/Bundle;)V

    .line 882
    iget-object v3, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 884
    return-void

    .line 866
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public registerFinishReceiver()V
    .locals 3

    .prologue
    .line 291
    const-string v1, "dongxt"

    const-string/jumbo v2, "registerFinishReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.camera.finishacitvity"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "activityFinishReceiverFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->activityFinishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/camera/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 294
    return-void
.end method

.method public removeCameraOverlayGLView()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->removeCameraOverlayGLView()V

    .line 673
    return-void
.end method

.method protected reuseCameraScreenNail(Z)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 6
    .param p1, "getPictures"    # Z

    .prologue
    .line 491
    const v4, 0x7f1001b5

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    .line 492
    const-string v3, "/local/all/0"

    .line 504
    .local v3, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    if-nez v4, :cond_0

    .line 505
    new-instance v4, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;-><init>(Lcom/lenovo/scg/camera/ActivityBase;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    .line 508
    :cond_0
    if-eqz p1, :cond_1

    .line 518
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 519
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const-string v4, "/local/all/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    invoke-static {}, Lcom/lenovo/scg/camera/Storage;->getCurrentBucketId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 521
    .local v0, "bucketId":I
    sput v0, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    .line 522
    if-eqz p1, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 523
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 527
    .end local v0    # "bucketId":I
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 528
    .local v2, "data":Landroid/os/Bundle;
    const-string/jumbo v4, "media-set-path"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string/jumbo v4, "media-item-path"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string/jumbo v4, "show_when_locked"

    iget-boolean v5, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSecureCamera:Z

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 531
    const-string v5, "camera_is_3rd"

    if-nez p1, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 533
    const-string v4, "app-bridge"

    iget-object v5, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 534
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getStateCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 535
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/lenovo/scg/gallery3d/app/FilmstripPage;

    invoke-virtual {v4, v5, v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 537
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->getCameraScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 538
    iget-object v4, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    return-object v4

    .line 522
    .end local v2    # "data":Landroid/os/Bundle;
    .restart local v0    # "bucketId":I
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    :cond_3
    const-string v4, "0"

    goto :goto_0

    .line 531
    .end local v0    # "bucketId":I
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "data":Landroid/os/Bundle;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public sendActivityFinishBroadcast()V
    .locals 3

    .prologue
    .line 284
    const-string v1, "dongxt"

    const-string/jumbo v2, "sendActivityFinishBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.camera.finishacitvity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ActivityBase;->sendBroadcast(Landroid/content/Intent;)V

    .line 288
    return-void
.end method

.method public setCameraBackgroundColor([F)V
    .locals 1
    .param p1, "color"    # [F

    .prologue
    .line 677
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->setCameraBackgroundColor([F)V

    .line 678
    return-void
.end method

.method public setCameraOverlayGLView(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->setCameraOverlayGLView(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 669
    return-void
.end method

.method public setCameraSourcePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "mediaSetPath"    # Ljava/lang/String;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->setCameraSourcePath(Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setContentView(I)V

    .line 329
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    .line 330
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->hide()V

    .line 331
    return-void
.end method

.method protected setResultEx(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mResultCodeForTesting:I

    .line 361
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/ActivityBase;->setResult(I)V

    .line 362
    return-void
.end method

.method protected setResultEx(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 365
    iput p1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mResultCodeForTesting:I

    .line 366
    iput-object p2, p0, Lcom/lenovo/scg/camera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/camera/ActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 368
    return-void
.end method

.method protected setSingleTapUpListener(Landroid/view/View;)V
    .locals 0
    .param p1, "singleTapArea"    # Landroid/view/View;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    .line 618
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 638
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    # invokes: Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->setSwipingEnabled(Z)V
    invoke-static {v0, p1}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->access$400(Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;Z)V

    .line 639
    return-void
.end method

.method protected updateCameraAppView()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 561
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    .line 563
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 564
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 566
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    .line 567
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 568
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 569
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/ActivityBase$HideCameraAppView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/camera/ActivityBase$HideCameraAppView;-><init>(Lcom/lenovo/scg/camera/ActivityBase;Lcom/lenovo/scg/camera/ActivityBase$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 572
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 578
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected updateStorageHint()V
    .locals 2

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mStorageSpace:J

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/ActivityBase;->updateStorageHint(J)V

    .line 414
    return-void
.end method

.method protected updateStorageHint(J)V
    .locals 5
    .param p1, "storageSpace"    # J

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "message":Ljava/lang/String;
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    .line 423
    const v1, 0x7f0f04d1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 432
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 433
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mStorageHint:Lcom/lenovo/scg/camera/OnScreenHint;

    if-nez v1, :cond_5

    .line 434
    invoke-static {p0, v0}, Lcom/lenovo/scg/camera/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/lenovo/scg/camera/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mStorageHint:Lcom/lenovo/scg/camera/OnScreenHint;

    .line 438
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mStorageHint:Lcom/lenovo/scg/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/OnScreenHint;->show()V

    .line 443
    :cond_1
    :goto_2
    return-void

    .line 424
    :cond_2
    const-wide/16 v2, -0x2

    cmp-long v1, p1, v2

    if-nez v1, :cond_3

    .line 425
    const v1, 0x7f0f04d2

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 426
    :cond_3
    const-wide/16 v2, -0x3

    cmp-long v1, p1, v2

    if-nez v1, :cond_4

    .line 427
    const v1, 0x7f0f04d3

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 428
    :cond_4
    const-wide/32 v2, 0x12c00000

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 429
    const v1, 0x7f0f0547

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 436
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mStorageHint:Lcom/lenovo/scg/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 439
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mStorageHint:Lcom/lenovo/scg/camera/OnScreenHint;

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mStorageHint:Lcom/lenovo/scg/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/OnScreenHint;->cancel()V

    .line 441
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase;->mStorageHint:Lcom/lenovo/scg/camera/OnScreenHint;

    goto :goto_2
.end method

.method protected updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method protected updateStorageSpace()V
    .locals 2

    .prologue
    .line 397
    invoke-static {p0}, Lcom/lenovo/scg/camera/Storage;->getAvailableSpace(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mStorageSpace:J

    .line 399
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->onStorageSpaceUpdated()V

    .line 401
    return-void
.end method

.method public updateStorageSpaceAndHint()V
    .locals 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ActivityBase;->updateStorageSpace()V

    .line 409
    iget-wide v0, p0, Lcom/lenovo/scg/camera/ActivityBase;->mStorageSpace:J

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/ActivityBase;->updateStorageHint(J)V

    .line 410
    return-void
.end method
