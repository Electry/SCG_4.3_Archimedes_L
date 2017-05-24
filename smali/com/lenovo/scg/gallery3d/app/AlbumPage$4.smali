.class Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f0f023a

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 609
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 660
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 611
    :pswitch_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mbScreenShot:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$1400(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 612
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mbScreenShot:Z
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$1402(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)Z

    .line 613
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    goto :goto_0

    .line 616
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->backAlbumPage()V
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$1500(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    goto :goto_0

    .line 620
    :pswitch_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 621
    .local v2, "context":Landroid/content/Context;
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;-><init>(Landroid/app/Activity;)V

    .line 622
    .local v3, "lcpaccount":Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->isOnline()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 623
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 624
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z
    invoke-static {v4, v6}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$402(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)Z

    .line 625
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->enterMultiSelectionMode()V

    goto :goto_0

    .line 627
    :cond_2
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 630
    :cond_3
    const v4, 0x7f0f021b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 634
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "lcpaccount":Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;
    :pswitch_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->selectMultiAll()V

    .line 635
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$200(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->setSelectedAll(Z)V

    goto :goto_0

    .line 638
    :pswitch_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->deSelectMultiAll()V

    .line 639
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$200(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->setSelectedAll(Z)V

    goto/16 :goto_0

    .line 642
    :pswitch_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 643
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "cloud select folder to upload photo"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v0, v4, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 645
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    const v5, 0x9999

    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 649
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :pswitch_6
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 650
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiContent:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$300(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 651
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onGetMultiPhoto()V
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$1600(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    goto/16 :goto_0

    .line 652
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mGetMultiLocal:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$400(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 653
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onUploadMultiPhoto()V
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$1700(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    goto/16 :goto_0

    .line 656
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 609
    :pswitch_data_0
    .packed-switch 0x7f1000df
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
