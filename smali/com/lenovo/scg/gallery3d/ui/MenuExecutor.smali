.class public Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;
.super Ljava/lang/Object;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;,
        Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;,
        Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;,
        Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    }
.end annotation


# static fields
.field public static final EXECUTION_RESULT_CANCEL:I = 0x3

.field public static final EXECUTION_RESULT_FAIL:I = 0x2

.field public static final EXECUTION_RESULT_SUCCESS:I = 0x1

.field private static final MSG_DO_SHARE:I = 0x4

.field private static final MSG_TASK_COMPLETE:I = 0x1

.field private static final MSG_TASK_START:I = 0x3

.field private static final MSG_TASK_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MenuExecutor"

.field private static final THREAD_POOL_NAME_MENUEXECUTOR_MEDIAOPERATION:Ljava/lang/String; = "pool_menuexecutor_mediaoperation"


# instance fields
.field private final mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mDeleteDialog:Landroid/app/AlertDialog$Builder;

.field private mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

.field private mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mIsFromeCamera:Z

.field private mOrientationListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;

.field private mPaused:Z

.field private mProgressRotateDialog:Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;

.field private final mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

.field private mSetasDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

.field private mTask:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mWaitOnStop:Z


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "selectionManager"    # Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mIsFromeCamera:Z

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDeleteDialog:Landroid/app/AlertDialog$Builder;

    .line 134
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 135
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .line 136
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$1;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)Lcom/lenovo/scg/gallery3d/ui/SelectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onProgressComplete(IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mPaused:Z

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSetasDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSetasDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onProgressStart(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;Lcom/lenovo/scg/gallery3d/data/DataManager;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;ILcom/lenovo/scg/gallery3d/data/Path;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/data/DataManager;
    .param p2, "x2"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->execute(Lcom/lenovo/scg/gallery3d/data/DataManager;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;ILcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onProgressUpdate(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method private static createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # I
    .param p2, "progressMax"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 111
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 114
    if-le p2, v2, :cond_0

    .line 115
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 117
    :cond_0
    return-object v0
.end method

.method private execute(Lcom/lenovo/scg/gallery3d/data/DataManager;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;ILcom/lenovo/scg/gallery3d/data/Path;)Z
    .locals 14
    .param p1, "manager"    # Lcom/lenovo/scg/gallery3d/data/DataManager;
    .param p2, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p3, "cmd"    # I
    .param p4, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 590
    const/4 v6, 0x1

    .line 591
    .local v6, "result":Z
    const-string v7, "MenuExecutor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Execute cmd: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 594
    .local v8, "startTime":J
    sparse-switch p3, :sswitch_data_0

    .line 633
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 596
    :sswitch_0
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->delete(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 635
    :cond_0
    :goto_0
    const-string v7, "MenuExecutor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "It takes "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms to execute cmd for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return v6

    .line 601
    :sswitch_1
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->delete(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 602
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->invalidate()V

    goto :goto_0

    .line 607
    :sswitch_2
    const/16 v7, 0x5a

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v7}, Lcom/lenovo/scg/gallery3d/data/DataManager;->rotate(Lcom/lenovo/scg/gallery3d/data/Path;I)V

    goto :goto_0

    .line 610
    :sswitch_3
    const/16 v7, -0x5a

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v7}, Lcom/lenovo/scg/gallery3d/data/DataManager;->rotate(Lcom/lenovo/scg/gallery3d/data/Path;I)V

    goto :goto_0

    .line 613
    :sswitch_4
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v5

    .line 614
    .local v5, "obj":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getCacheFlag()I

    move-result v2

    .line 615
    .local v2, "cacheFlag":I
    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    .line 616
    const/4 v2, 0x1

    .line 620
    :goto_1
    invoke-virtual {v5, v2}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->cache(I)V

    goto :goto_0

    .line 618
    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    .line 624
    .end local v2    # "cacheFlag":I
    .end local v5    # "obj":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :sswitch_5
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 625
    .local v3, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    const/4 v7, 0x2

    new-array v4, v7, [D

    .line 626
    .local v4, "latlng":[D
    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getLatLong([D)V

    .line 627
    const/4 v7, 0x0

    aget-wide v10, v4, v7

    const/4 v7, 0x1

    aget-wide v12, v4, v7

    invoke-static {v10, v11, v12, v13}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 628
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v10, 0x0

    aget-wide v10, v4, v10

    const/4 v12, 0x1

    aget-wide v12, v4, v12

    invoke-static {v7, v10, v11, v12, v13}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->showOnMap(Landroid/content/Context;DD)V

    goto :goto_0

    .line 594
    :sswitch_data_0
    .sparse-switch
        0x7f100026 -> :sswitch_4
        0x7f100b2a -> :sswitch_0
        0x7f100b2b -> :sswitch_1
        0x7f100b2d -> :sswitch_3
        0x7f100b2e -> :sswitch_2
        0x7f100b32 -> :sswitch_5
    .end sparse-switch
.end method

.method private getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v0

    .line 325
    .local v0, "manager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    .line 326
    .local v2, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaType(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "mimeType":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 579
    packed-switch p0, :pswitch_data_0

    .line 585
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 581
    :pswitch_1
    const-string v0, "image/*"

    goto :goto_0

    .line 583
    :pswitch_2
    const-string/jumbo v0, "video/*"

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSingleSelectedPath()Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 318
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 319
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 320
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/Path;

    return-object v1

    :cond_0
    move v1, v2

    .line 319
    goto :goto_0
.end method

.method private hasProperThemeCenter()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 441
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.lenovo.themecenter.wallpaper.crop"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.lenovo.themecenter"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 444
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 445
    const/4 v3, 0x1

    .line 450
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private matchMenuItem(Ljava/lang/String;)I
    .locals 4
    .param p1, "menuItemText"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0f0661

    .line 522
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 524
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0667

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0668

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    :cond_0
    const v1, 0x7f100027

    .line 546
    :goto_0
    return v1

    .line 527
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0675

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    const v1, 0x7f100b2f

    goto :goto_0

    .line 529
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0672

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 530
    const v1, 0x7f100b2c

    goto :goto_0

    .line 531
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f065d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 532
    const v1, 0x7f100b30

    goto :goto_0

    .line 533
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 534
    const v1, 0x7f100b2a

    goto :goto_0

    .line 535
    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 536
    const v1, 0x7f100b2b

    goto :goto_0

    .line 537
    :cond_6
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0670

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 538
    const v1, 0x7f100b2e

    goto :goto_0

    .line 539
    :cond_7
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f066f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 540
    const v1, 0x7f100b2d

    goto/16 :goto_0

    .line 541
    :cond_8
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f066e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 542
    const v1, 0x7f100b32

    goto/16 :goto_0

    .line 543
    :cond_9
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f06b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 544
    const v1, 0x7f100b28

    goto/16 :goto_0

    .line 546
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private onMenuClicked(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 331
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 332
    return-void
.end method

.method private onProgressComplete(IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "operation"    # I
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    return-void
.end method

.method private onProgressComplete(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    return-void
.end method

.method private onProgressStart(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    return-void
.end method

.method private onProgressUpdate(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    return-void
.end method

.method private static setMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "itemId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 313
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 314
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 315
    :cond_0
    return-void
.end method

.method private showDeleteDialog(ILjava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;Landroid/app/Activity;)V
    .locals 5
    .param p1, "action"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 771
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDeleteDialog:Landroid/app/AlertDialog$Builder;

    .line 772
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$3;

    invoke-direct {v1, p0, p3, p1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$3;-><init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;I)V

    .line 786
    .local v1, "okOnClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$4;

    invoke-direct {v0, p0, p3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$4;-><init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 793
    .local v0, "cancelOnClick":Landroid/content/DialogInterface$OnClickListener;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDeleteDialog:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0661

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 794
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDeleteDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 795
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDeleteDialog:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 796
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDeleteDialog:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 797
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDeleteDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 806
    return-void
.end method

.method private showRotateDialog(ILjava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;Landroid/app/Activity;)V
    .locals 8
    .param p1, "action"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 810
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    invoke-direct {v0, p4}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    .line 811
    new-instance v6, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$5;

    invoke-direct {v6, p0, p3, p1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$5;-><init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;I)V

    .line 825
    .local v6, "runnable":Ljava/lang/Runnable;
    new-instance v4, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$6;

    invoke-direct {v4, p0, p3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$6;-><init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 832
    .local v4, "cancelRunnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x104000a

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 835
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mOrientationListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mOrientationListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;->getOrientation()I

    move-result v7

    .line 837
    .local v7, "orientation":I
    const-string v0, "hwj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showRotateDialog() orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->setOrientation(IZ)V

    .line 840
    .end local v7    # "orientation":I
    :cond_0
    return-void
.end method

.method private stopTaskAndDismissDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v0, :cond_2

    .line 176
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 178
    :cond_1
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 179
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mProgressRotateDialog:Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mProgressRotateDialog:Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->dismissDialog()Z

    .line 186
    :cond_2
    return-void
.end method

.method public static updateMenuForPanorama(Landroid/view/Menu;ZZ)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "shareAsPanorama360"    # Z
    .param p2, "disablePanorama360Options"    # Z

    .prologue
    const/4 v1, 0x0

    .line 305
    const v0, 0x7f100b29

    invoke-static {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 306
    if-eqz p2, :cond_0

    .line 307
    const v0, 0x7f100b2d

    invoke-static {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 308
    const v0, 0x7f100b2e

    invoke-static {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 310
    :cond_0
    return-void
.end method

.method public static updateMenuOperation(Landroid/app/Activity;Ljava/util/ArrayList;I)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "supported"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .local p1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 258
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 260
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_5

    move v3, v2

    .line 261
    .local v3, "supportRotate":Z
    :goto_0
    and-int/lit8 v6, p2, 0x8

    if-eqz v6, :cond_6

    move v1, v2

    .line 263
    .local v1, "supportCrop":Z
    :goto_1
    and-int/lit8 v6, p2, 0x20

    if-eqz v6, :cond_7

    move v4, v2

    .line 267
    .local v4, "supportSetAs":Z
    :goto_2
    and-int/lit16 v6, p2, 0x400

    if-eqz v6, :cond_8

    .line 270
    .local v2, "supportInfo":Z
    :goto_3
    if-eqz v3, :cond_0

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "icon"

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v5, "label"

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f066f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    if-eqz v3, :cond_1

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 278
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "icon"

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v5, "label"

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0670

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    if-eqz v1, :cond_2

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 284
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "icon"

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v5, "label"

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0675

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    if-eqz v4, :cond_3

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 290
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "icon"

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v5, "label"

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f065d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    if-eqz v2, :cond_4

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 296
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "icon"

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v5, "label"

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f066a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    check-cast p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->updateActionBar()V

    .line 302
    return-void

    .end local v1    # "supportCrop":Z
    .end local v2    # "supportInfo":Z
    .end local v3    # "supportRotate":Z
    .end local v4    # "supportSetAs":Z
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_5
    move v3, v5

    .line 260
    goto/16 :goto_0

    .restart local v3    # "supportRotate":Z
    :cond_6
    move v1, v5

    .line 261
    goto/16 :goto_1

    .restart local v1    # "supportCrop":Z
    :cond_7
    move v4, v5

    .line 263
    goto/16 :goto_2

    .restart local v4    # "supportSetAs":Z
    :cond_8
    move v2, v5

    .line 267
    goto/16 :goto_3
.end method

.method public static updateMenuOperation(Landroid/view/Menu;I)V
    .locals 13
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "supported"    # I

    .prologue
    .line 222
    and-int/lit8 v11, p1, 0x1

    if-eqz v11, :cond_0

    const/4 v2, 0x1

    .line 223
    .local v2, "supportDelete":Z
    :goto_0
    and-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_1

    const/4 v6, 0x1

    .line 224
    .local v6, "supportRotate":Z
    :goto_1
    and-int/lit8 v11, p1, 0x8

    if-eqz v11, :cond_2

    const/4 v1, 0x1

    .line 225
    .local v1, "supportCrop":Z
    :goto_2
    and-int/lit16 v11, p1, 0x800

    if-eqz v11, :cond_3

    const/4 v10, 0x1

    .line 226
    .local v10, "supportTrim":Z
    :goto_3
    const/high16 v11, 0x10000

    and-int/2addr v11, p1

    if-eqz v11, :cond_4

    const/4 v5, 0x1

    .line 227
    .local v5, "supportMute":Z
    :goto_4
    and-int/lit8 v11, p1, 0x4

    if-eqz v11, :cond_5

    const/4 v8, 0x1

    .line 228
    .local v8, "supportShare":Z
    :goto_5
    and-int/lit8 v11, p1, 0x20

    if-eqz v11, :cond_6

    const/4 v7, 0x1

    .line 229
    .local v7, "supportSetAs":Z
    :goto_6
    and-int/lit8 v11, p1, 0x10

    if-eqz v11, :cond_7

    const/4 v9, 0x1

    .line 230
    .local v9, "supportShowOnMap":Z
    :goto_7
    and-int/lit16 v11, p1, 0x100

    if-eqz v11, :cond_8

    const/4 v0, 0x1

    .line 231
    .local v0, "supportCache":Z
    :goto_8
    and-int/lit16 v11, p1, 0x200

    if-eqz v11, :cond_9

    const/4 v3, 0x1

    .line 232
    .local v3, "supportEdit":Z
    :goto_9
    and-int/lit16 v11, p1, 0x400

    if-eqz v11, :cond_a

    const/4 v4, 0x1

    .line 234
    .local v4, "supportInfo":Z
    :goto_a
    const v11, 0x7f100b2a

    invoke-static {p0, v11, v2}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 235
    const v11, 0x7f100b2d

    invoke-static {p0, v11, v6}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 236
    const v11, 0x7f100b2e

    invoke-static {p0, v11, v6}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 237
    const v11, 0x7f100b2f

    invoke-static {p0, v11, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 238
    const v11, 0x7f100b34

    invoke-static {p0, v11, v10}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 239
    const v11, 0x7f100b35

    invoke-static {p0, v11, v5}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 241
    const v11, 0x7f100b29

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 242
    const v11, 0x7f100b27

    invoke-static {p0, v11, v8}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 243
    const v11, 0x7f100b30

    invoke-static {p0, v11, v7}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 244
    const v11, 0x7f100b32

    invoke-static {p0, v11, v9}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 246
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isOriginalMenuSupported()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    .line 247
    const v11, 0x7f100b2c

    invoke-static {p0, v11, v3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 253
    :goto_b
    const v11, 0x7f100b31

    invoke-static {p0, v11, v4}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 254
    return-void

    .line 222
    .end local v0    # "supportCache":Z
    .end local v1    # "supportCrop":Z
    .end local v2    # "supportDelete":Z
    .end local v3    # "supportEdit":Z
    .end local v4    # "supportInfo":Z
    .end local v5    # "supportMute":Z
    .end local v6    # "supportRotate":Z
    .end local v7    # "supportSetAs":Z
    .end local v8    # "supportShare":Z
    .end local v9    # "supportShowOnMap":Z
    .end local v10    # "supportTrim":Z
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 223
    .restart local v2    # "supportDelete":Z
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 224
    .restart local v6    # "supportRotate":Z
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 225
    .restart local v1    # "supportCrop":Z
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 226
    .restart local v10    # "supportTrim":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    .line 227
    .restart local v5    # "supportMute":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_5

    .line 228
    .restart local v8    # "supportShare":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_6

    .line 229
    .restart local v7    # "supportSetAs":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_7

    .line 230
    .restart local v9    # "supportShowOnMap":Z
    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    .line 231
    .restart local v0    # "supportCache":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_9

    .line 232
    .restart local v3    # "supportEdit":Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_a

    .line 249
    .restart local v4    # "supportInfo":Z
    :cond_b
    const v11, 0x7f100b2c

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    goto :goto_b
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 200
    return-void
.end method

.method public dismissRotateDialog()Z
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->dismissDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->removeDialog()V

    .line 851
    const/4 v0, 0x1

    .line 853
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissSetasRotateDialog()Z
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSetasDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSetasDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->dismissDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ismIsFromeCamera()Z
    .locals 1

    .prologue
    .line 910
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mIsFromeCamera:Z

    return v0
.end method

.method public onMenuClicked(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    .param p3, "waitOnStop"    # Z
    .param p4, "showDialog"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 336
    const-string v0, "MenuExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMenuClicked222, action = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sparse-switch p1, :sswitch_data_0

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 342
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->isAllCount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->deSelectAll()V

    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->selectAll()V

    goto :goto_0

    .line 352
    :sswitch_1
    const-string v0, "com.android.camera.action.CROP"

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 353
    .local v6, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 355
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 362
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_2
    const-string v0, "android.intent.action.EDIT"

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    .line 363
    .restart local v6    # "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 369
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_3
    const-string v0, "MenuExecutor"

    const-string v1, "R.id.action_setas, hasProperThemeCenter!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f040169

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSetasDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    .line 373
    const-string v0, "android.intent.action.ATTACH_DATA"

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    .line 374
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "mimeType"

    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    new-instance v7, Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v0, v6}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 377
    .local v7, "listView":Lcom/lenovo/scg/gallery3d/edit/SetasListView;
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$2;-><init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)V

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->setItemClickListener(Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;)V

    .line 391
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSetasDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0f0676

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 392
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSetasDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v7, v1, v5}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setView(Landroid/view/View;II)V

    .line 393
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSetasDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09010c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v5}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setDetailsParentWidthHeight(II)V

    .line 395
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSetasDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->hideButtonText()V

    .line 397
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSetasDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d00bc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setBackground(I)V

    goto/16 :goto_0

    .line 415
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "listView":Lcom/lenovo/scg/gallery3d/edit/SetasListView;
    :sswitch_4
    const v2, 0x7f0f0661

    .local v2, "title":I
    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 436
    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->startAction(IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    goto/16 :goto_0

    .line 420
    .end local v2    # "title":I
    :sswitch_5
    const v2, 0x7f0f0661

    .line 421
    .restart local v2    # "title":I
    goto :goto_1

    .line 425
    .end local v2    # "title":I
    :sswitch_6
    const v2, 0x7f0f0670

    .line 426
    .restart local v2    # "title":I
    goto :goto_1

    .line 428
    .end local v2    # "title":I
    :sswitch_7
    const v2, 0x7f0f066f

    .line 429
    .restart local v2    # "title":I
    goto :goto_1

    .line 431
    .end local v2    # "title":I
    :sswitch_8
    const v2, 0x7f0f066e

    .line 432
    .restart local v2    # "title":I
    goto :goto_1

    .line 339
    :sswitch_data_0
    .sparse-switch
        0x7f100027 -> :sswitch_0
        0x7f100b2a -> :sswitch_4
        0x7f100b2b -> :sswitch_5
        0x7f100b2c -> :sswitch_2
        0x7f100b2d -> :sswitch_7
        0x7f100b2e -> :sswitch_6
        0x7f100b2f -> :sswitch_1
        0x7f100b30 -> :sswitch_3
        0x7f100b32 -> :sswitch_8
    .end sparse-switch
.end method

.method public onMenuClicked(ILjava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;Landroid/app/Activity;)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "confirmMsg"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 689
    const-string v1, "MenuExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMenuClicked, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    if-eqz p2, :cond_4

    .line 692
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogShown()V

    .line 702
    :cond_0
    const v1, 0x7f100b2a

    if-eq p1, v1, :cond_1

    const v1, 0x7f100b2b

    if-ne p1, v1, :cond_3

    .line 704
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mIsFromeCamera:Z

    if-eqz v1, :cond_2

    .line 705
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->showRotateDialog(ILjava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;Landroid/app/Activity;)V

    .line 760
    :goto_0
    return-void

    .line 707
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->showDeleteDialog(ILjava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;Landroid/app/Activity;)V

    goto :goto_0

    .line 711
    :cond_3
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {v0, p0, p1, p3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 712
    .local v0, "cdl":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0653

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0663

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 757
    .end local v0    # "cdl":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0
.end method

.method public onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "confirmMsg"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 487
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 489
    .local v0, "action":I
    if-eqz p2, :cond_1

    .line 490
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogShown()V

    .line 491
    :cond_0
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {v1, p0, v0, p3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 492
    .local v1, "cdl":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f0653

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f0663

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 497
    .end local v1    # "cdl":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    :goto_0
    return-void

    .line 495
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0
.end method

.method public onMenuClicked(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 5
    .param p1, "menuText"    # Ljava/lang/String;
    .param p2, "confirmMsg"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 500
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->matchMenuItem(Ljava/lang/String;)I

    move-result v0

    .line 504
    .local v0, "action":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 506
    .local v2, "menuClickDlg":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_2

    .line 507
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogShown()V

    .line 508
    :cond_0
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {v1, p0, v0, p3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 510
    .local v1, "cdl":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    const v3, 0x7f100b2a

    if-ne v0, v3, :cond_1

    .line 511
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0661

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 514
    :cond_1
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0f0653

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0f0663

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 519
    .end local v1    # "cdl":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    :goto_0
    return-void

    .line 517
    :cond_2
    invoke-direct {p0, v0, p3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mPaused:Z

    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 196
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mPaused:Z

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 191
    :cond_0
    return-void
.end method

.method public setOrientationIndicator(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 843
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->setOrientation(IZ)V

    .line 846
    :cond_0
    return-void
.end method

.method public setOrientationListener(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;)V
    .locals 0
    .param p1, "orientationListener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;

    .prologue
    .line 906
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mOrientationListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;

    .line 907
    return-void
.end method

.method public setProgressDialogOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 893
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mProgressRotateDialog:Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mProgressRotateDialog:Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->setOrientation(IZ)V

    .line 896
    :cond_0
    return-void
.end method

.method public setSetasDialogOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 861
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSetasDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSetasDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setOrientation(IZ)V

    .line 864
    :cond_0
    return-void
.end method

.method public setmIsFromeCamera(Z)V
    .locals 0
    .param p1, "mIsFromeCamera"    # Z

    .prologue
    .line 914
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mIsFromeCamera:Z

    .line 915
    return-void
.end method

.method public startAction(IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 6
    .param p1, "action"    # I
    .param p2, "title"    # I
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 551
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->startAction(IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 552
    return-void
.end method

.method public startAction(IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 5
    .param p1, "action"    # I
    .param p2, "title"    # I
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    .param p4, "waitOnStop"    # Z
    .param p5, "showDialog"    # Z

    .prologue
    .line 555
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 556
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 558
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 559
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, p2, v3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 560
    if-eqz p5, :cond_0

    .line 561
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 563
    :cond_0
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;

    invoke-direct {v2, p0, p1, v1, p3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 564
    .local v2, "operation":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 565
    iput-boolean p4, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    .line 566
    return-void
.end method

.method public startDeleteAction(IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 7
    .param p1, "action"    # I
    .param p2, "title"    # I
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    .param p4, "waitOnStop"    # Z
    .param p5, "showDialog"    # Z

    .prologue
    const/4 v6, 0x0

    .line 875
    const-string v4, "hwj"

    const-string/jumbo v5, "startDeleteAction()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 877
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 878
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 879
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;

    invoke-direct {v4, v0}, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mProgressRotateDialog:Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;

    .line 880
    if-eqz p5, :cond_0

    .line 881
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mProgressRotateDialog:Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mOrientationListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;

    if-eqz v4, :cond_0

    .line 883
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mOrientationListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;->getOrientation()I

    move-result v3

    .line 884
    .local v3, "orientation":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mProgressRotateDialog:Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/lenovo/scg/gallery3d/edit/ProgressRotateDialog;->setOrientation(IZ)V

    .line 887
    .end local v3    # "orientation":I
    :cond_0
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;

    invoke-direct {v2, p0, p1, v1, p3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 888
    .local v2, "operation":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 889
    iput-boolean p4, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    .line 890
    return-void
.end method
