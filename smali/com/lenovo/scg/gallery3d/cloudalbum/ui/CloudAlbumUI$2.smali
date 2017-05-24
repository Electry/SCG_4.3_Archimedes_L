.class Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$2;
.super Ljava/lang/Object;
.source "CloudAlbumUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->deletePhotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 398
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_CloudActivity"

    const-string v2, "action_CloudActivity_click_ok_button"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 400
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mPhotoIdList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;->toDeletePhoto(Ljava/util/List;)V

    .line 403
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mProgressDlg:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0233

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    const v1, 0x7f0f023a

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
