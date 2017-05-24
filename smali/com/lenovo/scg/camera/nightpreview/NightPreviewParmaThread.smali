.class public Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;
.super Landroid/os/HandlerThread;
.source "NightPreviewParmaThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final NIGHTPREVIEW_DEBUG:I = 0x4

.field public static final NIGHTPREVIEW_INIT:I = 0x1

.field public static final NIGHTPREVIEW_QUIT:I = 0x5

.field public static final NIGHTPREVIEW_RELEASE:I = 0x3

.field public static final NIGHTPREVIEW_RESET:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private isLocked:Z

.field private final mLock:Ljava/lang/Object;

.field private mNightPreviewEng:Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "NightPreviewParmaThread"

    sput-object v0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    sget-object v0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->mNightPreviewEng:Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->mLock:Ljava/lang/Object;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->isLocked:Z

    .line 25
    return-void
.end method

.method private declared-synchronized debugNightPreviewParam(II)V
    .locals 6
    .param p1, "lIntensity"    # I
    .param p2, "lDenoise"    # I

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->mNightPreviewEng:Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, debug, intensity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", noise:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->mNightPreviewEng:Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->NightPreview_SetParam(IIIZZ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized deinitNightPreviewEng()V
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->mNightPreviewEng:Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->mNightPreviewEng:Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->NightPreview_Uninit()J

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->mNightPreviewEng:Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initNightPreviewEng(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->mNightPreviewEng:Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->mNightPreviewEng:Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->NightPreview_Init(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getNightPreviewEng()Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->mNightPreviewEng:Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 28
    sget-object v0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 31
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 32
    const-string v0, "NightPreviewParmaThread quit"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->initNightPreviewEng(II)V

    goto :goto_0

    .line 41
    :pswitch_2
    monitor-enter p0

    .line 42
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->deinitNightPreviewEng()V

    .line 43
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->initNightPreviewEng(II)V

    .line 44
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 50
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->debugNightPreviewParam(II)V

    goto :goto_0

    .line 56
    :pswitch_4
    invoke-direct {p0}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->deinitNightPreviewEng()V

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
