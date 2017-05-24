.class Lcom/lenovo/scg/gallery3d/net/NetThreadTaskCamera;
.super Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
.source "NetThreadTaskCamera.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->cancelTask()V

    .line 29
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public setListener(Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;
    .param p2, "userContext"    # Ljava/lang/Object;

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setListener(Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "dataType"    # Ljava/lang/Object;
    .param p2, "dataUrl"    # Ljava/lang/Object;
    .param p3, "nRetryCnt"    # I

    .prologue
    .line 17
    return-void
.end method
