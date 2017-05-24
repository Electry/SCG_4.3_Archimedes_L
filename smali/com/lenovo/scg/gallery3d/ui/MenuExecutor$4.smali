.class Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$4;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->showDeleteDialog(ILjava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

.field final synthetic val$listener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$4;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$4;->val$listener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 790
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$4;->val$listener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    .line 791
    return-void
.end method
