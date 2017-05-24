.class Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4$1;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;

.field final synthetic val$jc:Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

.field final synthetic val$operation:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;I)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4$1;->val$jc:Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    iput p3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4$1;->val$operation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$302(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Lcom/lenovo/scg/gallery3d/util/Future;)Lcom/lenovo/scg/gallery3d/util/Future;

    .line 430
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4$1;->val$jc:Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$900(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$900(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getShareAdapterData()Ljava/util/ArrayList;

    move-result-object v2

    # invokes: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateShareMenu(Landroid/content/Context;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$1000(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 432
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$900(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4$1;->this$1:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->access$900(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getMoreAdapterData()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4$1;->val$operation:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->updateMenuOperation(Landroid/app/Activity;Ljava/util/ArrayList;I)V

    .line 435
    :cond_0
    return-void
.end method
