.class Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;
.super Landroid/os/Handler;
.source "MosaicPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EGLHandler"
.end annotation


# static fields
.field public static final MSG_ALIGN_FRAME_SYNC:I = 0x3

.field public static final MSG_INIT_EGL_SYNC:I = 0x0

.field public static final MSG_RELEASE:I = 0x4

.field public static final MSG_SHOW_PREVIEW_FRAME:I = 0x2

.field public static final MSG_SHOW_PREVIEW_FRAME_SYNC:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .line 90
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    return-void
.end method

.method private doAlignFrame()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$100(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$100(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$200(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 122
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicRenderer;->setWarping(Z)V

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$200(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)[F

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicRenderer;->preprocess([F)V

    .line 126
    invoke-static {}, Lcom/lenovo/scg/camera/MosaicRenderer;->transferGPUtoCPU()V

    .line 127
    invoke-static {}, Lcom/lenovo/scg/camera/MosaicRenderer;->updateMatrix()V

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # invokes: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->draw()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$300(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)V

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$600(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$400(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$500(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 130
    return-void
.end method

.method private doInitGL()V
    .locals 8

    .prologue
    .line 146
    iget-object v3, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    # setter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3, v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$602(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;

    .line 147
    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$600(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    # setter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$402(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 148
    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$400(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 149
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglGetDisplay failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 152
    .local v1, "version":[I
    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$600(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v3}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$400(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglInitialize failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_1
    const-string v2, "MosaicPreviewRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EGL version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 158
    .local v0, "attribList":[I
    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$600(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$400(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    # invokes: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$800(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    # setter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$702(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    .line 159
    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$600(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$400(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v5}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$700(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v5

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    # setter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$902(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 161
    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$900(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$900(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_3

    .line 162
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to createContext"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$600(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$400(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v5}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$700(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v6}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$1000(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    # setter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$502(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 165
    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$500(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$500(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_5

    .line 166
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to createWindowSurface"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$600(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v3}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$400(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v4}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$500(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v5}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$500(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v6}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$900(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 170
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to eglMakeCurrent"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_6
    iget-object v3, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$900(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    # setter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;
    invoke-static {v3, v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$1102(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/opengles/GL10;)Ljavax/microedition/khronos/opengles/GL10;

    .line 175
    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    new-instance v3, Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/lenovo/scg/camera/MosaicRenderer;->init()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    # setter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$102(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 176
    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mWidth:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$1200(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$1300(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mIsLandscape:Z
    invoke-static {v4}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$1400(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/camera/MosaicRenderer;->reset(IIZ)V

    .line 177
    return-void

    .line 157
    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private doRelease()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$600(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$400(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$500(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$600(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$400(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$900(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$600(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$400(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$600(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$400(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # setter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v0, v5}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$502(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # setter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v0, v5}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$902(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # setter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v0, v5}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$402(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$100(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$1500(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 189
    return-void
.end method

.method private doShowPreviewFrame()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$100(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$100(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$200(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 136
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicRenderer;->setWarping(Z)V

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$200(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)[F

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicRenderer;->preprocess([F)V

    .line 139
    invoke-static {}, Lcom/lenovo/scg/camera/MosaicRenderer;->updateMatrix()V

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # invokes: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->draw()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$300(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)V

    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$600(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$400(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$500(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 142
    return-void
.end method

.method private releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 193
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 97
    :pswitch_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->doInitGL()V

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$000(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->doShowPreviewFrame()V

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$000(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 105
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->doShowPreviewFrame()V

    goto :goto_0

    .line 108
    :pswitch_3
    invoke-direct {p0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->doAlignFrame()V

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$000(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 112
    :pswitch_4
    invoke-direct {p0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->doRelease()V

    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$000(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public sendMessageSync(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$000(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 201
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->sendEmptyMessage(I)Z

    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    # getter for: Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->access$000(Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 203
    return-void
.end method
