.class Lcom/lenovo/scg/camera/effect/CameraOverlayView$5;
.super Ljava/lang/Object;
.source "CameraOverlayView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/effect/CameraOverlayView;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/effect/CameraOverlayView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/effect/CameraOverlayView;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView$5;->this$0:Lcom/lenovo/scg/camera/effect/CameraOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 6
    .param p1, "v"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    const/16 v5, 0x638

    const/16 v4, 0x4de

    const/16 v3, 0x41f

    const/16 v2, 0x19

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView$5;->this$0:Lcom/lenovo/scg/camera/effect/CameraOverlayView;

    # getter for: Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->access$200(Lcom/lenovo/scg/camera/effect/CameraOverlayView;)Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView$5;->this$0:Lcom/lenovo/scg/camera/effect/CameraOverlayView;

    # getter for: Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->access$100(Lcom/lenovo/scg/camera/effect/CameraOverlayView;)Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->layout(IIII)V

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView$5;->this$0:Lcom/lenovo/scg/camera/effect/CameraOverlayView;

    iget-object v0, v0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->layout(IIII)V

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView$5;->this$0:Lcom/lenovo/scg/camera/effect/CameraOverlayView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->startEffectShowAnimation()V

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView$5;->this$0:Lcom/lenovo/scg/camera/effect/CameraOverlayView;

    # getter for: Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->access$300(Lcom/lenovo/scg/camera/effect/CameraOverlayView;)Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setVisibility(I)V

    .line 223
    return-void
.end method
