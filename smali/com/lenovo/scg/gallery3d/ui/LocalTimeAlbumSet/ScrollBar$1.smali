.class Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar$1;
.super Landroid/os/Handler;
.source "ScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 89
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mState:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mState:I
    invoke-static {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->access$002(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;I)I

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->mView:Lcom/lenovo/scg/gallery3d/ui/GLView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->access$300(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
