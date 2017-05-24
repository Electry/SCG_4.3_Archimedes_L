.class Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog$2;
.super Ljava/lang/Object;
.source "RotateDeleteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

.field final synthetic val$okRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog$2;->val$okRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog$2;->val$okRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog$2;->val$okRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->dismissDialog()Z

    .line 195
    return-void
.end method
