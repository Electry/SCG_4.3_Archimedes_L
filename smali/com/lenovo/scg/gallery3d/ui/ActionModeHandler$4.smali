.class Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSupportedMenuOperation()V
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


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 418
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string/jumbo v2, "pool_actionmodehandler_updatesupportedoperation"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->computeMenuOptions(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)I
    invoke-static {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$100(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)I

    move-result v0

    .line 425
    .local v0, "operation":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->computeShareIntent(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    invoke-static {v2, p1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$800(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v2

    # setter for: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$702(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Landroid/content/Intent;)Landroid/content/Intent;

    .line 426
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$600(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    const/4 v1, 0x0

    return-object v1
.end method
