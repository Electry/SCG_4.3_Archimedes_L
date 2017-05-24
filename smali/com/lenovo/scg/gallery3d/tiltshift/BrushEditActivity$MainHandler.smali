.class Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$MainHandler;
.super Landroid/os/Handler;
.source "BrushEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$MainHandler;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 464
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 475
    :goto_0
    return-void

    .line 467
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 468
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->finish()V

    goto :goto_0

    .line 472
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$MainHandler;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->showExitDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$2800(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V

    goto :goto_0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
