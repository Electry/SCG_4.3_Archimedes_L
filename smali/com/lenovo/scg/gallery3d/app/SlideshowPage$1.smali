.class Lcom/lenovo/scg/gallery3d/app/SlideshowPage$1;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/lenovo/scg/gallery3d/ui/SlideshowView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->access$000(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;)Lcom/lenovo/scg/gallery3d/ui/SlideshowView;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SlideshowView;->layout(IIII)V

    .line 114
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$1;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->onBackPressed()V

    .line 121
    :cond_0
    return v1
.end method

.method protected renderBackground(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v1, 0x0

    .line 127
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, v1, v1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->clearBuffer(FFFF)V

    .line 132
    return-void
.end method
