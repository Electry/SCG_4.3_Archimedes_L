.class Lcom/lenovo/scg/gallery3d/app/SlideshowPage$3;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->loadNextBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/FutureListener",
        "<",
        "Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$3;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "future":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$3;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;

    # setter for: Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mPendingSlide:Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;
    invoke-static {v1, v0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->access$302(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;)Lcom/lenovo/scg/gallery3d/app/SlideshowPage$Slide;

    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$3;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->access$400(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 174
    return-void
.end method
