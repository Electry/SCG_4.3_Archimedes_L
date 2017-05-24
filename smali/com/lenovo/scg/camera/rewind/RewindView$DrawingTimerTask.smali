.class Lcom/lenovo/scg/camera/rewind/RewindView$DrawingTimerTask;
.super Ljava/util/TimerTask;
.source "RewindView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/rewind/RewindView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawingTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/rewind/RewindView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/rewind/RewindView;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/RewindView$DrawingTimerTask;->this$0:Lcom/lenovo/scg/camera/rewind/RewindView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/rewind/RewindView;Lcom/lenovo/scg/camera/rewind/RewindView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindView;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/rewind/RewindView$1;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/rewind/RewindView$DrawingTimerTask;-><init>(Lcom/lenovo/scg/camera/rewind/RewindView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 142
    .local v4, "t":J
    iget-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindView$DrawingTimerTask;->this$0:Lcom/lenovo/scg/camera/rewind/RewindView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindView;->mRectVisible:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/rewind/RewindView;->access$100(Lcom/lenovo/scg/camera/rewind/RewindView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindView$DrawingTimerTask;->this$0:Lcom/lenovo/scg/camera/rewind/RewindView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindView;->mFaceRects:Ljava/util/Vector;
    invoke-static {v3}, Lcom/lenovo/scg/camera/rewind/RewindView;->access$200(Lcom/lenovo/scg/camera/rewind/RewindView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/rewind/FaceRect;

    .line 147
    .local v2, "rect":Lcom/lenovo/scg/camera/rewind/FaceRect;
    invoke-virtual {v2, v4, v5}, Lcom/lenovo/scg/camera/rewind/FaceRect;->update(J)V

    .line 148
    iget-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindView$DrawingTimerTask;->this$0:Lcom/lenovo/scg/camera/rewind/RewindView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/rewind/RewindView;->access$300(Lcom/lenovo/scg/camera/rewind/RewindView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 150
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "rect":Lcom/lenovo/scg/camera/rewind/FaceRect;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/util/ConcurrentModificationException;
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_0
.end method
