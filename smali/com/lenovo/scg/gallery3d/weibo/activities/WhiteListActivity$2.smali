.class Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;
.super Landroid/os/Handler;
.source "WhiteListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 713
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 714
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 829
    :goto_0
    return-void

    .line 716
    :pswitch_0
    const-string v1, "WhiteListActivity"

    const-string v2, "MSG_GET_RESULT_FRIENDS_LIST_SUCCESS!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->cancelDialog()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)V

    .line 718
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 719
    const-string v1, "WhiteListActivity"

    const-string v2, "mAllAdapter == null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 723
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateFilterHeaderDividerCount(I)V
    invoke-static {v2, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1200(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;I)V

    .line 725
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->setDataCollection(Ljava/util/ArrayList;)V

    .line 726
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 732
    :pswitch_1
    const-string v1, "WhiteListActivity"

    const-string v2, "MSG_GET_RESULT_FRIENDS_LIST_FAILED!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->cancelDialog()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)V

    .line 734
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 735
    const-string v1, "WhiteListActivity"

    const-string v2, "mAllAdapter == null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 738
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateFilterHeaderDividerCount(I)V
    invoke-static {v1, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1200(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;I)V

    .line 739
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->clearDataCollection()V

    .line 740
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 745
    :pswitch_2
    const-string v1, "WhiteListActivity"

    const-string v2, "MSG_UPDATE_SHIELD_MERGED_SUCCESS!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->cancelDialog()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)V

    .line 749
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mIsSearchMode:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 750
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->startLoaderShield(I)V
    invoke-static {v1, v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1300(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;I)V

    .line 753
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mMergedAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1400(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

    move-result-object v1

    if-nez v1, :cond_3

    .line 754
    const-string v1, "WhiteListActivity"

    const-string v2, "mMergedAdapter == null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 758
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mMergedAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1400(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 763
    :pswitch_3
    const-string v1, "WhiteListActivity"

    const-string v2, "MSG_UPDATE_SHIELD_SUCCESS!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->cancelDialog()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)V

    .line 767
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mIsSearchMode:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 768
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->startLoaderShield(I)V
    invoke-static {v1, v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1300(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;I)V

    .line 771
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    if-nez v1, :cond_5

    .line 772
    const-string v1, "WhiteListActivity"

    const-string v2, "mAllAdapter == null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 775
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 780
    :pswitch_4
    const-string v1, "WhiteListActivity"

    const-string v2, "MSG_GET_RESULT_SHIELD_LIST_SUCCESS!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    if-nez v1, :cond_6

    .line 783
    const-string v1, "WhiteListActivity"

    const-string v2, "mShiledAdapter == null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 786
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 787
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateHeaderDividerCount(I)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1600(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;I)V

    .line 789
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->setDataCollection(Ljava/util/ArrayList;)V

    .line 790
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 795
    .end local v0    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    :pswitch_5
    const-string v1, "WhiteListActivity"

    const-string v2, "MSG_GET_RESULT_SHIELD_LIST_FAILED!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    if-nez v1, :cond_7

    .line 798
    const-string v1, "WhiteListActivity"

    const-string v2, "mShiledAdapter == null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 801
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateHeaderDividerCount(I)V
    invoke-static {v1, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1600(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;I)V

    .line 802
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->clearDataCollection()V

    .line 803
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 808
    :pswitch_6
    const-string v1, "WhiteListActivity"

    const-string v2, "MSG_UPDATE_FRIENDS_LIST_SUCCESS!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->cancelDialog()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)V

    .line 812
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldUserItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->setDataCollection(Ljava/util/ArrayList;)V

    .line 813
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->notifyDataSetChanged()V

    .line 815
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 816
    .restart local v0    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateFilterHeaderDividerCount(I)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1200(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;I)V

    .line 817
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->setDataCollection(Ljava/util/ArrayList;)V

    .line 818
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 823
    .end local v0    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    :pswitch_7
    const-string v1, "WhiteListActivity"

    const-string v2, "MSG_UPDATE_FRIENDS_LIST_FAILED!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->cancelDialog()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)V

    .line 825
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    const v2, 0x7f0f097a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 714
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
