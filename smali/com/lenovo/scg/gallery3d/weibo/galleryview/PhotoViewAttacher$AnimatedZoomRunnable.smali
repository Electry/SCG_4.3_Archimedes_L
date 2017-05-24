.class Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# static fields
.field static final ANIMATION_SCALE_PER_ITERATION_IN:F = 1.07f

.field static final ANIMATION_SCALE_PER_ITERATION_OUT:F = 0.93f


# instance fields
.field private final mDeltaScale:F

.field private final mFocalX:F

.field private final mFocalY:F

.field private final mTargetZoom:F

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;FFFF)V
    .locals 1
    .param p2, "currentZoom"    # F
    .param p3, "targetZoom"    # F
    .param p4, "focalX"    # F
    .param p5, "focalY"    # F

    .prologue
    .line 785
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    iput p3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mTargetZoom:F

    .line 787
    iput p4, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    .line 788
    iput p5, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    .line 790
    cmpg-float v0, p2, p3

    if-gez v0, :cond_0

    .line 791
    const v0, 0x3f88f5c3    # 1.07f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mDeltaScale:F

    .line 795
    :goto_0
    return-void

    .line 793
    :cond_0
    const v0, 0x3f6e147b    # 0.93f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mDeltaScale:F

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 798
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 800
    .local v2, "imageView":Landroid/widget/ImageView;
    if-eqz v2, :cond_2

    .line 801
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->access$200(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mDeltaScale:F

    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mDeltaScale:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    iget v7, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 802
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->checkAndDisplayMatrix()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->access$300(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;)V

    .line 804
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getScale()F

    move-result v0

    .line 806
    .local v0, "currentScale":F
    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mDeltaScale:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_0

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mTargetZoom:F

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mDeltaScale:F

    cmpg-float v3, v3, v8

    if-gez v3, :cond_3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mTargetZoom:F

    cmpg-float v3, v3, v0

    if-gez v3, :cond_3

    .line 810
    :cond_1
    invoke-static {v2, p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 820
    .end local v0    # "currentScale":F
    :cond_2
    :goto_0
    return-void

    .line 815
    .restart local v0    # "currentScale":F
    :cond_3
    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mTargetZoom:F

    div-float v1, v3, v0

    .line 816
    .local v1, "delta":F
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->access$200(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 817
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->checkAndDisplayMatrix()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->access$300(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;)V

    goto :goto_0
.end method
