.class public Lcom/morpho/core/GroupShot;
.super Ljava/lang/Object;
.source "GroupShot.java"


# static fields
.field private static final ATTACH:I = 0x3

.field private static final CLEAR:I = 0x5

.field private static final END:I = 0x4

.field private static final FINISH:I = 0x6

.field private static final INIT:I = 0x1

.field private static final NEW:I = 0x0

.field private static final START:I = 0x2

.field private static final TAG:Ljava/lang/String; = "REwindGroupShot"

.field public static sInstance:Lcom/morpho/core/GroupShot;


# instance fields
.field private mClearLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNative:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    :try_start_0
    const-string/jumbo v1, "scg_groupshot_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    const-string v1, "REwindGroupShot"

    const-string/jumbo v2, "successfully loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 18
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 19
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "REwindGroupShot"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const-string v1, "REwindGroupShot"

    const-string v2, "can\'t loadLibrary"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x6

    iput v0, p0, Lcom/morpho/core/GroupShot;->mState:I

    .line 61
    iput v4, p0, Lcom/morpho/core/GroupShot;->mNative:I

    .line 47
    const-string v0, "REwindGroupShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new GroupShot() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput v4, p0, Lcom/morpho/core/GroupShot;->mState:I

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/morpho/core/GroupShot;->mClearLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    return-void
.end method

.method private final native attach(I[BI)I
.end method

.method private final native clearImages(I)I
.end method

.method private final native createNativeObject()I
.end method

.method private final native deleteNativeObject(I)V
.end method

.method private final native doProcess(I[BI)I
.end method

.method private final native end(I)I
.end method

.method private final native getFaceNum(I)I
.end method

.method private final native getFaceRects(II[I)I
.end method

.method private final native getImageNum(I)I
.end method

.method public static declared-synchronized getInstance()Lcom/morpho/core/GroupShot;
    .locals 6

    .prologue
    .line 54
    const-class v1, Lcom/morpho/core/GroupShot;

    monitor-enter v1

    :try_start_0
    const-string v0, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/morpho/core/GroupShot;->sInstance:Lcom/morpho/core/GroupShot;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/morpho/core/GroupShot;->sInstance:Lcom/morpho/core/GroupShot;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/morpho/core/GroupShot;

    invoke-direct {v0}, Lcom/morpho/core/GroupShot;-><init>()V

    sput-object v0, Lcom/morpho/core/GroupShot;->sInstance:Lcom/morpho/core/GroupShot;

    .line 58
    :cond_0
    sget-object v0, Lcom/morpho/core/GroupShot;->sInstance:Lcom/morpho/core/GroupShot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final native getPreviewImageBitmap(IIIILandroid/graphics/Bitmap;)I
.end method

.method private final native getScaledOutputImageBitmap(IIILandroid/graphics/Bitmap;)I
.end method

.method private final native getTargetImageBitmap(IIIIILandroid/graphics/Bitmap;)I
.end method

.method private final native getTargetNum(I)I
.end method

.method private final native getTargetRects(I[I)I
.end method

.method private final native getUseImageList(I[I)I
.end method

.method private final native initializeNativeObject(IIIIIIII)I
.end method

.method private final native selectTarget(III)I
.end method

.method private final native setBaseImage(II)I
.end method

.method private final native setOutput(ILjava/nio/ByteBuffer;)I
.end method

.method private final native start(II)I
.end method

.method private final native stopPreview(I)I
.end method


# virtual methods
.method public declared-synchronized attach([BI)I
    .locals 6
    .param p1, "src"    # [B
    .param p2, "format"    # I

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v1, :cond_0

    .line 262
    const-string v1, "REwindGroupShot"

    const-string v2, "mNative == 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    const/4 v0, -0x1

    .line 267
    :goto_0
    monitor-exit p0

    return v0

    .line 265
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/morpho/core/GroupShot;->attach(I[BI)I

    move-result v0

    .line 266
    .local v0, "ret":I
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 260
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized attach_end()I
    .locals 6

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach_end() mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/morpho/core/GroupShot;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget v1, p0, Lcom/morpho/core/GroupShot;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 286
    :goto_0
    monitor-exit p0

    return v0

    .line 275
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/morpho/core/GroupShot;->mClearLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 276
    const/4 v1, 0x4

    iput v1, p0, Lcom/morpho/core/GroupShot;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :try_start_2
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v1, :cond_1

    .line 279
    const-string v1, "REwindGroupShot"

    const-string v2, "mNative == 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 280
    const/4 v0, -0x1

    .line 286
    :try_start_3
    iget-object v1, p0, Lcom/morpho/core/GroupShot;->mClearLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 282
    :cond_1
    :try_start_4
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v1}, Lcom/morpho/core/GroupShot;->end(I)I

    move-result v0

    .line 283
    .local v0, "ret":I
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach_end ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 286
    :try_start_5
    iget-object v1, p0, Lcom/morpho/core/GroupShot;->mClearLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "ret":I
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/morpho/core/GroupShot;->mClearLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized attach_start(I)I
    .locals 6
    .param p1, "withDelay"    # I

    .prologue
    .line 248
    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    iput v1, p0, Lcom/morpho/core/GroupShot;->mState:I

    .line 249
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach_start() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v1, :cond_0

    .line 251
    const-string v1, "REwindGroupShot"

    const-string v2, "mNative == 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    const/4 v0, -0x1

    .line 256
    :goto_0
    monitor-exit p0

    return v0

    .line 254
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/GroupShot;->start(II)I

    move-result v0

    .line 255
    .local v0, "ret":I
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach_start ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clearImages()I
    .locals 4

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    const-string v0, "REwindGroupShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearImages() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/morpho/core/GroupShot;->mClearLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 223
    iget-object v0, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 224
    const/4 v0, 0x5

    iput v0, p0, Lcom/morpho/core/GroupShot;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :try_start_1
    iget v0, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v0, :cond_0

    .line 227
    const-string v0, "REwindGroupShot"

    const-string v1, "mNative == 0!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    const/4 v0, -0x1

    .line 232
    :try_start_2
    iget-object v1, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 233
    iget-object v1, p0, Lcom/morpho/core/GroupShot;->mClearLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    .line 230
    :cond_0
    :try_start_3
    iget v0, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v0}, Lcom/morpho/core/GroupShot;->clearImages(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    .line 232
    :try_start_4
    iget-object v1, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 233
    iget-object v1, p0, Lcom/morpho/core/GroupShot;->mClearLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 232
    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 233
    iget-object v1, p0, Lcom/morpho/core/GroupShot;->mClearLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized doProcess([BI)I
    .locals 4
    .param p1, "inData"    # [B
    .param p2, "index"    # I

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v1, :cond_0

    .line 505
    const-string v1, "REwindGroupShot"

    const-string v2, "mNative == 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    const/4 v0, -0x1

    .line 510
    :goto_0
    monitor-exit p0

    return v0

    .line 508
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/morpho/core/GroupShot;->doProcess(I[BI)I

    move-result v0

    .line 509
    .local v0, "ret":I
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doProcess ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 504
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized finish()V
    .locals 4

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    const-string v0, "REwindGroupShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 205
    const/4 v0, 0x6

    iput v0, p0, Lcom/morpho/core/GroupShot;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :try_start_1
    iget v0, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v0, :cond_0

    .line 208
    const-string v0, "REwindGroupShot"

    const-string v1, "mNative == 0!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    :try_start_2
    iget-object v0, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_3
    iget v0, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v0}, Lcom/morpho/core/GroupShot;->deleteNativeObject(I)V

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/morpho/core/GroupShot;->mNative:I

    .line 214
    const/4 v0, 0x0

    sput-object v0, Lcom/morpho/core/GroupShot;->sInstance:Lcom/morpho/core/GroupShot;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 216
    :try_start_4
    iget-object v0, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 216
    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getFaceNum()I
    .locals 4

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v1, :cond_0

    .line 455
    const-string v1, "REwindGroupShot"

    const-string v2, "mNative == 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    const/4 v0, -0x1

    .line 460
    :goto_0
    monitor-exit p0

    return v0

    .line 458
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v1}, Lcom/morpho/core/GroupShot;->getFaceNum(I)I

    move-result v0

    .line 459
    .local v0, "ret":I
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFaceNum ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 454
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getFaceRects([II)I
    .locals 4
    .param p1, "outRects"    # [I
    .param p2, "imageIndex"    # I

    .prologue
    .line 464
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v1, :cond_0

    .line 465
    const-string v1, "REwindGroupShot"

    const-string v2, "mNative == 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    const/4 v0, -0x1

    .line 470
    :goto_0
    monitor-exit p0

    return v0

    .line 468
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v1, p2, p1}, Lcom/morpho/core/GroupShot;->getFaceRects(II[I)I

    move-result v0

    .line 469
    .local v0, "ret":I
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFaceRects ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 464
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPreviewImageBitmap(IIILandroid/graphics/Bitmap;)I
    .locals 7
    .param p1, "ix"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v0, :cond_0

    .line 148
    const-string v0, "REwindGroupShot"

    const-string v1, "mNative == 0!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    const/4 v6, -0x1

    .line 153
    :goto_0
    monitor-exit p0

    return v6

    .line 151
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/morpho/core/GroupShot;->getPreviewImageBitmap(IIIILandroid/graphics/Bitmap;)I

    move-result v6

    .line 152
    .local v6, "ret":I
    const-string v0, "REwindGroupShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewImageBitmap ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScaledOutputImageBitmap(IILandroid/graphics/Bitmap;)I
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "outData"    # Landroid/graphics/Bitmap;

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v1, :cond_0

    .line 158
    const-string v1, "REwindGroupShot"

    const-string v2, "mNative == 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    const/4 v0, -0x1

    .line 163
    :goto_0
    monitor-exit p0

    return v0

    .line 161
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/morpho/core/GroupShot;->getScaledOutputImageBitmap(IIILandroid/graphics/Bitmap;)I

    move-result v0

    .line 162
    .local v0, "ret":I
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScaledOutputImageBitmap ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getTargetImageBitmap(IIIILandroid/graphics/Bitmap;)I
    .locals 8
    .param p1, "id"    # I
    .param p2, "imageIndex"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "outData"    # Landroid/graphics/Bitmap;

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v0, :cond_0

    .line 137
    const-string v0, "REwindGroupShot"

    const-string v1, "mNative == 0!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    const/4 v7, -0x1

    .line 143
    :goto_0
    monitor-exit p0

    return v7

    .line 141
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/morpho/core/GroupShot;->getTargetImageBitmap(IIIIILandroid/graphics/Bitmap;)I

    move-result v7

    .line 142
    .local v7, "ret":I
    const-string v0, "REwindGroupShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTargetImageBitmap ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    .end local v7    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTargetNum()I
    .locals 4

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v1, :cond_0

    .line 335
    const-string v1, "REwindGroupShot"

    const-string v2, "mNative == 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    const/4 v0, -0x1

    .line 340
    :goto_0
    monitor-exit p0

    return v0

    .line 338
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v1}, Lcom/morpho/core/GroupShot;->getTargetNum(I)I

    move-result v0

    .line 339
    .local v0, "ret":I
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTargetNum ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 334
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getTargetRects([I)I
    .locals 4
    .param p1, "outRects"    # [I

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v1, :cond_0

    .line 345
    const-string v1, "REwindGroupShot"

    const-string v2, "mNative == 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    const/4 v0, -0x1

    .line 350
    :goto_0
    monitor-exit p0

    return v0

    .line 348
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/GroupShot;->getTargetRects(I[I)I

    move-result v0

    .line 349
    .local v0, "ret":I
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTargetRects ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 344
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getUseImageList([I)I
    .locals 4
    .param p1, "list"    # [I

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v1, :cond_0

    .line 485
    const-string v1, "REwindGroupShot"

    const-string v2, "mNative == 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    const/4 v0, -0x1

    .line 490
    :goto_0
    monitor-exit p0

    return v0

    .line 488
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/GroupShot;->getUseImageList(I[I)I

    move-result v0

    .line 489
    .local v0, "ret":I
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUseImageList ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 484
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final native getVersion()Ljava/lang/String;
.end method

.method public declared-synchronized initialize(IIIIII)I
    .locals 10
    .param p1, "maxImageNum"    # I
    .param p2, "maxFaceNum"    # I
    .param p3, "picture_width"    # I
    .param p4, "picture_height"    # I
    .param p5, "preview_width"    # I
    .param p6, "preview_height"    # I

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    const-string v0, "REwindGroupShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 169
    const/4 v0, 0x1

    iput v0, p0, Lcom/morpho/core/GroupShot;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :try_start_1
    iget v0, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/morpho/core/GroupShot;->createNativeObject()I

    move-result v0

    iput v0, p0, Lcom/morpho/core/GroupShot;->mNative:I

    .line 173
    iget v0, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v0, :cond_0

    .line 174
    const-string v0, "REwindGroupShot"

    const-string v1, "mNative == 0!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    const/4 v9, -0x1

    .line 182
    :try_start_2
    iget-object v0, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return v9

    .line 178
    :cond_0
    :try_start_3
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/morpho/core/GroupShot;->initializeNativeObject(IIIIIIII)I

    move-result v9

    .line 179
    .local v9, "ret":I
    const-string v0, "REwindGroupShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 182
    :try_start_4
    iget-object v0, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 167
    .end local v9    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 182
    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized reset()V
    .locals 4

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    const-string v0, "REwindGroupShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/morpho/core/GroupShot;->mClearLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 189
    iget-object v0, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :try_start_1
    sget-object v0, Lcom/morpho/core/GroupShot;->sInstance:Lcom/morpho/core/GroupShot;

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/morpho/core/GroupShot;->sInstance:Lcom/morpho/core/GroupShot;

    invoke-virtual {v0}, Lcom/morpho/core/GroupShot;->attach_end()I

    .line 193
    sget-object v0, Lcom/morpho/core/GroupShot;->sInstance:Lcom/morpho/core/GroupShot;

    invoke-virtual {v0}, Lcom/morpho/core/GroupShot;->clearImages()I

    .line 194
    sget-object v0, Lcom/morpho/core/GroupShot;->sInstance:Lcom/morpho/core/GroupShot;

    invoke-virtual {v0}, Lcom/morpho/core/GroupShot;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/morpho/core/GroupShot;->mClearLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 198
    iget-object v0, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 200
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/morpho/core/GroupShot;->mClearLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 198
    iget-object v1, p0, Lcom/morpho/core/GroupShot;->mFinishLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized selectImage(II)I
    .locals 4
    .param p1, "targetRectId"    # I
    .param p2, "SwapImageId"    # I

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v1, :cond_0

    .line 415
    const-string v1, "REwindGroupShot"

    const-string v2, "mNative == 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    const/4 v0, -0x1

    .line 420
    :goto_0
    monitor-exit p0

    return v0

    .line 418
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/morpho/core/GroupShot;->selectTarget(III)I

    move-result v0

    .line 419
    .local v0, "ret":I
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectImage ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 414
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setBaseImage(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v1, :cond_0

    .line 292
    const-string v1, "REwindGroupShot"

    const-string v2, "mNative == 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    const/4 v0, -0x1

    .line 297
    :goto_0
    monitor-exit p0

    return v0

    .line 295
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/GroupShot;->setBaseImage(II)I

    move-result v0

    .line 296
    .local v0, "ret":I
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBaseImage ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 291
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setOutput(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "outData"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 494
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v1, :cond_0

    .line 495
    const-string v1, "REwindGroupShot"

    const-string v2, "mNative == 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    const/4 v0, -0x1

    .line 500
    :goto_0
    monitor-exit p0

    return v0

    .line 498
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/GroupShot;->setOutput(ILjava/nio/ByteBuffer;)I

    move-result v0

    .line 499
    .local v0, "ret":I
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOutput ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 494
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopPreview()I
    .locals 4

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    if-nez v1, :cond_0

    .line 475
    const-string v1, "REwindGroupShot"

    const-string v2, "mNative == 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    const/4 v0, -0x1

    .line 480
    :goto_0
    monitor-exit p0

    return v0

    .line 478
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/morpho/core/GroupShot;->mNative:I

    invoke-direct {p0, v1}, Lcom/morpho/core/GroupShot;->stopPreview(I)I

    move-result v0

    .line 479
    .local v0, "ret":I
    const-string v1, "REwindGroupShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPreview ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 474
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
