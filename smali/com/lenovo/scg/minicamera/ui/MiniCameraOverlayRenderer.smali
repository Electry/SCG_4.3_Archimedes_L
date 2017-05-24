.class public abstract Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;
.super Ljava/lang/Object;
.source "MiniCameraOverlayRenderer.java"

# interfaces
.implements Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCameraOverlayRender"


# instance fields
.field protected mBottom:I

.field protected mLeft:I

.field protected mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

.field protected mRight:I

.field protected mTop:I

.field protected mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mVisible:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    :cond_0
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mBottom:I

    iget v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mRight:I

    iget v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public handlesTouch()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mVisible:Z

    return v0
.end method

.method public layout(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mLeft:I

    .line 54
    iput p3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mRight:I

    .line 55
    iput p2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mTop:I

    .line 56
    iput p4, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mBottom:I

    .line 57
    return-void
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "evt"    # Landroid/view/MotionEvent;

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public setOverlay(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)V
    .locals 0
    .param p1, "overlay"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    .line 49
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "vis"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mVisible:Z

    .line 20
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->update()V

    .line 21
    return-void
.end method

.method protected update()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->mOverlay:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->update()V

    .line 79
    :cond_0
    return-void
.end method
