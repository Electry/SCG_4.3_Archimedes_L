.class Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$3;
.super Ljava/lang/Object;
.source "CloudBaseUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 400
    const-string v0, "HWJ"

    const-string v1, "mProgressDlg ----- dismiss()---- "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    const-string v0, "HWJ"

    const-string v1, "mProgressDlg ----- setOnShowListener()---- "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void
.end method
