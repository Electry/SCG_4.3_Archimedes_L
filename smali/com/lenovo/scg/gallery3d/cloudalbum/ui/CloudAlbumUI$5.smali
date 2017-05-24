.class Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$5;
.super Ljava/lang/Object;
.source "CloudAlbumUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->askWhetherToSendPhotos()V
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
    .line 494
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 498
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_CloudActivity"

    const-string v2, "action_CloudActivity_click_cancle_button"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 500
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$5;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 503
    :cond_0
    return-void
.end method
