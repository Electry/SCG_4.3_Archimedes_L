.class Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;
.super Ljava/lang/Object;
.source "PredecodeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/rewind/PredecodeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageBuffer"
.end annotation


# instance fields
.field private buffer:[B

.field private mStatus:I

.field private pictureRealIndex:I

.field final synthetic this$0:Lcom/lenovo/scg/camera/rewind/PredecodeThread;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/rewind/PredecodeThread;)V
    .locals 1

    .prologue
    .line 149
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->this$0:Lcom/lenovo/scg/camera/rewind/PredecodeThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->mStatus:I

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->buffer:[B

    .line 176
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->pictureRealIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/rewind/PredecodeThread;Lcom/lenovo/scg/camera/rewind/PredecodeThread$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/rewind/PredecodeThread;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/rewind/PredecodeThread$1;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;-><init>(Lcom/lenovo/scg/camera/rewind/PredecodeThread;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized freeBuffer()V
    .locals 1

    .prologue
    .line 168
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->buffer:[B

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBuffer()[B
    .locals 1

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->buffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRealIndex()I
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->pictureRealIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStatus()I
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBuffer([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->buffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRealIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->pictureRealIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/lenovo/scg/camera/rewind/PredecodeThread$ImageBuffer;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
