.class Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;
.super Ljava/lang/Object;
.source "GLStaticTextureViewRenderControll.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLStaticTextureThreadHandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;


# direct methods
.method private constructor <init>(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;-><init>(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 205
    :goto_0
    return v3

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;

    # invokes: Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->glinitEGLContext()V
    invoke-static {v0}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->access$0(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)V

    .line 183
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mStaticTextureRender:Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;
    invoke-static {v0}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->access$1(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;

    move-result-object v0

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mCx:Landroid/content/Context;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->access$2(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->glInitRender(Landroid/content/Context;)V

    .line 184
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;

    invoke-static {v0, v3}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->access$3(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;Z)V

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mStaticTextureRender:Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;
    invoke-static {v0}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->access$1(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;

    move-result-object v0

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mOriginalBm:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->access$4(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->glSetBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 192
    :pswitch_2
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mStaticTextureRender:Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;
    invoke-static {v0}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->access$1(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;

    move-result-object v0

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mCurrentFilterLabel:Ljava/lang/String;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->access$5(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->glDrawFrame(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGL:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->access$6(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->access$7(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->access$8(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    goto :goto_0

    .line 196
    :pswitch_3
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mStaticTextureRender:Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;
    invoke-static {v0}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->access$1(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRender;->glRenderRelease()V

    .line 197
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;

    # invokes: Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->glReleaseEGLContext()V
    invoke-static {v0}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->access$9(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)V

    .line 198
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll$GLStaticTextureThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->mStaticGLTextureThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;->access$10(Lcn/jingling/lib/livefilter/GLStaticTextureViewRenderControll;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
