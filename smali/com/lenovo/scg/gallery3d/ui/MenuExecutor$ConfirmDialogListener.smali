.class Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field private final mActionId:I

.field private final mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .param p2, "actionId"    # I
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mActionId:I

    .line 461
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 462
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    .line 483
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 466
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mActionId:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$600(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 476
    :cond_1
    :goto_0
    return-void

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    goto :goto_0
.end method
