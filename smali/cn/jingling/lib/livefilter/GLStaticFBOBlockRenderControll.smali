.class public Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;
.super Ljava/lang/Object;
.source "GLStaticFBOBlockRenderControll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;
    }
.end annotation


# static fields
.field private static final BLOCK_OFFSET:I = 0x32

.field private static final BLOCK_SIZE:I = 0x5dc

.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final GL_MSG_DRAW:I = 0x2

.field private static final GL_MSG_INIT:I = 0x1

.field private static final GL_RELEASE:I = 0x3

.field private static final ROOT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GL_FBO_BLOCK_HANDLE"


# instance fields
.field private initialized:Z

.field private mCurrentBlockPosition:Lcn/jingling/lib/livefilter/NormalizedRect;

.field private mCurrentFilterLabel:Ljava/lang/String;

.field private mCurrentOriginalBmBlock:Landroid/graphics/Bitmap;

.field private mCurrentPerformedBmBlock:Landroid/graphics/Bitmap;

.field private mCx:Landroid/content/Context;

.field private mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLHandler:Landroid/os/Handler;

.field private mMutex:Ljava/lang/Object;

.field private mStaticGLThread:Landroid/os/HandlerThread;

.field private mStaticRender:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRender;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/motusdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->ROOT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->initialized:Z

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mMutex:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->glinitEGLContext()V

    return-void
.end method

.method static synthetic access$1(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Lcn/jingling/lib/livefilter/GLStaticFBOBlockRender;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mStaticRender:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRender;

    return-object v0
.end method

.method static synthetic access$10(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mStaticGLThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$2(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->initialized:Z

    return-void
.end method

.method static synthetic access$4(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentFilterLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentOriginalBmBlock:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$7(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Lcn/jingling/lib/livefilter/NormalizedRect;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentBlockPosition:Lcn/jingling/lib/livefilter/NormalizedRect;

    return-object v0
.end method

.method static synthetic access$8(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentPerformedBmBlock:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$9(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->glReleaseEGLContext()V

    return-void
.end method

.method private calStep(II)I
    .locals 2
    .param p1, "totalSize"    # I
    .param p2, "blockSize"    # I

    .prologue
    .line 105
    const/4 v0, 0x1

    .line 106
    .local v0, "step":I
    div-int v1, p1, v0

    .line 107
    .local v1, "stepSize":I
    :goto_0
    if-gt v1, p2, :cond_0

    .line 111
    return v0

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 109
    div-int v1, p1, v0

    goto :goto_0
.end method

.method private drawSingleBlock(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 498
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 499
    :try_start_0
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentFilterLabel:Ljava/lang/String;

    .line 500
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mGLHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :try_start_1
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mMutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentPerformedBmBlock:Landroid/graphics/Bitmap;

    monitor-exit v2

    return-object v1

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 498
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private fillPixels([I[IIIIII)V
    .locals 5
    .param p1, "src"    # [I
    .param p2, "dst"    # [I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "srcWidth"    # I

    .prologue
    .line 471
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p6, :cond_0

    .line 481
    return-void

    .line 473
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, p5, :cond_1

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_1
    mul-int v2, v0, p5

    add-int/2addr v2, v1

    add-int v3, p4, v0

    mul-int/2addr v3, p7

    add-int v4, p3, v1

    add-int/2addr v3, v4

    aget v3, p1, v3

    aput v3, p2, v2

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private fillPixels2([I[IIIIII)V
    .locals 4
    .param p1, "src"    # [I
    .param p2, "dst"    # [I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "srcWidth"    # I

    .prologue
    .line 486
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p6, :cond_0

    .line 492
    return-void

    .line 487
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, p5, :cond_1

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    :cond_1
    add-int v2, p4, v0

    mul-int/2addr v2, p7

    add-int v3, p3, v1

    add-int/2addr v2, v3

    mul-int v3, v0, p5

    add-int/2addr v3, v1

    aget v3, p2, v3

    aput v3, p1, v2

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private glReleaseEGLContext()V
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 568
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 569
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 570
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 571
    return-void
.end method

.method private glinitEGLContext()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 519
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 520
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 521
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v9}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 522
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "eglGetDisplay failed : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    const/16 v0, 0x11

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 538
    .local v2, "configAttribs":[I
    new-array v5, v4, [I

    .line 539
    .local v5, "numConfigs":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 540
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "eglChooseConfig failed : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_1
    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_1

    .line 549
    .local v6, "contextAttribs":[I
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v3, v9

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v4, v8, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 550
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v3, v9

    iget-object v8, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v9, 0x0

    invoke-interface {v0, v1, v4, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 551
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_4

    .line 552
    :cond_2
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v7

    .line 553
    .local v7, "error":I
    const/16 v0, 0x300b

    if-ne v7, v0, :cond_3

    .line 554
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglCreateWindowSurface returned  EGL_BAD_NATIVE_WINDOW. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "eglCreateWindowSurface failed : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    .end local v7    # "error":I
    :cond_4
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v8, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v9, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v4, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 561
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "eglMakeCurrent failed : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_5
    return-void

    .line 526
    :array_0
    .array-data 4
        0x3020
        0x20
        0x3021
        0x8
        0x3022
        0x8
        0x3023
        0x8
        0x3024
        0x8
        0x3025
        0x8
        0x3040
        0x4
        0x3033
        0x4
        0x3038
    .end array-data

    .line 545
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public drawFrame(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 62
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "inPathUri"    # Landroid/net/Uri;

    .prologue
    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rs"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 117
    .local v51, "rsLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCx:Landroid/content/Context;

    move-object/from16 v0, v51

    invoke-static {v4, v0}, Lcn/jingling/lib/filters/FilterFactory;->createRealsizeFilter(Landroid/content/Context;Ljava/lang/String;)Lcn/jingling/lib/filters/RealsizeFilter;

    move-result-object v47

    .line 122
    .local v47, "mFilter":Lcn/jingling/lib/filters/RealsizeFilter;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->ROOT:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".jpg"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 124
    .local v48, "outPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCx:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcn/jingling/lib/file/ImageFile;->getRealPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v42

    .line 127
    .local v42, "inPath":Ljava/lang/String;
    move-object/from16 v0, v42

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    const-string v4, "Realsize error : inPath and outPath can\'t be the same !"

    const-string v7, "GL_FBO_BLOCK_HANDLE"

    invoke-static {v4, v7}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/16 v48, 0x0

    .line 459
    .end local v48    # "outPath":Ljava/lang/String;
    :goto_0
    return-object v48

    .line 137
    .restart local v48    # "outPath":Ljava/lang/String;
    :cond_0
    invoke-static/range {v42 .. v42}, Lcn/jingling/lib/jpegsupport/JpegSupport;->initJpegReader(Ljava/lang/String;)I

    move-result v43

    .line 139
    .local v43, "initReader":I
    if-eqz v43, :cond_1

    .line 140
    const-string v4, "Realsize error : initJpegReader failed !"

    const-string v7, "GL_FBO_BLOCK_HANDLE"

    invoke-static {v4, v7}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/16 v48, 0x0

    goto :goto_0

    .line 144
    :cond_1
    const/4 v4, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x5a

    move-object/from16 v0, v48

    invoke-static {v0, v4, v7, v8}, Lcn/jingling/lib/jpegsupport/JpegSupport;->initJpegWriter(Ljava/lang/String;III)I

    move-result v44

    .line 146
    .local v44, "initWriter":I
    if-eqz v44, :cond_2

    .line 147
    const-string v4, "Realsize error : initJpegWriter failed !"

    const-string v7, "GL_FBO_BLOCK_HANDLE"

    invoke-static {v4, v7}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/16 v48, 0x0

    goto :goto_0

    .line 151
    :cond_2
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->getReaderSrcImageWidth()I

    move-result v9

    .line 153
    .local v9, "width":I
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->getReaderSrcImageHeight()I

    move-result v40

    .line 155
    .local v40, "height":I
    const/16 v4, 0x5dc

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->calStep(II)I

    move-result v52

    .line 156
    .local v52, "stepHorizontal":I
    div-int v53, v9, v52

    .line 158
    .local v53, "stepSizeHorizontal":I
    const/16 v4, 0x5dc

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1, v4}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->calStep(II)I

    move-result v55

    .line 159
    .local v55, "stepVertical":I
    div-int v14, v40, v55

    .line 161
    .local v14, "stepSizeVertical":I
    const-string/jumbo v4, "zhijiankun"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "width : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string/jumbo v4, "zhijiankun"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "height : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string/jumbo v4, "zhijiankun"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "stepHorizontal : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string/jumbo v4, "zhijiankun"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "stepSizeHorizontal : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v53

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string/jumbo v4, "zhijiankun"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "stepVertical : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v55

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string/jumbo v4, "zhijiankun"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "stepSizeVertical : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    add-int/lit8 v4, v14, 0x64

    mul-int/2addr v4, v9

    new-array v5, v4, [I

    .line 169
    .local v5, "pixelsFromReader":[I
    mul-int v4, v9, v14

    new-array v0, v4, [I

    move-object/from16 v49, v0

    .line 170
    .local v49, "pixelsForWriter":[I
    mul-int/lit8 v4, v9, 0x64

    new-array v12, v4, [I

    .line 172
    .local v12, "pixelsBuffer":[I
    const/16 v37, 0x0

    .line 173
    .local v37, "currentJpegReadLine":I
    const/16 v38, 0x0

    .line 190
    .local v38, "currentJpegWriteLine":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    .line 193
    .local v56, "time":J
    const/16 v19, 0x32

    .line 194
    .local v19, "y1":I
    add-int/lit8 v21, v14, 0x32

    .line 195
    .local v21, "h1":I
    const/16 v61, 0x0

    .line 196
    .local v61, "y2":I
    move/from16 v39, v14

    .line 199
    .local v39, "h2":I
    add-int/lit8 v4, v14, 0x32

    invoke-static {v4}, Lcn/jingling/lib/jpegsupport/JpegSupport;->readJpegLines(I)[I

    move-result-object v6

    .line 200
    .local v6, "pixelsTmp":[I
    add-int/lit8 v4, v14, 0x32

    add-int v37, v37, v4

    .line 203
    const/4 v7, 0x0

    const/16 v8, 0x32

    add-int/lit8 v10, v14, 0x32

    move-object/from16 v4, p0

    move v11, v9

    invoke-direct/range {v4 .. v11}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels2([I[IIIIII)V

    .line 205
    const/4 v13, 0x0

    const/16 v16, 0x64

    move-object/from16 v10, p0

    move-object v11, v5

    move v15, v9

    move/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels([I[IIIIII)V

    .line 208
    const/4 v6, 0x0

    .line 210
    add-int v37, v37, v21

    .line 211
    const/16 v35, 0x0

    .line 212
    .local v35, "currentBlockColumn":I
    const/16 v36, 0x0

    .line 214
    .local v36, "currentBlockRow":I
    const/16 v45, 0x0

    .local v45, "j":I
    :goto_1
    move/from16 v0, v45

    move/from16 v1, v52

    if-lt v0, v1, :cond_5

    .line 274
    move-object/from16 v0, v49

    invoke-static {v0, v14}, Lcn/jingling/lib/jpegsupport/JpegSupport;->writeJpegLines([II)I

    .line 278
    const/4 v4, 0x2

    move/from16 v0, v55

    if-le v0, v4, :cond_3

    .line 280
    const/16 v19, 0x0

    .line 281
    add-int/lit8 v21, v14, 0x64

    .line 282
    const/16 v61, 0x32

    .line 283
    move/from16 v39, v14

    .line 285
    const/16 v41, 0x1

    .local v41, "i":I
    :goto_2
    add-int/lit8 v4, v55, -0x1

    move/from16 v0, v41

    if-lt v0, v4, :cond_8

    .line 361
    .end local v41    # "i":I
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v55

    if-le v0, v4, :cond_4

    .line 363
    add-int/lit8 v4, v55, -0x1

    mul-int/2addr v4, v14

    sub-int v54, v40, v4

    .line 364
    .local v54, "stepSizeVerticalLast":I
    add-int/lit8 v4, v54, 0x64

    mul-int/2addr v4, v9

    new-array v5, v4, [I

    .line 365
    mul-int v4, v9, v54

    new-array v0, v4, [I

    move-object/from16 v49, v0

    .line 367
    const/16 v19, 0x0

    .line 368
    add-int/lit8 v21, v54, 0x32

    .line 369
    const/16 v61, 0x32

    .line 370
    move/from16 v39, v54

    .line 372
    add-int/lit8 v4, v54, -0x32

    invoke-static {v4}, Lcn/jingling/lib/jpegsupport/JpegSupport;->readJpegLines(I)[I

    move-result-object v6

    .line 373
    add-int/lit8 v4, v54, -0x32

    add-int v37, v37, v4

    .line 375
    const/4 v7, 0x0

    const/16 v8, 0x64

    add-int/lit8 v10, v54, -0x32

    move-object/from16 v4, p0

    move v11, v9

    invoke-direct/range {v4 .. v11}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels2([I[IIIIII)V

    .line 376
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x64

    move-object/from16 v25, p0

    move-object/from16 v26, v5

    move-object/from16 v27, v12

    move/from16 v30, v9

    move/from16 v32, v9

    invoke-direct/range {v25 .. v32}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels2([I[IIIIII)V

    .line 380
    const/4 v6, 0x0

    .line 382
    const/4 v6, 0x0

    .line 384
    add-int v37, v37, v21

    .line 385
    const/16 v35, 0x0

    .line 386
    const/16 v36, 0x0

    .line 388
    const/16 v45, 0x0

    :goto_3
    move/from16 v0, v45

    move/from16 v1, v52

    if-lt v0, v1, :cond_c

    .line 442
    move-object/from16 v0, v49

    move/from16 v1, v54

    invoke-static {v0, v1}, Lcn/jingling/lib/jpegsupport/JpegSupport;->writeJpegLines([II)I

    .line 447
    .end local v54    # "stepSizeVerticalLast":I
    :cond_4
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->finishReadingAndRelease()V

    .line 449
    const-string/jumbo v4, "zhijiankun"

    const-string v7, "finishReadingAndRelease"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->finishWritingAndRelease()V

    .line 453
    const-string/jumbo v4, "zhijiankun"

    const-string/jumbo v7, "the real end"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 216
    :cond_5
    if-nez v45, :cond_6

    .line 217
    const/16 v18, 0x0

    .line 218
    .local v18, "x1":I
    add-int/lit8 v4, v53, 0x0

    add-int/lit8 v20, v4, 0x32

    .line 219
    .local v20, "w1":I
    const/16 v60, 0x0

    .line 220
    .local v60, "x2":I
    move/from16 v59, v53

    .line 222
    .local v59, "w2":I
    add-int v35, v35, v53

    .line 239
    :goto_4
    mul-int v4, v20, v21

    new-array v0, v4, [I

    move-object/from16 v17, v0

    .local v17, "blockPixels":[I
    move-object/from16 v15, p0

    move-object/from16 v16, v5

    move/from16 v22, v9

    .line 240
    invoke-direct/range {v15 .. v22}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels([I[IIIIII)V

    .line 242
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    .line 243
    .local v33, "bm":Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentOriginalBmBlock:Landroid/graphics/Bitmap;

    .line 245
    move/from16 v0, v18

    int-to-float v4, v0

    int-to-float v7, v9

    div-float v46, v4, v7

    .line 246
    .local v46, "left":F
    move/from16 v0, v20

    int-to-float v4, v0

    int-to-float v7, v9

    div-float/2addr v4, v7

    add-float v50, v46, v4

    .line 247
    .local v50, "right":F
    const/16 v58, 0x0

    .line 248
    .local v58, "top":F
    move/from16 v0, v21

    int-to-float v4, v0

    move/from16 v0, v40

    int-to-float v7, v0

    div-float v34, v4, v7

    .line 250
    .local v34, "bottom":F
    const-string/jumbo v4, "zhijiankun"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "left = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v8, v9

    mul-float v8, v8, v46

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string/jumbo v4, "zhijiankun"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "right = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v8, v9

    mul-float v8, v8, v50

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v4, Lcn/jingling/lib/livefilter/NormalizedRect;

    move/from16 v0, v46

    move/from16 v1, v50

    move/from16 v2, v58

    move/from16 v3, v34

    invoke-direct {v4, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/NormalizedRect;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentBlockPosition:Lcn/jingling/lib/livefilter/NormalizedRect;

    .line 256
    invoke-direct/range {p0 .. p1}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->drawSingleBlock(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentPerformedBmBlock:Landroid/graphics/Bitmap;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentPerformedBmBlock:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v17

    move/from16 v25, v20

    move/from16 v28, v20

    move/from16 v29, v21

    invoke-virtual/range {v22 .. v29}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 261
    mul-int v4, v59, v39

    new-array v0, v4, [I

    move-object/from16 v24, v0

    .local v24, "performPixels":[I
    move-object/from16 v22, p0

    move-object/from16 v23, v17

    move/from16 v25, v60

    move/from16 v26, v61

    move/from16 v27, v59

    move/from16 v28, v39

    move/from16 v29, v20

    .line 263
    invoke-direct/range {v22 .. v29}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels([I[IIIIII)V

    .line 266
    mul-int v25, v53, v45

    const/16 v26, 0x0

    move-object/from16 v22, p0

    move-object/from16 v23, v49

    move/from16 v27, v59

    move/from16 v28, v39

    move/from16 v29, v9

    invoke-direct/range {v22 .. v29}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels2([I[IIIIII)V

    .line 267
    const/16 v17, 0x0

    .line 268
    const/16 v24, 0x0

    .line 270
    const-string/jumbo v4, "zhijiankun"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "end of row 1 block "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v45, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v56

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_1

    .line 224
    .end local v17    # "blockPixels":[I
    .end local v18    # "x1":I
    .end local v20    # "w1":I
    .end local v24    # "performPixels":[I
    .end local v33    # "bm":Landroid/graphics/Bitmap;
    .end local v34    # "bottom":F
    .end local v46    # "left":F
    .end local v50    # "right":F
    .end local v58    # "top":F
    .end local v59    # "w2":I
    .end local v60    # "x2":I
    :cond_6
    add-int/lit8 v4, v52, -0x1

    move/from16 v0, v45

    if-ne v0, v4, :cond_7

    .line 225
    add-int/lit8 v18, v35, -0x32

    .line 226
    .restart local v18    # "x1":I
    sub-int v20, v9, v18

    .line 227
    .restart local v20    # "w1":I
    const/16 v60, 0x32

    .line 228
    .restart local v60    # "x2":I
    add-int/lit8 v59, v20, -0x32

    .line 229
    .restart local v59    # "w2":I
    move/from16 v35, v9

    .line 231
    goto/16 :goto_4

    .line 232
    .end local v18    # "x1":I
    .end local v20    # "w1":I
    .end local v59    # "w2":I
    .end local v60    # "x2":I
    :cond_7
    add-int/lit8 v18, v35, -0x32

    .line 233
    .restart local v18    # "x1":I
    add-int/lit8 v20, v53, 0x64

    .line 234
    .restart local v20    # "w1":I
    const/16 v60, 0x32

    .line 235
    .restart local v60    # "x2":I
    move/from16 v59, v53

    .line 236
    .restart local v59    # "w2":I
    add-int v35, v35, v53

    goto/16 :goto_4

    .line 287
    .end local v18    # "x1":I
    .end local v20    # "w1":I
    .end local v59    # "w2":I
    .end local v60    # "x2":I
    .restart local v41    # "i":I
    :cond_8
    invoke-static {v14}, Lcn/jingling/lib/jpegsupport/JpegSupport;->readJpegLines(I)[I

    move-result-object v6

    .line 288
    add-int v37, v37, v14

    .line 290
    const/4 v7, 0x0

    const/16 v8, 0x64

    move-object/from16 v4, p0

    move v10, v14

    move v11, v9

    invoke-direct/range {v4 .. v11}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels2([I[IIIIII)V

    .line 291
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x64

    move-object/from16 v25, p0

    move-object/from16 v26, v5

    move-object/from16 v27, v12

    move/from16 v30, v9

    move/from16 v32, v9

    invoke-direct/range {v25 .. v32}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels2([I[IIIIII)V

    .line 293
    const/16 v28, 0x0

    const/16 v31, 0x64

    move-object/from16 v25, p0

    move-object/from16 v26, v5

    move-object/from16 v27, v12

    move/from16 v29, v14

    move/from16 v30, v9

    move/from16 v32, v9

    invoke-direct/range {v25 .. v32}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels([I[IIIIII)V

    .line 295
    const/4 v6, 0x0

    .line 298
    const/16 v35, 0x0

    .line 299
    const/16 v36, 0x0

    .line 301
    const/16 v45, 0x0

    :goto_5
    move/from16 v0, v45

    move/from16 v1, v52

    if-lt v0, v1, :cond_9

    .line 355
    move-object/from16 v0, v49

    invoke-static {v0, v14}, Lcn/jingling/lib/jpegsupport/JpegSupport;->writeJpegLines([II)I

    .line 285
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_2

    .line 303
    :cond_9
    if-nez v45, :cond_a

    .line 304
    const/16 v18, 0x0

    .line 305
    .restart local v18    # "x1":I
    add-int/lit8 v4, v53, 0x0

    add-int/lit8 v20, v4, 0x32

    .line 306
    .restart local v20    # "w1":I
    const/16 v60, 0x0

    .line 307
    .restart local v60    # "x2":I
    move/from16 v59, v53

    .line 309
    .restart local v59    # "w2":I
    add-int v35, v35, v53

    .line 326
    :goto_6
    mul-int v4, v20, v21

    new-array v0, v4, [I

    move-object/from16 v17, v0

    .restart local v17    # "blockPixels":[I
    move-object/from16 v15, p0

    move-object/from16 v16, v5

    move/from16 v22, v9

    .line 327
    invoke-direct/range {v15 .. v22}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels([I[IIIIII)V

    .line 329
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    .line 330
    .restart local v33    # "bm":Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentOriginalBmBlock:Landroid/graphics/Bitmap;

    .line 332
    move/from16 v0, v18

    int-to-float v4, v0

    int-to-float v7, v9

    div-float v46, v4, v7

    .line 333
    .restart local v46    # "left":F
    move/from16 v0, v20

    int-to-float v4, v0

    int-to-float v7, v9

    div-float/2addr v4, v7

    add-float v50, v46, v4

    .line 334
    .restart local v50    # "right":F
    mul-int v4, v41, v14

    add-int/lit8 v4, v4, -0x32

    int-to-float v4, v4

    move/from16 v0, v40

    int-to-float v7, v0

    div-float v58, v4, v7

    .line 335
    .restart local v58    # "top":F
    move/from16 v0, v21

    int-to-float v4, v0

    move/from16 v0, v40

    int-to-float v7, v0

    div-float/2addr v4, v7

    add-float v34, v58, v4

    .line 337
    .restart local v34    # "bottom":F
    new-instance v4, Lcn/jingling/lib/livefilter/NormalizedRect;

    move/from16 v0, v46

    move/from16 v1, v50

    move/from16 v2, v58

    move/from16 v3, v34

    invoke-direct {v4, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/NormalizedRect;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentBlockPosition:Lcn/jingling/lib/livefilter/NormalizedRect;

    .line 339
    invoke-direct/range {p0 .. p1}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->drawSingleBlock(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentPerformedBmBlock:Landroid/graphics/Bitmap;

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentPerformedBmBlock:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v26, v17

    move/from16 v28, v20

    move/from16 v31, v20

    move/from16 v32, v21

    invoke-virtual/range {v25 .. v32}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 343
    mul-int v4, v59, v39

    new-array v0, v4, [I

    move-object/from16 v24, v0

    .restart local v24    # "performPixels":[I
    move-object/from16 v22, p0

    move-object/from16 v23, v17

    move/from16 v25, v60

    move/from16 v26, v61

    move/from16 v27, v59

    move/from16 v28, v39

    move/from16 v29, v20

    .line 345
    invoke-direct/range {v22 .. v29}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels([I[IIIIII)V

    .line 347
    mul-int v25, v53, v45

    const/16 v26, 0x0

    move-object/from16 v22, p0

    move-object/from16 v23, v49

    move/from16 v27, v59

    move/from16 v28, v39

    move/from16 v29, v9

    invoke-direct/range {v22 .. v29}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels2([I[IIIIII)V

    .line 348
    const/16 v17, 0x0

    .line 349
    const/16 v24, 0x0

    .line 351
    const-string/jumbo v4, "zhijiankun"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "end of row "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v41, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " block "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v45, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v56

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_5

    .line 311
    .end local v17    # "blockPixels":[I
    .end local v18    # "x1":I
    .end local v20    # "w1":I
    .end local v24    # "performPixels":[I
    .end local v33    # "bm":Landroid/graphics/Bitmap;
    .end local v34    # "bottom":F
    .end local v46    # "left":F
    .end local v50    # "right":F
    .end local v58    # "top":F
    .end local v59    # "w2":I
    .end local v60    # "x2":I
    :cond_a
    add-int/lit8 v4, v52, -0x1

    move/from16 v0, v45

    if-ne v0, v4, :cond_b

    .line 312
    add-int/lit8 v18, v35, -0x32

    .line 313
    .restart local v18    # "x1":I
    sub-int v20, v9, v18

    .line 314
    .restart local v20    # "w1":I
    const/16 v60, 0x32

    .line 315
    .restart local v60    # "x2":I
    add-int/lit8 v59, v20, -0x32

    .line 316
    .restart local v59    # "w2":I
    move/from16 v35, v9

    .line 318
    goto/16 :goto_6

    .line 319
    .end local v18    # "x1":I
    .end local v20    # "w1":I
    .end local v59    # "w2":I
    .end local v60    # "x2":I
    :cond_b
    add-int/lit8 v18, v35, -0x32

    .line 320
    .restart local v18    # "x1":I
    add-int/lit8 v20, v53, 0x64

    .line 321
    .restart local v20    # "w1":I
    const/16 v60, 0x32

    .line 322
    .restart local v60    # "x2":I
    move/from16 v59, v53

    .line 323
    .restart local v59    # "w2":I
    add-int v35, v35, v53

    goto/16 :goto_6

    .line 390
    .end local v18    # "x1":I
    .end local v20    # "w1":I
    .end local v41    # "i":I
    .end local v59    # "w2":I
    .end local v60    # "x2":I
    .restart local v54    # "stepSizeVerticalLast":I
    :cond_c
    if-nez v45, :cond_d

    .line 391
    const/16 v18, 0x0

    .line 392
    .restart local v18    # "x1":I
    add-int/lit8 v4, v53, 0x0

    add-int/lit8 v20, v4, 0x32

    .line 393
    .restart local v20    # "w1":I
    const/16 v60, 0x0

    .line 394
    .restart local v60    # "x2":I
    move/from16 v59, v53

    .line 396
    .restart local v59    # "w2":I
    add-int v35, v35, v53

    .line 413
    :goto_7
    mul-int v4, v20, v21

    new-array v0, v4, [I

    move-object/from16 v17, v0

    .restart local v17    # "blockPixels":[I
    move-object/from16 v15, p0

    move-object/from16 v16, v5

    move/from16 v22, v9

    .line 414
    invoke-direct/range {v15 .. v22}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels([I[IIIIII)V

    .line 416
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    .line 417
    .restart local v33    # "bm":Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentOriginalBmBlock:Landroid/graphics/Bitmap;

    .line 419
    move/from16 v0, v18

    int-to-float v4, v0

    int-to-float v7, v9

    div-float v46, v4, v7

    .line 420
    .restart local v46    # "left":F
    move/from16 v0, v20

    int-to-float v4, v0

    int-to-float v7, v9

    div-float/2addr v4, v7

    add-float v50, v46, v4

    .line 421
    .restart local v50    # "right":F
    sub-int v4, v40, v54

    add-int/lit8 v4, v4, -0x32

    int-to-float v4, v4

    move/from16 v0, v40

    int-to-float v7, v0

    div-float v58, v4, v7

    .line 422
    .restart local v58    # "top":F
    move/from16 v0, v21

    int-to-float v4, v0

    move/from16 v0, v40

    int-to-float v7, v0

    div-float/2addr v4, v7

    add-float v34, v58, v4

    .line 424
    .restart local v34    # "bottom":F
    new-instance v4, Lcn/jingling/lib/livefilter/NormalizedRect;

    move/from16 v0, v46

    move/from16 v1, v50

    move/from16 v2, v58

    move/from16 v3, v34

    invoke-direct {v4, v0, v1, v2, v3}, Lcn/jingling/lib/livefilter/NormalizedRect;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentBlockPosition:Lcn/jingling/lib/livefilter/NormalizedRect;

    .line 426
    invoke-direct/range {p0 .. p1}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->drawSingleBlock(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentPerformedBmBlock:Landroid/graphics/Bitmap;

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentPerformedBmBlock:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v26, v17

    move/from16 v28, v20

    move/from16 v31, v20

    move/from16 v32, v21

    invoke-virtual/range {v25 .. v32}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 431
    mul-int v4, v59, v39

    new-array v0, v4, [I

    move-object/from16 v24, v0

    .restart local v24    # "performPixels":[I
    move-object/from16 v22, p0

    move-object/from16 v23, v17

    move/from16 v25, v60

    move/from16 v26, v61

    move/from16 v27, v59

    move/from16 v28, v39

    move/from16 v29, v20

    .line 433
    invoke-direct/range {v22 .. v29}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels([I[IIIIII)V

    .line 435
    mul-int v25, v53, v45

    const/16 v26, 0x0

    move-object/from16 v22, p0

    move-object/from16 v23, v49

    move/from16 v27, v59

    move/from16 v28, v39

    move/from16 v29, v9

    invoke-direct/range {v22 .. v29}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->fillPixels2([I[IIIIII)V

    .line 436
    const/16 v17, 0x0

    .line 437
    const/16 v24, 0x0

    .line 439
    const-string/jumbo v4, "zhijiankun"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "end of row "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v55

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " block "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v45, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v56

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_3

    .line 398
    .end local v17    # "blockPixels":[I
    .end local v18    # "x1":I
    .end local v20    # "w1":I
    .end local v24    # "performPixels":[I
    .end local v33    # "bm":Landroid/graphics/Bitmap;
    .end local v34    # "bottom":F
    .end local v46    # "left":F
    .end local v50    # "right":F
    .end local v58    # "top":F
    .end local v59    # "w2":I
    .end local v60    # "x2":I
    :cond_d
    add-int/lit8 v4, v52, -0x1

    move/from16 v0, v45

    if-ne v0, v4, :cond_e

    .line 399
    add-int/lit8 v18, v35, -0x32

    .line 400
    .restart local v18    # "x1":I
    sub-int v20, v9, v18

    .line 401
    .restart local v20    # "w1":I
    const/16 v60, 0x32

    .line 402
    .restart local v60    # "x2":I
    add-int/lit8 v59, v20, -0x32

    .line 403
    .restart local v59    # "w2":I
    move/from16 v35, v9

    .line 405
    goto/16 :goto_7

    .line 406
    .end local v18    # "x1":I
    .end local v20    # "w1":I
    .end local v59    # "w2":I
    .end local v60    # "x2":I
    :cond_e
    add-int/lit8 v18, v35, -0x32

    .line 407
    .restart local v18    # "x1":I
    add-int/lit8 v20, v53, 0x64

    .line 408
    .restart local v20    # "w1":I
    const/16 v60, 0x32

    .line 409
    .restart local v60    # "x2":I
    move/from16 v59, v53

    .line 410
    .restart local v59    # "w2":I
    add-int v35, v35, v53

    goto/16 :goto_7
.end method

.method public init(Landroid/content/Context;)V
    .locals 5
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 71
    invoke-static {p1}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 72
    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->initialized:Z

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    iput-boolean v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->initialized:Z

    .line 76
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCx:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StaticGLThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mStaticGLThread:Landroid/os/HandlerThread;

    .line 78
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mStaticGLThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 79
    new-instance v0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRender;

    invoke-direct {v0}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRender;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mStaticRender:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRender;

    .line 80
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mStaticGLThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;-><init>(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mGLHandler:Landroid/os/Handler;

    .line 81
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mGLHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mGLHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 98
    iput-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mGLHandler:Landroid/os/Handler;

    .line 99
    iput-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentOriginalBmBlock:Landroid/graphics/Bitmap;

    .line 100
    iput-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCx:Landroid/content/Context;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->initialized:Z

    .line 102
    return-void
.end method
