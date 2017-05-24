.class public Lcom/lenovo/scg/camera/rewind/PredecodeThread;
.super Landroid/os/HandlerThread;
.source "PredecodeThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/rewind/PredecodeThread$1;,
        Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;
    }
.end annotation


# static fields
.field public static final BUFFER_STATUS_DECODED:I = 0x2

.field public static final BUFFER_STATUS_DECODING:I = 0x1

.field public static final BUFFER_STATUS_INVALID:I = 0x0

.field public static final CANCEL_PREDECODE:I = 0x2

.field private static final MAX_BUFFER_LENGTH:I = 0x3

.field public static final QUIT:I = 0x3

.field public static final REQUEST_PREDECODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "REwindPredecodeThread"

.field private static final THREAD_NAME:Ljava/lang/String; = "REwindPredecodeThread"


# instance fields
.field private mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 32
    const-string v1, "REwindPredecodeThread"

    invoke-direct {p0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    new-array v1, v4, [Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    iput-object v1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 36
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    new-instance v2, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;-><init>(Lcom/lenovo/scg/camera/rewind/PredecodeThread;Lcom/lenovo/scg/camera/rewind/PredecodeThread$1;)V

    aput-object v2, v1, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mLock:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method private CacheJpegData([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "real_index"    # I

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v1, "REwindPredecodeThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CacheJpegData index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->getBufferStatus(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const-string v1, "REwindPredecodeThread"

    const-string v2, "CacheJpegData already exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->getFreeBuffer()Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    move-result-object v0

    .line 99
    .local v0, "buffer":Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;
    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {v0, p2}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->setRealIndex(I)V

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->setStatus(I)V

    .line 102
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->decodeJpegData([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->setBuffer([B)V

    .line 103
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->setStatus(I)V

    .line 105
    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 107
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 109
    :cond_2
    const-string v1, "REwindPredecodeThread"

    const-string v2, "CacheJpegData list is FULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private decodeJpegData([B)[B
    .locals 8
    .param p1, "jpegData"    # [B

    .prologue
    const v4, 0x7fffffff

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 124
    .local v0, "startTime":J
    sget v3, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    invoke-static {p1, v4, v4, v3}, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->JPEG2YUV([BIII)[B

    move-result-object v2

    .line 125
    .local v2, "yuv":[B
    const-string v3, "REwindPredecodeThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeJpegData spendTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object v2
.end method

.method private freeTargetBuffer(I)V
    .locals 4
    .param p1, "real_index"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->getRealIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->getStatus()I

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const-string v1, "REwindPredecodeThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freeTargetBuffer image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->freeBuffer()V

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    return-void
.end method

.method private getBufferStatus(I)I
    .locals 2
    .param p1, "real_index"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->getRealIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->getStatus()I

    move-result v1

    .line 84
    :goto_1
    return v1

    .line 79
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getFreeBuffer()Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->getStatus()I

    move-result v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    aget-object v1, v1, v0

    .line 119
    :goto_1
    return-object v1

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public freeAllBuffer()V
    .locals 3

    .prologue
    .line 63
    const-string v1, "REwindPredecodeThread"

    const-string v2, "freeAllBuffer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->freeBuffer()V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public getBufferDataByIndex(I)[B
    .locals 5
    .param p1, "real_index"    # I

    .prologue
    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 43
    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->getRealIndex()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 44
    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 45
    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->getBuffer()[B

    move-result-object v2

    .line 59
    :goto_1
    return-object v2

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 47
    iget-object v3, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->getBuffer()[B

    move-result-object v2

    goto :goto_1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 53
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_2
    const-string v2, "REwindPredecodeThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBufferDataByIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no match!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 131
    const-string v0, "REwindPredecodeThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-decode thread handle msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 134
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->CacheJpegData([BI)V

    goto :goto_0

    .line 137
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->freeTargetBuffer(I)V

    goto :goto_0

    .line 140
    :pswitch_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->freeAllBuffer()V

    .line 141
    iput-object v3, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mBufferList:[Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;

    .line 142
    iput-object v3, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->mLock:Ljava/lang/Object;

    .line 143
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->quit()Z

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
