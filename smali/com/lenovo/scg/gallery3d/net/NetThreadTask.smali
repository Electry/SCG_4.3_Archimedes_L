.class public abstract Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
.super Ljava/lang/Thread;
.source "NetThreadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public setListener(Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;
    .param p2, "userContext"    # Ljava/lang/Object;

    .prologue
    .line 11
    return-void
.end method

.method public setTaskGcListener(Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    .prologue
    .line 23
    return-void
.end method

.method public setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "dataType"    # Ljava/lang/Object;
    .param p2, "dataUrl"    # Ljava/lang/Object;
    .param p3, "nRetryCnt"    # I

    .prologue
    .line 8
    return-void
.end method
