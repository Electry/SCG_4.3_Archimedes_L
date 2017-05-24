.class Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$1;
.super Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
.source "LocalTimeAlbumSetSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p2, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 138
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 150
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 140
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 142
    .local v0, "currTime":J
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mLastInvalidateTime:J
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x21

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->invalidate()V

    .line 144
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mLastInvalidateTime:J
    invoke-static {v2, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->access$102(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;J)J

    .line 152
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->mLastInvalidateTime:J
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
