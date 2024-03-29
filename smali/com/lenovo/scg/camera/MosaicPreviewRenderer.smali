.class public Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
.super Ljava/lang/Object;
.source "MosaicPreviewRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;
    }
.end annotation


# static fields
.field private static final CONFIG_SPEC:[I

.field private static final DEBUG:Z = false

.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MosaicPreviewRenderer"


# instance fields
.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglHandler:Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mEglThread:Landroid/os/HandlerThread;

.field private mEglThreadBlockVar:Landroid/os/ConditionVariable;

.field private mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private mHeight:I

.field private mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mIsLandscape:Z

.field private mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mTransformMatrix:[F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->CONFIG_SPEC:[I

    return-void

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;IIZ)V
    .locals 2
    .param p1, "tex"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "isLandscape"    # Z

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mIsLandscape:Z

    .line 53
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mTransformMatrix:[F

    .line 55
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    .line 208
    iput-object p1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 209
    iput p2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mWidth:I

    .line 210
    iput p3, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mHeight:I

    .line 211
    iput-boolean p4, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mIsLandscape:Z

    .line 213
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PanoramaRealtimeRenderer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 215
    new-instance v0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;

    iget-object v1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;-><init>(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglHandler:Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglHandler:Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->sendMessageSync(I)V

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/opengles/GL10;)Ljavax/microedition/khronos/opengles/GL10;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mWidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mHeight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)[F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mTransformMatrix:[F

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->draw()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLSurface;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p1
.end method

.method static synthetic access$800(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 6
    .param p0, "prompt"    # Ljava/lang/String;
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    .line 249
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 250
    const-string v1, "MosaicPreviewRenderer"

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method

.method private static chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v4, 0x0

    .line 260
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 261
    .local v5, "numConfig":[I
    sget-object v2, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->CONFIG_SPEC:[I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    aget v10, v5, v4

    .line 266
    .local v10, "numConfigs":I
    if-gtz v10, :cond_1

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_1
    new-array v9, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 271
    .local v9, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v8, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->CONFIG_SPEC:[I

    move-object v6, p0

    move-object v7, p1

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_2
    aget-object v0, v9, v4

    return-object v0
.end method

.method private draw()V
    .locals 0

    .prologue
    .line 244
    invoke-static {}, Lcom/lenovo/scg/camera/MosaicRenderer;->step()V

    .line 245
    return-void
.end method


# virtual methods
.method public alignFrameSync()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglHandler:Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->sendMessageSync(I)V

    .line 237
    return-void
.end method

.method public getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglHandler:Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->sendMessageSync(I)V

    .line 225
    return-void
.end method

.method public showPreviewFrame()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglHandler:Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->sendEmptyMessage(I)Z

    .line 233
    return-void
.end method

.method public showPreviewFrameSync()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglHandler:Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->sendMessageSync(I)V

    .line 229
    return-void
.end method
