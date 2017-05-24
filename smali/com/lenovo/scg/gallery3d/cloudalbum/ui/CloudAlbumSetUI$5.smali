.class Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$5;
.super Ljava/lang/Object;
.source "CloudAlbumSetUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->deleteAlbum()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 452
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_CloudActivity"

    const-string v2, "action_CloudActivity_click_ok_button"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 454
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAlbumIdList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;->toDeleteAlbum(Ljava/util/List;)V

    .line 456
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mProgressDlg:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0233

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 459
    :cond_0
    return-void
.end method
