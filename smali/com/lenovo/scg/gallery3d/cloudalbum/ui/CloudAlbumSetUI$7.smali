.class Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;
.super Ljava/lang/Object;
.source "CloudAlbumSetUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->showRenameDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 502
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "category_CloudActivity"

    const-string v4, "action_CloudActivity_click_ok_button"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 504
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 505
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0f023a

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 506
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->cancelEditActionBar()V

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 510
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "inputText":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->cancelEditActionBar()V

    goto :goto_0

    .line 515
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_3

    .line 516
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->cancelEditActionBar()V

    goto :goto_0

    .line 519
    :cond_3
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edit.getText().toString() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v1, 0x0

    .line 521
    .local v1, "isExist":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 522
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->isExistAlbumName(Ljava/lang/String;)Z

    move-result v1

    .line 524
    :cond_4
    if-eqz v1, :cond_5

    .line 525
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0f026e

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 526
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->cancelEditActionBar()V

    goto/16 :goto_0

    .line 529
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mSelectAlbumId:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;->renameAlbum(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mProgressDlg:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0234

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0
.end method
