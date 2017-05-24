.class Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;
.super Ljava/lang/Thread;
.source "WhiteListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

.field final synthetic val$headerCount:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;II)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    iput p2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;->val$position:I

    iput p3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;->val$headerCount:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 415
    const/4 v1, 0x0

    .line 417
    .local v1, "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;->val$position:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;->val$headerCount:I

    sub-int v0, v4, v5

    .line 419
    .local v0, "realpos":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mIsSearchMode:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 420
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getItem(I)Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    invoke-static {v4, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;I)Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    move-result-object v1

    .line 422
    if-nez v1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    const-string v4, "WhiteListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onItemClick, mIsSearchMode=true, name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getScreenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", headerCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;->val$headerCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getUid()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->isSelected()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateShield(JZI)V
    invoke-static {v4, v6, v7, v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$700(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;JZI)V

    .line 430
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    const/4 v3, 0x2

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 428
    goto :goto_1

    .line 434
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getItemForMergedAdapter(I)Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    invoke-static {v4, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;I)Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    move-result-object v1

    .line 435
    if-eqz v1, :cond_0

    .line 439
    const-string v4, "WhiteListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onItemClick, mIsSearchMode=false, name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getScreenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getUid()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->isSelected()Z

    move-result v5

    if-nez v5, :cond_4

    :goto_2
    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateShieldForMergedAdapter(JZI)V
    invoke-static {v4, v6, v7, v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$900(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;JZI)V

    .line 443
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    const/4 v3, 0x5

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 441
    goto :goto_2
.end method
