.class Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;
.super Ljava/lang/Object;
.source "GLStaticFBORenderControll.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaticGLThreadHandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;


# direct methods
.method private constructor <init>(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;-><init>(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    .line 252
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 312
    :goto_0
    return v8

    .line 254
    :pswitch_0
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex2:Ljava/lang/Object;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$0(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 255
    :try_start_0
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # invokes: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->glinitEGLContext()V
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$1(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)V

    .line 256
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStaticRender:Lcn/jingling/lib/livefilter/GLStaticFBORender;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$2(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Lcn/jingling/lib/livefilter/GLStaticFBORender;

    move-result-object v1

    iget-object v5, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mCx:Landroid/content/Context;
    invoke-static {v5}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$3(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/jingling/lib/livefilter/GLStaticFBORender;->glInitRender(Landroid/content/Context;)V

    .line 257
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$4(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;Z)V

    .line 259
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    invoke-static {}, Lcn/jingling/lib/livefilter/GLHelper;->glGetMaxTextureSize()I

    move-result v5

    invoke-static {v1, v5}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$5(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;I)V

    .line 261
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex2:Ljava/lang/Object;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$0(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 254
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 266
    :pswitch_1
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStaticRender:Lcn/jingling/lib/livefilter/GLStaticFBORender;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$2(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Lcn/jingling/lib/livefilter/GLStaticFBORender;

    move-result-object v1

    iget-object v4, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mOriginalBm:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$6(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/jingling/lib/livefilter/GLStaticFBORender;->glSetBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex:Ljava/lang/Object;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$7(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 271
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 272
    .local v2, "time":J
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    iget-object v5, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStaticRender:Lcn/jingling/lib/livefilter/GLStaticFBORender;
    invoke-static {v5}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$2(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Lcn/jingling/lib/livefilter/GLStaticFBORender;

    move-result-object v5

    .line 273
    iget-object v6, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mCurrentFilterLabel:Ljava/lang/String;
    invoke-static {v6}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$8(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/jingling/lib/livefilter/GLStaticFBORender;->glDrawFrame(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 272
    invoke-static {v1, v5}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$9(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;Landroid/graphics/Bitmap;)V

    .line 274
    const-string v1, "GLStatic"

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "gl time consume: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 275
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-static {v1, v5}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex:Ljava/lang/Object;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$7(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 270
    monitor-exit v4

    goto/16 :goto_0

    .end local v2    # "time":J
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 281
    :pswitch_3
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStaticRender:Lcn/jingling/lib/livefilter/GLStaticFBORender;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$2(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Lcn/jingling/lib/livefilter/GLStaticFBORender;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jingling/lib/livefilter/GLStaticFBORender;->glRenderRelease()V

    .line 282
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # invokes: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->glReleaseEGLContext()V
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$10(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)V

    .line 283
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStaticGLThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$11(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_0

    .line 288
    :pswitch_4
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex:Ljava/lang/Object;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$7(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 289
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v2

    .line 292
    .restart local v2    # "time":J
    :try_start_3
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$12(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;I)V

    .line 293
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStaticRender:Lcn/jingling/lib/livefilter/GLStaticFBORender;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$2(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Lcn/jingling/lib/livefilter/GLStaticFBORender;

    move-result-object v1

    iget-object v5, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mOriginalBm:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$6(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/jingling/lib/livefilter/GLStaticFBORender;->glSetBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    iget-object v5, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mStaticRender:Lcn/jingling/lib/livefilter/GLStaticFBORender;
    invoke-static {v5}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$2(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Lcn/jingling/lib/livefilter/GLStaticFBORender;

    move-result-object v5

    .line 295
    iget-object v6, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mCurrentFilterLabel:Ljava/lang/String;
    invoke-static {v6}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$8(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/jingling/lib/livefilter/GLStaticFBORender;->glDrawFrame(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 294
    invoke-static {v1, v5}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$9(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 301
    :goto_1
    :try_start_4
    const-string v1, "GLStatic"

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "gl time consume: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 302
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 301
    invoke-static {v1, v5}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    # getter for: Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->mMutex:Ljava/lang/Object;
    invoke-static {v1}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$7(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 288
    monitor-exit v4

    goto/16 :goto_0

    .end local v2    # "time":J
    :catchall_2
    move-exception v1

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 296
    .restart local v2    # "time":J
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_5
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$12(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;I)V

    .line 298
    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll$StaticGLThreadHandlerCallback;->this$0:Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;->access$9(Lcn/jingling/lib/livefilter/GLStaticFBORenderControll;Landroid/graphics/Bitmap;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
