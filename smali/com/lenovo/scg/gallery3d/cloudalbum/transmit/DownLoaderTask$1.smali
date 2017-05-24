.class Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask$1;
.super Ljava/lang/Object;
.source "DownLoaderTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 40
    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 5
    .param p1, "progress"    # J
    .param p3, "total"    # J
    .param p5, "arg2"    # Landroid/os/Bundle;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->waitIfPaused()Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;)Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    move-result-object v0

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setDownloadProgress(JJ)V

    goto :goto_0
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 52
    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # J
    .param p3, "arg1"    # J
    .param p5, "arg2"    # Landroid/os/Bundle;

    .prologue
    .line 57
    return-void
.end method
