.class Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;
.super Ljava/lang/Thread;
.source "BlockingGLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/views/BlockingGLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderThread"
.end annotation


# static fields
.field private static final CHANGE_SURFACE:I = 0x2

.field private static final FINISH:I = 0x4

.field private static final INVALID:I = -0x1

.field private static final RENDER:I = 0x1

.field private static final RESIZE_SURFACE:I = 0x3


# instance fields
.field private mEglHelper:Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;

.field private mExecMsgId:I

.field private mFinished:Z

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mHeight:I

.field private mLock:Ljava/lang/Object;

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 326
    const-string v0, "RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 309
    new-instance v0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;-><init>(Lcom/lenovo/scg/photos/views/BlockingGLTextureView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;

    .line 311
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    .line 313
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mFinished:Z

    .line 327
    iput-object p1, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 328
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->start()V

    .line 329
    return-void
.end method

.method private checkRenderer()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Renderer is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    return-void
.end method

.method private checkSurface()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surface is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    return-void
.end method

.method private exec(I)V
    .locals 3
    .param p1, "msgid"    # I

    .prologue
    .line 378
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Message already set - multithreaded access?"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 382
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    .line 383
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    :try_start_2
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 388
    return-void

    .line 386
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleMessageLocked(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 391
    packed-switch p1, :pswitch_data_0

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 393
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;

    iget-object v1, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;->createSurface(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 395
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;

    iget-object v2, v2, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    goto :goto_0

    .line 399
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mWidth:I

    iget v3, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mHeight:I

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    goto :goto_0

    .line 402
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 403
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;->swap()I

    goto :goto_0

    .line 406
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;->destroySurface()V

    .line 407
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;->finish()V

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mFinished:Z

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 371
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->exec(I)V

    .line 373
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public render()V
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->checkRenderer()V

    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->exec(I)V

    .line 365
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 367
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 415
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$EglHelper;->start()V

    .line 417
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mFinished:Z

    if-nez v0, :cond_1

    .line 418
    :goto_1
    iget v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 420
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 421
    :catch_0
    move-exception v0

    goto :goto_1

    .line 423
    :cond_0
    :try_start_2
    iget v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->handleMessageLocked(I)V

    .line 424
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    .line 425
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 428
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->checkRenderer()V

    .line 355
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->checkSurface()V

    .line 356
    iput p1, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mWidth:I

    .line 357
    iput p2, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mHeight:I

    .line 358
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->exec(I)V

    .line 359
    return-void
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 346
    if-eqz p1, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->checkRenderer()V

    .line 349
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 350
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lenovo/scg/photos/views/BlockingGLTextureView$RenderThread;->exec(I)V

    .line 351
    return-void
.end method
