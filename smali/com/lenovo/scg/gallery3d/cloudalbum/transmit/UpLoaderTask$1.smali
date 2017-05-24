.class Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask$1;
.super Ljava/lang/Object;
.source "UpLoaderTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 58
    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 0
    .param p1, "current"    # J
    .param p3, "total"    # J
    .param p5, "arg2"    # Landroid/os/Bundle;

    .prologue
    .line 64
    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 69
    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 5
    .param p1, "progress"    # J
    .param p3, "total"    # J
    .param p5, "arg2"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x64

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->waitIfPaused()Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    cmp-long v0, p3, v2

    if-nez v0, :cond_2

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;)Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setUploadProgress(Ljava/lang/Long;J)V

    goto :goto_0
.end method
