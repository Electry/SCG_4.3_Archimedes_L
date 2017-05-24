.class Lcom/lenovo/scg/camera/effect/CameraOverlayView$MyGestureListener;
.super Ljava/lang/Object;
.source "CameraOverlayView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/effect/CameraOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/effect/CameraOverlayView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/effect/CameraOverlayView;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/effect/CameraOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/effect/CameraOverlayView;Lcom/lenovo/scg/camera/effect/CameraOverlayView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/effect/CameraOverlayView;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/effect/CameraOverlayView$1;

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/CameraOverlayView$MyGestureListener;-><init>(Lcom/lenovo/scg/camera/effect/CameraOverlayView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 430
    const-string/jumbo v0, "wwf2"

    const-string/jumbo v1, "onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 405
    const-string/jumbo v0, "wwf2"

    const-string/jumbo v1, "onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public onScale(FFF)Z
    .locals 1
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "scale"    # F

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(FF)Z
    .locals 1
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleEnd()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method public onScroll(FFFF)Z
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "totalX"    # F
    .param p4, "totalY"    # F

    .prologue
    .line 398
    const-string/jumbo v0, "wwf2"

    const-string/jumbo v1, "onScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 383
    const-string/jumbo v0, "wwf2"

    const-string/jumbo v1, "onSingleTapUp"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public onUp()V
    .locals 2

    .prologue
    .line 440
    const-string/jumbo v0, "wwf2"

    const-string/jumbo v1, "onUp"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void
.end method
