.class Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$2;
.super Ljava/lang/Object;
.source "CloudBaseUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showDlg(I)V
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
    .line 366
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->cancelEditActionBar()V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const v1, 0x7f0f023a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
