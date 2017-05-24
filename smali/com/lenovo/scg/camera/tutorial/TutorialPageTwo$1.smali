.class Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo$1;
.super Landroid/os/Handler;
.source "TutorialPageTwo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo$1;->this$0:Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;

    # invokes: Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->showNextHiImage()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->access$000(Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
