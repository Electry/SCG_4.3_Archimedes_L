.class public Lcom/lenovo/scg/gallery3d/net/NetThreadTaskExperience;
.super Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
.source "NetThreadTaskExperience.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->cancelTask()V

    .line 27
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->run()V

    .line 9
    return-void
.end method

.method public setListener(Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;
    .param p2, "userContext"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setListener(Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public setTaskGcListener(Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskGcListener(Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;)V

    .line 33
    return-void
.end method

.method public setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "dataType"    # Ljava/lang/Object;
    .param p2, "dataUrl"    # Ljava/lang/Object;
    .param p3, "nRetryCnt"    # I

    .prologue
    .line 14
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 15
    return-void
.end method
