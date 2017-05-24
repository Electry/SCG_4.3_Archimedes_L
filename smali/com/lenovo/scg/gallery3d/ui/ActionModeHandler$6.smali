.class Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$6;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->showMoreShareDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$6;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$6;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$1100(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->dismissDialog()Z

    .line 695
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$6;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$1102(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    .line 696
    return-void
.end method
