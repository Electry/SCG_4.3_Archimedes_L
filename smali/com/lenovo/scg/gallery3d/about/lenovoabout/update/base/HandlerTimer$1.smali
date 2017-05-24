.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer$1;
.super Ljava/lang/Object;
.source "HandlerTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mInnerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mInnerTask:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;

    iget-wide v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->mEvery:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    return-void
.end method
