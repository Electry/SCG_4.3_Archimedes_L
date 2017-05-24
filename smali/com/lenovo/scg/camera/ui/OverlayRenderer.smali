.class public abstract Lcom/lenovo/scg/camera/ui/OverlayRenderer;
.super Ljava/lang/Object;
.source "OverlayRenderer.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/RenderOverlay$Renderer;


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_OverlayRenderer"


# instance fields
.field protected mBottom:I

.field protected mIsCanVisible:Z

.field protected mLeft:I

.field protected mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

.field protected mRight:I

.field protected mTop:I

.field protected mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mIsCanVisible:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mIsCanVisible:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mBottom:I

    iget v1, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRenderOverlay()Lcom/lenovo/scg/camera/ui/RenderOverlay;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mRight:I

    iget v1, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public handlesTouch()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public isRealVisible()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mIsCanVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mVisible:Z

    return v0
.end method

.method public layout(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mLeft:I

    .line 80
    iput p3, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mRight:I

    .line 81
    iput p2, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mTop:I

    .line 82
    iput p4, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mBottom:I

    .line 83
    return-void
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "evt"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public setCanVisible(Z)V
    .locals 0
    .param p1, "vis"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mIsCanVisible:Z

    .line 118
    return-void
.end method

.method public setOverlay(Lcom/lenovo/scg/camera/ui/RenderOverlay;)V
    .locals 0
    .param p1, "overlay"    # Lcom/lenovo/scg/camera/ui/RenderOverlay;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    .line 75
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "vis"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mVisible:Z

    .line 40
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->update()V

    .line 41
    return-void
.end method

.method protected update()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->update()V

    .line 105
    :cond_0
    return-void
.end method
