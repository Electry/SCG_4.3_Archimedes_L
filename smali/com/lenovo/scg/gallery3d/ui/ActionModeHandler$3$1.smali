.class Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3$1;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$jc:Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

.field final synthetic val$operation:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3$1;->val$jc:Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    iput p3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3$1;->val$operation:I

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$302(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Lcom/lenovo/scg/gallery3d/util/Future;)Lcom/lenovo/scg/gallery3d/util/Future;

    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3$1;->val$jc:Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$400(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3$1;->val$operation:I

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->updateMenuOperation(Landroid/view/Menu;I)V

    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;->val$supportShare:Z

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;->val$item:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 365
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$500(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Landroid/widget/ShareActionProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 368
    :cond_0
    return-void
.end method
