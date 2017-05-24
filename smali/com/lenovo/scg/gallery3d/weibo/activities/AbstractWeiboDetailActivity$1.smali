.class Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;
.super Landroid/os/Handler;
.source "AbstractWeiboDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x20002

    const/16 v3, 0x64

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-wide/16 v4, 0xc8

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 142
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->downloadFinish:Z

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->random:Ljava/util/Random;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Ljava/util/Random;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 146
    invoke-virtual {p0, v6, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 151
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->downloadFinish:Z

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->random:Ljava/util/Random;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Ljava/util/Random;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x50

    if-ge v0, v1, :cond_0

    .line 156
    invoke-virtual {p0, v6, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 163
    :sswitch_2
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->removeMessages(I)V

    .line 164
    const v0, 0x20001

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->removeMessages(I)V

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 166
    const v0, 0x20004

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 172
    :sswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 178
    :sswitch_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mArrow:Landroid/view/View;
    invoke-static {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$202(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;Landroid/view/View;)Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mArrow:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    const v0, 0x10012

    invoke-virtual {p0, v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 184
    :sswitch_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mArrow:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    const v0, 0x10013

    invoke-virtual {p0, v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 189
    :sswitch_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mArrow:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    const v0, 0x10014

    invoke-virtual {p0, v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 195
    :sswitch_7
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mArrow:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    const v0, 0x10015

    invoke-virtual {p0, v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 200
    :sswitch_8
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mArrow:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    const v0, 0x10016

    invoke-virtual {p0, v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 205
    :sswitch_9
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->mArrow:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x10011 -> :sswitch_4
        0x10012 -> :sswitch_5
        0x10013 -> :sswitch_6
        0x10014 -> :sswitch_7
        0x10015 -> :sswitch_8
        0x10016 -> :sswitch_9
        0x20001 -> :sswitch_0
        0x20002 -> :sswitch_1
        0x20003 -> :sswitch_2
        0x20004 -> :sswitch_3
    .end sparse-switch
.end method
