.class Lcom/lenovo/scg/camera/water/WaterAssist$1;
.super Landroid/os/Handler;
.source "WaterAssist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/water/WaterAssist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/water/WaterAssist;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/water/WaterAssist;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/scg/camera/water/WaterAssist$1;->this$0:Lcom/lenovo/scg/camera/water/WaterAssist;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 60
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    return-void

    .line 56
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 57
    .local v0, "dataIn":[B
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterAssist$1;->this$0:Lcom/lenovo/scg/camera/water/WaterAssist;

    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterAssist$1;->this$0:Lcom/lenovo/scg/camera/water/WaterAssist;

    # getter for: Lcom/lenovo/scg/camera/water/WaterAssist;->mMFaceResult:Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    invoke-static {v2}, Lcom/lenovo/scg/camera/water/WaterAssist;->access$000(Lcom/lenovo/scg/camera/water/WaterAssist;)Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterAssist$1;->this$0:Lcom/lenovo/scg/camera/water/WaterAssist;

    # getter for: Lcom/lenovo/scg/camera/water/WaterAssist;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;
    invoke-static {v3}, Lcom/lenovo/scg/camera/water/WaterAssist;->access$100(Lcom/lenovo/scg/camera/water/WaterAssist;)Lcom/lenovo/scg/camera/agender/AgenderParams;

    move-result-object v3

    # invokes: Lcom/lenovo/scg/camera/water/WaterAssist;->process([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;)V
    invoke-static {v1, v0, v2, v3}, Lcom/lenovo/scg/camera/water/WaterAssist;->access$200(Lcom/lenovo/scg/camera/water/WaterAssist;[BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
