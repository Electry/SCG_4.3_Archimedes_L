.class Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

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

    .line 515
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->layout(IIII)V

    .line 516
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOverlayRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    # setter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOverlayRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$902(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 524
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraOverlayView:Lcom/lenovo/scg/gallery3d/ui/GLView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraOverlayView:Lcom/lenovo/scg/gallery3d/ui/GLView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/GLView;->layout(IIII)V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowDetails:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1300(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1200(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->getHeight()I

    move-result v1

    invoke-virtual {v0, p2, v1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 530
    :cond_1
    return-void

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOverlayRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Landroid/graphics/Rect;

    move-result-object v0

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 520
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOverlayRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Landroid/graphics/Rect;

    move-result-object v0

    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 521
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOverlayRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Landroid/graphics/Rect;

    move-result-object v0

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 522
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOverlayRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Landroid/graphics/Rect;

    move-result-object v0

    iput p5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method protected renderBackground(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBars:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$500(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->needHackForBlackgroudColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHideBarBgColor:[F
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$700(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)[F

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->clearBuffer([F)V

    .line 511
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBarBgColor:[F
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)[F

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->clearBuffer([F)V

    goto :goto_0

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHideBarBgColor:[F
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$700(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)[F

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->clearBuffer([F)V

    goto :goto_0
.end method
