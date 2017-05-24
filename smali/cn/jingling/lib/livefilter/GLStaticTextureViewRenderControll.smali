.class public Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;
.super Ljava/lang/Object;
.source "GLStaticTextureViewRenderControll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;
    }
.end annotation


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final GL_MSG_DRAW:I = 0x3

.field private static final GL_MSG_INIT:I = 0x1

.field private static final GL_MSG_SET_BITMAP:I = 0x2

.field private static final GL_RELEASE:I = 0x4


# instance fields
.field private initialized:Z

.field private mCurrentFilterLabel:Ljava/lang/String;

.field private mCx:Landroid/content/Context;

.field private mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLTextureHandler:Landroid/os/Handler;

.field private mOriginalBm:Landroid/graphics/Bitmap;

.field private mStaticGLTextureThread:Landroid/os/HandlerThread;

.field private mStaticTextureRender:Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->initialized:Z

    .line 51
    invoke-static {p1}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 52
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mCx:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StaticGLThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mStaticGLTextureThread:Landroid/os/HandlerThread;

    .line 54
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mStaticGLTextureThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;

    invoke-direct {v0}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mStaticTextureRender:Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;

    .line 56
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mStaticGLTextureThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;-><init>(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mGLTextureHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->glinitEGLContext()V

    return-void
.end method

.method static synthetic access$1(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mStaticTextureRender:Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;

    return-object v0
.end method

.method static synthetic access$10(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mStaticGLTextureThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$2(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mCx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->initialized:Z

    return-void
.end method

.method static synthetic access$4(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mOriginalBm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mCurrentFilterLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method static synthetic access$7(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic access$8(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$9(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->glReleaseEGLContext()V

    return-void
.end method

.method private glReleaseEGLContext()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 170
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 171
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 172
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 173
    return-void
.end method

.method private glinitEGLContext()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 122
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 123
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 124
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "eglGetDisplay failed : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    const/16 v0, 0x11

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 140
    .local v2, "configAttribs":[I
    new-array v5, v4, [I

    .line 141
    .local v5, "numConfigs":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 142
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "eglChooseConfig failed : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_1

    .line 151
    .local v6, "contextAttribs":[I
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v3, v9

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v4, v8, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 152
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v3, v9

    iget-object v8, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v9, 0x0

    invoke-interface {v0, v1, v4, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 153
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_4

    .line 154
    :cond_2
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v7

    .line 155
    .local v7, "error":I
    const/16 v0, 0x300b

    if-ne v7, v0, :cond_3

    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglCreateWindowSurface returned  EGL_BAD_NATIVE_WINDOW. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "eglCreateWindowSurface failed : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    .end local v7    # "error":I
    :cond_4
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v8, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v9, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v4, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "eglMakeCurrent failed : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_5
    return-void

    .line 128
    nop

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

    .line 147
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public drawFrame(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLStatic_Texture_Filter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jingling/lib/statistics/LogStoreUtils;->storeData(Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mCurrentFilterLabel:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mGLTextureHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 98
    return-void
.end method

.method public init(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v1, 0x1

    .line 63
    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->initialized:Z

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    iput-boolean v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->initialized:Z

    .line 67
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 68
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mGLTextureHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mGLTextureHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 85
    iput-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mGLTextureHandler:Landroid/os/Handler;

    .line 86
    iput-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mOriginalBm:Landroid/graphics/Bitmap;

    .line 87
    iput-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mCx:Landroid/content/Context;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->initialized:Z

    .line 89
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 75
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mOriginalBm:Landroid/graphics/Bitmap;

    .line 76
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mGLTextureHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 77
    return-void
.end method

.method public setImageType(Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V
    .locals 1
    .param p1, "type"    # Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .prologue
    .line 105
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mStaticTextureRender:Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->setImageType(Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V

    .line 106
    return-void
.end method

.method public setViewSize(II)V
    .locals 1
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mStaticTextureRender:Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;

    invoke-virtual {v0, p1, p2}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->setViewSize(II)V

    .line 114
    return-void
.end method
