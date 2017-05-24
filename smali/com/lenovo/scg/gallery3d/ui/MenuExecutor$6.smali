.class Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$6;
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

.field final synthetic val$listener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$6;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$6;->val$listener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$6;->val$listener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    .line 830
    return-void
.end method
