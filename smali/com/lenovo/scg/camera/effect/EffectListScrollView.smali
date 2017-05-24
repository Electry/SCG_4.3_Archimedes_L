.class public Lcom/lenovo/scg/camera/effect/EffectListScrollView;
.super Lcom/lenovo/scg/camera/effect/ScrollGLView;
.source "EffectListScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/ScrollGLView;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public updateComponent()V
    .locals 6

    .prologue
    .line 17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/EffectListScrollView;->getComponentCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 18
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectListScrollView;->getComponent(I)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v1

    .line 19
    .local v1, "view":Lcom/lenovo/scg/gallery3d/ui/GLView;
    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectListScrollView;->mOffsetLeft:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/lenovo/scg/camera/effect/EffectListScrollView;->mOffsetLeft:I

    add-int/lit8 v4, v4, 0x64

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/GLView;->layout(IIII)V

    .line 20
    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectListScrollView;->mOffsetLeft:I

    add-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/lenovo/scg/camera/effect/EffectListScrollView;->mOffsetLeft:I

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    .end local v1    # "view":Lcom/lenovo/scg/gallery3d/ui/GLView;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/EffectListScrollView;->invalidate()V

    .line 23
    return-void
.end method
