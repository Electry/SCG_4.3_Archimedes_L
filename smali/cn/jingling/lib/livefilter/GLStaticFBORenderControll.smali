.class public Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;
.super Ljava/lang/Object;
.source "GLStaticFBORenderControll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$BitmapAndStatus;,
        Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;
    }
.end annotation


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final GL_MSG_DRAW:I = 0x3

.field private static final GL_MSG_DRAW_BM:I = 0x5

.field private static final GL_MSG_INIT:I = 0x1

.field private static final GL_MSG_SET_BITMAP:I = 0x2

.field private static final GL_RELEASE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GLStaticFBORenderControll"


# instance fields
.field private initialized:Z

.field private mCurrentFilterLabel:Ljava/lang/String;

.field private mCx:Landroid/content/Context;

.field private mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLHandler:Landroid/os/Handler;

.field private mMaxTextureSize:I

.field private mMutex:Ljava/lang/Object;

.field private mMutex2:Ljava/lang/Object;

.field private mOriginalBm:Landroid/graphics/Bitmap;

.field private mPerformedBm:Landroid/graphics/Bitmap;

.field private mStaticGLThread:Landroid/os/HandlerThread;

.field private mStaticRender:Lcn/jingling/lib/livefilter/GLStaticFBORender;

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->initialized:Z

    .line 52
    iput v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStatus:I

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex2:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex2:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->glinitEGLContext()V

    return-void
.end method

.method static synthetic access$10(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->glReleaseEGLContext()V

    return-void
.end method

.method static synthetic access$11(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStaticGLThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$12(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStatus:I

    return-void
.end method

.method static synthetic access$2(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Lcn/jingling/lib/livefilter/GLStaticFBORender;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStaticRender:Lcn/jingling/lib/livefilter/GLStaticFBORender;

    return-object v0
.end method

.method static synthetic access$3(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mCx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->initialized:Z

    return-void
.end method

.method static synthetic access$5(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMaxTextureSize:I

    return-void
.end method

.method static synthetic access$6(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mOriginalBm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$7(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mCurrentFilterLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mPerformedBm:Landroid/graphics/Bitmap;

    return-void
.end method

.method private glReleaseEGLContext()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 242
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 243
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 244
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 245
    return-void
.end method

.method private glinitEGLContext()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 183
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 184
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 186
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "eglGetDisplay failed : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    const/16 v0, 0x11

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 202
    .local v2, "configAttribs":[I
    new-array v5, v4, [I

    .line 203
    .local v5, "numConfigs":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 204
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "eglChooseConfig failed : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    const/4 v0, 0x3

    new-array v7, v0, [I

    fill-array-data v7, :array_1

    .line 213
    .local v7, "contextAttribs":[I
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v3, v10

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v4, v9, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 221
    const/4 v0, 0x5

    new-array v6, v0, [I

    fill-array-data v6, :array_2

    .line 223
    .local v6, "attribList":[I
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v3, v10

    invoke-interface {v0, v1, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 225
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_4

    .line 226
    :cond_2
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    .line 227
    .local v8, "error":I
    const/16 v0, 0x300b

    if-ne v8, v0, :cond_3

    .line 228
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglCreateWindowSurface returned  EGL_BAD_NATIVE_WINDOW. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "eglCreateWindowSurface failed : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    .end local v8    # "error":I
    :cond_4
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v9, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v10, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v4, v9, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 235
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "eglMakeCurrent failed : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_5
    return-void

    .line 190
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

    .line 209
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    .line 221
    :array_2
    .array-data 4
        0x3057
        0x8
        0x3056
        0x8
        0x3038
    .end array-data
.end method


# virtual methods
.method public drawFrame(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GLStatic_FBO_Filter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jingling/lib/statistics/LogStoreUtils;->storeData(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 141
    :try_start_0
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mCurrentFilterLabel:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mGLHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :try_start_1
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mPerformedBm:Landroid/graphics/Bitmap;

    monitor-exit v2

    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public drawFrameBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$BitmapAndStatus;
    .locals 5
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GLStatic_FBO_Filter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jingling/lib/statistics/LogStoreUtils;->storeData(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 161
    :try_start_0
    iput-object p2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mOriginalBm:Landroid/graphics/Bitmap;

    .line 162
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mCurrentFilterLabel:Ljava/lang/String;

    .line 163
    const/4 v1, 0x0

    iput v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStatus:I

    .line 164
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mGLHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :goto_0
    :try_start_2
    new-instance v1, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$BitmapAndStatus;

    iget-object v3, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mPerformedBm:Landroid/graphics/Bitmap;

    iget v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStatus:I

    invoke-direct {v1, p0, v3, v4}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$BitmapAndStatus;-><init>(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;Landroid/graphics/Bitmap;I)V

    monitor-exit v2

    return-object v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public init(Landroid/content/Context;)I
    .locals 6
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-static {p1}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 77
    iget-boolean v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->initialized:Z

    if-eqz v1, :cond_0

    .line 78
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMaxTextureSize:I

    .line 96
    :goto_0
    return v1

    .line 80
    :cond_0
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex2:Ljava/lang/Object;

    monitor-enter v2

    .line 81
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->initialized:Z

    .line 82
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mCx:Landroid/content/Context;

    .line 83
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "StaticGLThread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStaticGLThread:Landroid/os/HandlerThread;

    .line 84
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStaticGLThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v1, Lcn/jingling/lib/livefilter/GLStaticFBORender;

    invoke-direct {v1}, Lcn/jingling/lib/livefilter/GLStaticFBORender;-><init>()V

    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStaticRender:Lcn/jingling/lib/livefilter/GLStaticFBORender;

    .line 86
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStaticGLThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;-><init>(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;)V

    invoke-direct {v1, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mGLHandler:Landroid/os/Handler;

    .line 87
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mGLHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex2:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :goto_1
    :try_start_2
    iget v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMaxTextureSize:I

    monitor-exit v2

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mGLHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 130
    iput-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mGLHandler:Landroid/os/Handler;

    .line 131
    iput-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mOriginalBm:Landroid/graphics/Bitmap;

    .line 132
    iput-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mCx:Landroid/content/Context;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->initialized:Z

    .line 134
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glGetMaxTextureSize()I

    move-result v3

    .line 111
    .local v3, "maxTextureSize":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 113
    .local v0, "bmSize":I
    if-lez v3, :cond_1

    if-le v0, v3, :cond_1

    .line 114
    int-to-double v6, v3

    int-to-double v8, v0

    div-double v4, v6, v8

    .line 115
    .local v4, "ratio":D
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-int v2, v6

    .line 116
    .local v2, "dstWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-int v1, v6

    .line 117
    .local v1, "dstHeight":I
    const/4 v6, 0x1

    invoke-static {p1, v2, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 120
    .end local v1    # "dstHeight":I
    .end local v2    # "dstWidth":I
    .end local v4    # "ratio":D
    :cond_1
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mOriginalBm:Landroid/graphics/Bitmap;

    .line 121
    iget-object v6, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mGLHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
