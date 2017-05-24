.class Lcom/lenovo/scg/camera/way/GesturesDetectAssist$1;
.super Landroid/os/Handler;
.source "GesturesDetectAssist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/GesturesDetectAssist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/GesturesDetectAssist;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist$1;->this$0:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 102
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 103
    return-void

    .line 87
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist$1;->this$0:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    const/4 v2, 0x1

    # setter for: Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->allowProcessing:Z
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->access$002(Lcom/lenovo/scg/camera/way/GesturesDetectAssist;Z)Z

    .line 88
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->getInstance()Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->clear()V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist$1;->this$0:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->initEng()V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist$1;->this$0:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->uninitEng()V

    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 99
    .local v0, "dataIn":[B
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist$1;->this$0:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist$1;->this$0:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    # getter for: Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mMFaceResult:Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    invoke-static {v2}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->access$100(Lcom/lenovo/scg/camera/way/GesturesDetectAssist;)Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist$1;->this$0:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    # getter for: Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;
    invoke-static {v3}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->access$200(Lcom/lenovo/scg/camera/way/GesturesDetectAssist;)Lcom/lenovo/scg/camera/agender/AgenderParams;

    move-result-object v3

    # invokes: Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->process([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;)V
    invoke-static {v1, v0, v2, v3}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->access$300(Lcom/lenovo/scg/camera/way/GesturesDetectAssist;[BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
