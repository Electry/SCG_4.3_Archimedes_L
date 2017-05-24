.class Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;
.super Landroid/os/Handler;
.source "ViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 523
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 524
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 569
    :goto_0
    return-void

    .line 526
    :sswitch_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPhotoViewAdapter:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$700(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->notifyDataSetChanged()V

    .line 529
    :sswitch_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mTopActionRL:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$800(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mTopActionRL:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$800(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 536
    :sswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getLargeFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getLargeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 537
    .local v0, "largeFile":Ljava/io/File;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->isFileExists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->downloadBtn:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$900(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->disableView(Landroid/view/View;)V

    .line 543
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->hidePinWheelDialog()V

    goto :goto_0

    .line 550
    .end local v0    # "largeFile":Ljava/io/File;
    :sswitch_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->hidePinWheelDialog()V

    .line 551
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mGetLargeProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->stopProgressBar(Landroid/widget/ProgressBar;)V

    .line 552
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    const-string/jumbo v3, "\u4e0b\u8f7d\u5927\u56fe\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 557
    :sswitch_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->downloadBtn:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$900(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->disableView(Landroid/view/View;)V

    goto :goto_0

    .line 562
    :sswitch_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->downloadBtn:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$900(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->enableView(Landroid/view/View;)V

    goto :goto_0

    .line 524
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_1
        0x10001 -> :sswitch_2
        0x10002 -> :sswitch_3
        0x11000 -> :sswitch_4
        0x11001 -> :sswitch_5
        0x40001 -> :sswitch_0
    .end sparse-switch
.end method
