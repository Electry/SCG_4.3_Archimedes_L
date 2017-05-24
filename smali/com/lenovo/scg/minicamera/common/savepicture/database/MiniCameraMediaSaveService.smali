.class public Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;
.super Landroid/app/Service;
.source "MiniCameraMediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$VideoSaveTask;,
        Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;,
        Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$LocalBinder;,
        Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$OnMediaSavedListener;,
        Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$Listener;
    }
.end annotation


# static fields
.field private static final SAVE_TASK_LIMIT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mListener:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$Listener;

.field private mTaskNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    new-instance v0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$LocalBinder;-><init>(Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mBinder:Landroid/os/IBinder;

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;

    .prologue
    .line 46
    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mTaskNumber:I

    return v0
.end method

.method static synthetic access$010(Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;

    .prologue
    .line 46
    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mTaskNumber:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mTaskNumber:I

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->onQueueAvailable()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onQueueAvailable()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mListener:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mListener:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$Listener;->onQueueStatus(Z)V

    .line 132
    :cond_0
    return-void
.end method

.method private onQueueFull()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mListener:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mListener:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$Listener;->onQueueStatus(Z)V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
    .locals 15
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "loc"    # Landroid/location/Location;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "orientation"    # I
    .param p9, "exif"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;
    .param p10, "l"    # Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$OnMediaSavedListener;
    .param p11, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    sget-object v3, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->TAG:Ljava/lang/String;

    const-string v4, "Cannot add image when the queue is full"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v2, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;

    if-nez p5, :cond_2

    const/4 v8, 0x0

    :goto_1
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p11

    move-object/from16 v14, p10

    invoke-direct/range {v2 .. v14}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;-><init>(Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;[BLjava/lang/String;JLandroid/location/Location;IIILcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;Landroid/content/ContentResolver;Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$OnMediaSavedListener;)V

    .line 107
    .local v2, "t":Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;
    iget v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mTaskNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mTaskNumber:I

    .line 108
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->onQueueFull()V

    .line 111
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 105
    .end local v2    # "t":Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$ImageSaveTask;
    :cond_2
    new-instance v8, Landroid/location/Location;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_1
.end method

.method public addVideo(Ljava/lang/String;JLandroid/content/ContentValues;Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "l"    # Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$OnMediaSavedListener;
    .param p6, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 117
    new-instance v1, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$VideoSaveTask;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$VideoSaveTask;-><init>(Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;Ljava/lang/String;JLandroid/content/ContentValues;Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$VideoSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    return-void
.end method

.method public isQueueFull()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mTaskNumber:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mTaskNumber:I

    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flag"    # I
    .param p3, "startId"    # I

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public setListener(Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$Listener;)V
    .locals 1
    .param p1, "l"    # Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$Listener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->mListener:Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$Listener;

    .line 122
    if-nez p1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService;->isQueueFull()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraMediaSaveService$Listener;->onQueueStatus(Z)V

    goto :goto_0
.end method
