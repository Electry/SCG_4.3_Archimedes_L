.class public Lcom/lenovo/scg/camera/MediaSaveService;
.super Landroid/app/Service;
.source "MediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/MediaSaveService$VideoSaveTask;,
        Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;,
        Lcom/lenovo/scg/camera/MediaSaveService$LocalBinder;,
        Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;,
        Lcom/lenovo/scg/camera/MediaSaveService$Listener;
    }
.end annotation


# static fields
.field private static final SAVE_TASK_LIMIT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mListener:Lcom/lenovo/scg/camera/MediaSaveService$Listener;

.field private mTaskNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/lenovo/scg/camera/MediaSaveService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/MediaSaveService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    new-instance v0, Lcom/lenovo/scg/camera/MediaSaveService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/MediaSaveService$LocalBinder;-><init>(Lcom/lenovo/scg/camera/MediaSaveService;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService;->mBinder:Landroid/os/IBinder;

    .line 256
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/lenovo/scg/camera/MediaSaveService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/MediaSaveService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MediaSaveService;

    .prologue
    .line 45
    iget v0, p0, Lcom/lenovo/scg/camera/MediaSaveService;->mTaskNumber:I

    return v0
.end method

.method static synthetic access$110(Lcom/lenovo/scg/camera/MediaSaveService;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MediaSaveService;

    .prologue
    .line 45
    iget v0, p0, Lcom/lenovo/scg/camera/MediaSaveService;->mTaskNumber:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lenovo/scg/camera/MediaSaveService;->mTaskNumber:I

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/MediaSaveService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MediaSaveService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/scg/camera/MediaSaveService;->onQueueAvailable()V

    return-void
.end method

.method private onQueueAvailable()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService;->mListener:Lcom/lenovo/scg/camera/MediaSaveService$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService;->mListener:Lcom/lenovo/scg/camera/MediaSaveService$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/MediaSaveService$Listener;->onQueueStatus(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method private onQueueFull()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService;->mListener:Lcom/lenovo/scg/camera/MediaSaveService$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService;->mListener:Lcom/lenovo/scg/camera/MediaSaveService$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/MediaSaveService$Listener;->onQueueStatus(Z)V

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/lenovo/scg/gallery3d/exif/ExifInterface;Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;I)V
    .locals 17
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "loc"    # Landroid/location/Location;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "orientation"    # I
    .param p9, "exif"    # Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .param p10, "l"    # Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;
    .param p11, "resolver"    # Landroid/content/ContentResolver;
    .param p12, "thumbnailwidth"    # I

    .prologue
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/MediaSaveService;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    sget-object v3, Lcom/lenovo/scg/camera/MediaSaveService;->TAG:Ljava/lang/String;

    const-string v4, "Cannot add image when the queue is full"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v2, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;

    if-nez p5, :cond_2

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p11

    move-object/from16 v14, p10

    move/from16 v15, p12

    invoke-direct/range {v2 .. v15}, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;-><init>(Lcom/lenovo/scg/camera/MediaSaveService;[BLjava/lang/String;JLandroid/location/Location;IIILcom/lenovo/scg/gallery3d/exif/ExifInterface;Landroid/content/ContentResolver;Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;I)V

    .line 111
    .local v2, "t":Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/MediaSaveService;->mTaskNumber:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lenovo/scg/camera/MediaSaveService;->mTaskNumber:I

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/MediaSaveService;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/MediaSaveService;->onQueueFull()V

    .line 115
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 108
    .end local v2    # "t":Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;
    :cond_2
    new-instance v8, Landroid/location/Location;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_1
.end method

.method public addVideo(Ljava/lang/String;JLandroid/content/ContentValues;Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "l"    # Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;
    .param p6, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 121
    new-instance v1, Lcom/lenovo/scg/camera/MediaSaveService$VideoSaveTask;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/lenovo/scg/camera/MediaSaveService$VideoSaveTask;-><init>(Lcom/lenovo/scg/camera/MediaSaveService;Ljava/lang/String;JLandroid/content/ContentValues;Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/MediaSaveService$VideoSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method

.method public isQueueFull()Z
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/lenovo/scg/camera/MediaSaveService;->mTaskNumber:I

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
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/MediaSaveService;->mTaskNumber:I

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flag"    # I
    .param p3, "startId"    # I

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public setListener(Lcom/lenovo/scg/camera/MediaSaveService$Listener;)V
    .locals 1
    .param p1, "l"    # Lcom/lenovo/scg/camera/MediaSaveService$Listener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lenovo/scg/camera/MediaSaveService;->mListener:Lcom/lenovo/scg/camera/MediaSaveService$Listener;

    .line 126
    if-nez p1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/MediaSaveService;->isQueueFull()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/lenovo/scg/camera/MediaSaveService$Listener;->onQueueStatus(Z)V

    goto :goto_0
.end method
