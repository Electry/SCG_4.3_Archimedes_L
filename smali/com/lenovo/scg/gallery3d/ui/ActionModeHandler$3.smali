.class Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

.field final synthetic val$item:Landroid/view/MenuItem;

.field final synthetic val$supportShare:Z


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;ZLandroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;->val$supportShare:Z

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 5
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v2, 0x0

    .line 350
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string/jumbo v4, "pool_actionmodehandler_updatesupportedoperation"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 354
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->computeMenuOptions(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)I
    invoke-static {v3, p1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$100(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)I

    move-result v1

    .line 357
    .local v1, "operation":I
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;->val$supportShare:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->computeSharingIntent(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    invoke-static {v3, p1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$200(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$600(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3$1;

    invoke-direct {v4, p0, p1, v1, v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;ILandroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    return-object v2

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    move-object v0, v2

    .line 357
    goto :goto_0
.end method
