.class Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$5;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->showRotateDialog(ILjava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

.field final synthetic val$action:I

.field final synthetic val$listener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;I)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$5;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$5;->val$listener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    iput p3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$5;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 815
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$5;->val$listener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-interface {v0, v5}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    .line 817
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$5;->val$action:I

    const v1, 0x7f100b2a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$5;->val$action:I

    const v1, 0x7f100b2b

    if-ne v0, v1, :cond_1

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$5;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$5;->val$action:I

    const v2, 0x7f0f0661

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$5;->val$listener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->startDeleteAction(IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 823
    :goto_0
    return-void

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$5;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$5;->val$action:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$5;->val$listener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    goto :goto_0
.end method
