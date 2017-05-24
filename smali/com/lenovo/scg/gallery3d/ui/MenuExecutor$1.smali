.class Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$1;
.super Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p2, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 140
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 142
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 143
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 144
    .local v0, "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressStart()V

    goto :goto_0

    .line 149
    .end local v0    # "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$000(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)V

    .line 150
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 151
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 152
    .restart local v0    # "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressComplete(I)V

    .line 154
    .end local v0    # "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$100(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$200(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mPaused:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$300(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$200(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 159
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 160
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 161
    .restart local v0    # "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressUpdate(I)V

    goto :goto_0

    .line 166
    .end local v0    # "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$400(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
