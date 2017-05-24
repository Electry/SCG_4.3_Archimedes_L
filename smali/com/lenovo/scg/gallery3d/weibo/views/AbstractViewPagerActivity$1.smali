.class Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;
.super Landroid/os/Handler;
.source "AbstractViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v4, 0x5

    const v3, 0x30002

    const/16 v1, 0x64

    .line 49
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->downloadFinish:Z

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->random:Ljava/util/Random;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;)Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 56
    invoke-virtual {p0, v3, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->downloadFinish:Z

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->random:Ljava/util/Random;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;)Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x50

    if-ge v0, v1, :cond_0

    .line 66
    invoke-virtual {p0, v3, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 73
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->removeMessages(I)V

    .line 74
    const v0, 0x30001

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->removeMessages(I)V

    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 76
    const v0, 0x30004

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 82
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
