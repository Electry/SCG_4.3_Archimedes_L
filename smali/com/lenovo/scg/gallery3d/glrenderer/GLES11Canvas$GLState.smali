.class Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;
.super Ljava/lang/Object;
.source "GLES11Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLState"
.end annotation


# instance fields
.field private mBlendEnabled:Z

.field private mClearColor:F

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mLineSmooth:Z

.field private mLineWidth:F

.field private mTexEnvMode:I

.field private mTextureAlpha:F

.field private mTextureTarget:I


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    const/16 v2, 0xde1

    const/4 v4, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    const/16 v0, 0x1e01

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mTexEnvMode:I

    .line 588
    iput v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureAlpha:F

    .line 590
    iput v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    .line 592
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mBlendEnabled:Z

    .line 594
    iput v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mLineWidth:F

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mLineSmooth:Z

    .line 599
    iput v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mClearColor:F

    .line 604
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 607
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 610
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 612
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 613
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 614
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 616
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x45f00800    # 7681.0f

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 619
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 621
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 622
    const/16 v0, 0x303

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 625
    const/16 v0, 0xcf5

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V

    .line 626
    return-void
.end method


# virtual methods
.method public getClearColor()F
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mClearColor:F

    return v0
.end method

.method public initGalleryBackground()V
    .locals 3

    .prologue
    const v2, 0x3e808081

    .line 691
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v2, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 692
    iput v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mClearColor:F

    .line 693
    return-void
.end method

.method public setBlendEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0xbe2

    .line 680
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mBlendEnabled:Z

    if-ne v0, p1, :cond_0

    .line 687
    :goto_0
    return-void

    .line 681
    :cond_0
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mBlendEnabled:Z

    .line 682
    if-eqz p1, :cond_1

    .line 683
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    goto :goto_0
.end method

.method public setColorMode(IF)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "alpha"    # F

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x437f0000    # 255.0f

    .line 654
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 658
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureAlpha:F

    .line 660
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureTarget(I)V

    .line 662
    ushr-int/lit8 v1, p1, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, p2

    const v2, 0x477fff00    # 65535.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    div-float v0, v1, v5

    .line 663
    .local v0, "prealpha":F
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glColor4x(IIII)V

    .line 665
    return-void

    .end local v0    # "prealpha":F
    :cond_1
    move v1, v2

    .line 654
    goto :goto_0
.end method

.method public setLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 635
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mLineWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 636
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mLineWidth:F

    .line 637
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glLineWidth(F)V

    goto :goto_0
.end method

.method public setTexEnvMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 629
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mTexEnvMode:I

    if-ne v0, p1, :cond_0

    .line 632
    :goto_0
    return-void

    .line 630
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mTexEnvMode:I

    .line 631
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    int-to-float v3, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    goto :goto_0
.end method

.method public setTextureAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 641
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 651
    :goto_0
    return-void

    .line 642
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureAlpha:F

    .line 643
    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 646
    const/16 v0, 0x1e01

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 649
    const/16 v0, 0x2100

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    goto :goto_0
.end method

.method public setTextureTarget(I)V
    .locals 2
    .param p1, "target"    # I

    .prologue
    .line 669
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    if-ne v0, p1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    if-eqz v0, :cond_2

    .line 671
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 673
    :cond_2
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    .line 674
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0
.end method
