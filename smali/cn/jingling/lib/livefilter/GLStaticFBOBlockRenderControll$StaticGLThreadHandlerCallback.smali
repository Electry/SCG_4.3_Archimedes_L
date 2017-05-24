.class Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;
.super Ljava/lang/Object;
.source "GLStaticFBOBlockRenderControll.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaticGLThreadHandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;


# direct methods
.method private constructor <init>(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;-><init>(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    .line 578
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 606
    :goto_0
    return v8

    .line 580
    :pswitch_0
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;

    # invokes: Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->glinitEGLContext()V
    invoke-static {v2}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->access$0(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)V

    .line 581
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mStaticRender:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRender;
    invoke-static {v2}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->access$1(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Lcn/jingling/lib/livefilter/GLStaticFBOBlockRender;

    move-result-object v2

    iget-object v3, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCx:Landroid/content/Context;
    invoke-static {v3}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->access$2(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRender;->glInitRender(Landroid/content/Context;)V

    .line 582
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;

    invoke-static {v2, v8}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->access$3(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;Z)V

    goto :goto_0

    .line 586
    :pswitch_1
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mMutex:Ljava/lang/Object;
    invoke-static {v2}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->access$4(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 587
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 588
    .local v0, "time":J
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;

    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mStaticRender:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRender;
    invoke-static {v4}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->access$1(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Lcn/jingling/lib/livefilter/GLStaticFBOBlockRender;

    move-result-object v4

    .line 589
    iget-object v5, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentFilterLabel:Ljava/lang/String;
    invoke-static {v5}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->access$5(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentOriginalBmBlock:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->access$6(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mCurrentBlockPosition:Lcn/jingling/lib/livefilter/NormalizedRect;
    invoke-static {v7}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->access$7(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Lcn/jingling/lib/livefilter/NormalizedRect;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRender;->glDrawFrame(Ljava/lang/String;Landroid/graphics/Bitmap;Lcn/jingling/lib/livefilter/NormalizedRect;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 588
    invoke-static {v2, v4}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->access$8(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;Landroid/graphics/Bitmap;)V

    .line 590
    const-string v2, "GLStatic"

    .line 591
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "gl time consume: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 591
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 590
    invoke-static {v2, v4}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mMutex:Ljava/lang/Object;
    invoke-static {v2}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->access$4(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 586
    monitor-exit v3

    goto :goto_0

    .end local v0    # "time":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 597
    :pswitch_2
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mStaticRender:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRender;
    invoke-static {v2}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->access$1(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Lcn/jingling/lib/livefilter/GLStaticFBOBlockRender;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRender;->glRenderRelease()V

    .line 598
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;

    # invokes: Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->glReleaseEGLContext()V
    invoke-static {v2}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->access$9(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)V

    .line 599
    iget-object v2, p0, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->mStaticGLThread:Landroid/os/HandlerThread;
    invoke-static {v2}, Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;->access$10(Lcn/jingling/lib/livefilter/GLStaticFBOBlockRenderControll;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_0

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
