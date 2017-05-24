.class Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$3;
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
    .line 411
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 415
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_CloudActivity"

    const-string v2, "action_CloudActivity_click_cancle_button"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 417
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->cancelEditActionBar()V

    .line 418
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 419
    return-void
.end method
