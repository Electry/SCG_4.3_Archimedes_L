.class Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;
.super Ljava/lang/Object;
.source "GoldBoxGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

.field final synthetic val$e1:Landroid/view/MotionEvent;

.field final synthetic val$e2:Landroid/view/MotionEvent;

.field final synthetic val$velocityX:F

.field final synthetic val$velocityY:F


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$e1:Landroid/view/MotionEvent;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$e2:Landroid/view/MotionEvent;

    iput p4, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$velocityX:F

    iput p5, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$velocityY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v3, -0x3c6a0000    # -300.0f

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$e1:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$e2:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$e1:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$e2:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$e1:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$e2:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 253
    iget v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$velocityX:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    move-result-object v0

    const/4 v1, 0x3

    iget v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$velocityX:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$velocityY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->onFling(IFF)V

    goto :goto_0

    .line 256
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$velocityX:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$velocityX:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$velocityY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->onFling(IFF)V

    goto :goto_0

    .line 261
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$velocityY:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$velocityX:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$velocityY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->onFling(IFF)V

    goto :goto_0

    .line 264
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$velocityY:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$velocityX:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;->val$velocityY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->onFling(IFF)V

    goto :goto_0
.end method
