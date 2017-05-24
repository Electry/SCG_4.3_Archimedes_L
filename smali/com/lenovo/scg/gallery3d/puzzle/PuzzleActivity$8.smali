.class Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;
.super Landroid/os/Handler;
.source "PuzzleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0x7f0f0771

    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 815
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 906
    :goto_0
    return-void

    .line 817
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateMosaicBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$600(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 818
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$300(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMosaicRootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$700(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->initMosaic(Landroid/widget/RelativeLayout;)V

    .line 819
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->dissMissProgressDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$800(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    goto :goto_0

    .line 822
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointTabLine:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$900(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointMosaicBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1000(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 824
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$300(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMosaicRootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$700(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->initMosaic(Landroid/widget/RelativeLayout;)V

    .line 825
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->dissMissProgressDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$800(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    goto :goto_0

    .line 828
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomTabLine:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1100(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomMosaicBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1200(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 830
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$300(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMosaicRootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$700(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->initMosaic(Landroid/widget/RelativeLayout;)V

    .line 831
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->dissMissProgressDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$800(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    goto :goto_0

    .line 834
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->dissMissProgressDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$800(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    .line 835
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSavedFile:Ljava/io/File;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1300(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    const v1, 0x7f0f0770

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 860
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->dissMissProgressDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$800(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    .line 861
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->showSDCardFullDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1400(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    goto/16 :goto_0

    .line 864
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$300(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMosaicRootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$700(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->initMosaic(Landroid/widget/RelativeLayout;)V

    .line 865
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->dissMissProgressDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$800(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    goto/16 :goto_0

    .line 868
    :pswitch_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 871
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->dissMissProgressDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$800(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    goto/16 :goto_0

    .line 874
    :pswitch_7
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFrameThumbnailView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1500(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 875
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1600(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 876
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateTabLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1700(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateBackgroundDivider:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1800(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 878
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateThumbnailTabLine:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1900(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 879
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mBackgroundTabLine:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$2000(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateTabLine:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$2100(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateMosaicBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$600(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    .line 884
    :pswitch_8
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1600(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFrameThumbnailView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1500(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 886
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateTabLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1700(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 887
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateBackgroundDivider:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1800(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateThumbnailTabLine:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1900(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mBackgroundTabLine:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$2000(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointTabLine:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$900(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointMosaicBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1000(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    .line 894
    :pswitch_9
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFrameThumbnailView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1500(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1600(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateTabLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1700(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 897
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateBackgroundDivider:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1800(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateThumbnailTabLine:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1900(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mBackgroundTabLine:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$2000(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 900
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomMosaicBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$1200(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    .line 903
    :pswitch_a
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->showBadPictureDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$2200(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    goto/16 :goto_0

    .line 815
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_4
        :pswitch_9
    .end packed-switch
.end method
