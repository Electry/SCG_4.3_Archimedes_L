.class Lcom/lenovo/scg/gallery3d/edit/RotateDialog$1;
.super Ljava/lang/Object;
.source "RotateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/RotateDialog;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog$1;->val$r:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 165
    :cond_0
    return-void
.end method
