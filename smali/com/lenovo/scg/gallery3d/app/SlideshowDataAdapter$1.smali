.class Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$1;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->nextSlide(Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;
    .locals 2
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 207
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "pool_slideshowdataadapter_nextslide"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # invokes: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->innerNextBitmap()Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$900(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$1;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;

    move-result-object v0

    return-object v0
.end method
