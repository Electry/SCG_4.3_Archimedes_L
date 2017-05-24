.class Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$4;
.super Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
.source "CameraBrowsePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p2, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 499
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 514
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 501
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->pickPhoto(I)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$1100(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;I)V

    .line 516
    :goto_0
    return-void

    .line 505
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$1200(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->unlockOrientation()V

    goto :goto_0

    .line 509
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$1200(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->lockOrientation()V

    goto :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
