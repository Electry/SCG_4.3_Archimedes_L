.class public Lcom/lenovo/scg/gallery3d/ui/EdgeView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "EdgeView.java"


# static fields
.field public static final BOTTOM:I = 0x2

.field private static final BOTTOM_M:I = 0x20

.field public static final FROMLEFT:I = 0x4

.field public static final FROMTOP:I = 0x5

.field public static final INVALID_DIRECTION:I = -0x1

.field public static final LEFT:I = 0x1

.field private static final LEFT_M:I = 0x10

.field public static final RIGHT:I = 0x3

.field private static final RIGHT_M:I = 0x30

.field private static final TAG:Ljava/lang/String; = "EdgeView"

.field public static final TOP:I

.field private static final TOP_M:I


# instance fields
.field private mEffect:[Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;

.field private mMatrix:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x4

    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 56
    new-array v1, v3, [Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mEffect:[Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;

    .line 58
    const/16 v1, 0x40

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mMatrix:[F

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 62
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mEffect:[Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;

    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;

    invoke-direct {v2, p1}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public onAbsorb(II)V
    .locals 1
    .param p1, "velocity"    # I
    .param p2, "direction"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mEffect:[Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->onAbsorb(I)V

    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mEffect:[Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->invalidate()V

    .line 144
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changeSize"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 70
    :cond_0
    sub-int v8, p4, p2

    .line 71
    .local v8, "w":I
    sub-int v6, p5, p3

    .line 72
    .local v6, "h":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/4 v0, 0x4

    if-ge v7, v0, :cond_2

    .line 73
    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mEffect:[Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;

    aget-object v0, v0, v7

    invoke-virtual {v0, v8, v6}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->setSize(II)V

    .line 72
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mEffect:[Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;

    aget-object v0, v0, v7

    invoke-virtual {v0, v6, v8}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->setSize(II)V

    goto :goto_2

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x30

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x10

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x10

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x20

    const/4 v2, 0x0

    int-to-float v3, v6

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x20

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x30

    int-to-float v2, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x30

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto/16 :goto_0
.end method

.method public onPull(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "direction"    # I

    .prologue
    .line 117
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->getWidth()I

    move-result v0

    .line 118
    .local v0, "fullLength":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mEffect:[Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;

    aget-object v1, v1, p2

    int-to-float v2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->onPull(F)V

    .line 119
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mEffect:[Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->invalidate()V

    .line 122
    :cond_0
    return-void

    .line 117
    .end local v0    # "fullLength":I
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public onRelease()V
    .locals 3

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "more":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mEffect:[Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->onRelease()V

    .line 129
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mEffect:[Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    or-int/2addr v1, v2

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 131
    :cond_1
    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->invalidate()V

    .line 134
    :cond_2
    return-void
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "more":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 104
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 105
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mMatrix:[F

    mul-int/lit8 v3, v0, 0x10

    invoke-interface {p1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 106
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->mEffect:[Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/ui/EdgeEffect;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 107
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->invalidate()V

    .line 112
    :cond_1
    return-void
.end method
