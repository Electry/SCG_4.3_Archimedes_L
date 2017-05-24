.class Lcom/lenovo/scg/camera/RotateDialogController$2;
.super Ljava/lang/Object;
.source "RotateDialogController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/RotateDialogController;

.field final synthetic val$r2:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/RotateDialogController;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lenovo/scg/camera/RotateDialogController$2;->this$0:Lcom/lenovo/scg/camera/RotateDialogController;

    iput-object p2, p0, Lcom/lenovo/scg/camera/RotateDialogController$2;->val$r2:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController$2;->val$r2:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController$2;->val$r2:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/RotateDialogController$2;->this$0:Lcom/lenovo/scg/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/RotateDialogController;->dismissDialog()Z

    .line 165
    return-void
.end method
