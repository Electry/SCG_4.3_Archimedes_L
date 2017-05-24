.class public abstract Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;
.super Ljava/lang/Object;
.source "LandscapeAbstractSlotRenderer.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;


# static fields
.field public static final ICON_SIZE:I = 0x52


# instance fields
.field private final mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

.field private mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

.field private final mFrameSelected:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

.field private final mPanoramaBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

.field private final mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private final mVideoOverlay:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private final mVideoPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f0206c8

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mVideoOverlay:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 57
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f02064f

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mVideoPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 58
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    const v1, 0x7f020692

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mPanoramaBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    .line 59
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    const v1, 0x7f020634

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    .line 60
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    const v1, 0x7f020635

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mFrameSelected:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    .line 61
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f0206a7

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 62
    return-void
.end method

.method protected static drawFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIII)V
    .locals 6
    .param p0, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "frame"    # Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 274
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, p3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, p4, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p5

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int v5, v0, v1

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 275
    return-void
.end method


# virtual methods
.method protected drawContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIIF)V
    .locals 10
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "content"    # Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "rotation"    # I
    .param p6, "textureOffset"    # F

    .prologue
    .line 153
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 155
    if-ne p3, p4, :cond_1

    .line 156
    if-eqz p5, :cond_0

    .line 157
    div-int/lit8 v6, p3, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, p4, 0x2

    int-to-float v7, v7

    invoke-interface {p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 158
    int-to-float v6, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-interface {p1, v6, v7, v8, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 159
    neg-int v6, p3

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    neg-int v7, p4

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-interface {p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 160
    rem-int/lit8 v6, p5, 0x5a

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 161
    move v5, p4

    .line 162
    .local v5, "temp":I
    move p4, p3

    .line 163
    move p3, v5

    .line 167
    .end local v5    # "temp":I
    :cond_0
    int-to-float v6, p3

    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, p4

    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 168
    .local v0, "scale":F
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v0, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 169
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {p2, p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 198
    .end local v0    # "scale":F
    :goto_0
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 199
    return-void

    .line 171
    :cond_1
    if-eqz p5, :cond_2

    .line 172
    rem-int/lit16 v6, p5, 0xb4

    if-nez v6, :cond_3

    .line 173
    div-int/lit8 v6, p3, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, p4, 0x2

    int-to-float v7, v7

    invoke-interface {p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 174
    int-to-float v6, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-interface {p1, v6, v7, v8, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 175
    neg-int v6, p3

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    neg-int v7, p4

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-interface {p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 185
    :cond_2
    :goto_1
    int-to-float v6, p3

    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 186
    .local v2, "scaleWidth":F
    int-to-float v6, p4

    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 187
    .local v1, "scaleHeight":F
    new-instance v3, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 188
    .local v3, "source":Landroid/graphics/RectF;
    cmpl-float v6, v2, v1

    if-lez v6, :cond_4

    .line 189
    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p4

    div-float/2addr v7, v2

    sub-float/2addr v6, v7

    mul-float v6, v6, p6

    iput v6, v3, Landroid/graphics/RectF;->top:F

    .line 190
    iget v6, v3, Landroid/graphics/RectF;->top:F

    int-to-float v7, p4

    div-float/2addr v7, v2

    add-float/2addr v6, v7

    iput v6, v3, Landroid/graphics/RectF;->bottom:F

    .line 195
    :goto_2
    new-instance v4, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, p3

    int-to-float v9, p4

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 196
    .local v4, "target":Landroid/graphics/RectF;
    invoke-interface {p2, p1, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 176
    .end local v1    # "scaleHeight":F
    .end local v2    # "scaleWidth":F
    .end local v3    # "source":Landroid/graphics/RectF;
    .end local v4    # "target":Landroid/graphics/RectF;
    :cond_3
    rem-int/lit8 v6, p5, 0x5a

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_2

    .line 177
    div-int/lit8 v6, p3, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, p4, 0x2

    int-to-float v7, v7

    invoke-interface {p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 178
    int-to-float v6, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-interface {p1, v6, v7, v8, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 179
    neg-int v6, p4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    neg-int v7, p3

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-interface {p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 180
    move v5, p4

    .line 181
    .restart local v5    # "temp":I
    move p4, p3

    .line 182
    move p3, v5

    goto :goto_1

    .line 192
    .end local v5    # "temp":I
    .restart local v1    # "scaleHeight":F
    .restart local v2    # "scaleWidth":F
    .restart local v3    # "source":Landroid/graphics/RectF;
    :cond_4
    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float/2addr v7, v1

    sub-float/2addr v6, v7

    mul-float v6, v6, p6

    iput v6, v3, Landroid/graphics/RectF;->left:F

    .line 193
    iget v6, v3, Landroid/graphics/RectF;->left:F

    int-to-float v7, p3

    div-float/2addr v7, v1

    add-float/2addr v6, v7

    iput v6, v3, Landroid/graphics/RectF;->right:F

    goto :goto_2
.end method

.method protected drawPanoramaBorder(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 238
    int-to-float v0, p2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mPanoramaBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 239
    .local v6, "scale":F
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mPanoramaBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 240
    .local v4, "w":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mPanoramaBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 242
    .local v5, "h":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mPanoramaBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mPanoramaBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    sub-int v3, p3, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 245
    return-void
.end method

.method protected drawPressedFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->drawFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIII)V

    .line 267
    return-void
.end method

.method protected drawPressedUpFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;-><init>(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->drawFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIII)V

    .line 263
    return-void
.end method

.method protected drawSelectedFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mFrameSelected:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mFrameSelected:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->drawFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIII)V

    .line 271
    return-void
.end method

.method protected drawSpeechOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 230
    const/16 v4, 0x52

    .line 232
    .local v4, "s":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 233
    return-void
.end method

.method protected drawSquareContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIIF)V
    .locals 14
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "content"    # Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "rotation"    # I
    .param p6, "textureOffset"    # F

    .prologue
    .line 75
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 77
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    .line 78
    if-eqz p5, :cond_0

    .line 79
    div-int/lit8 v9, p3, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, p4, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 80
    move/from16 v0, p5

    int-to-float v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-interface {p1, v9, v10, v11, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 81
    move/from16 v0, p3

    neg-int v9, v0

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move/from16 v0, p4

    neg-int v10, v0

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 82
    rem-int/lit8 v9, p5, 0x5a

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    .line 83
    move/from16 v8, p4

    .line 84
    .local v8, "temp":I
    move/from16 p4, p3

    .line 85
    move/from16 p3, v8

    .line 88
    .end local v8    # "temp":I
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 89
    .local v5, "size":I
    move/from16 v0, p3

    int-to-float v9, v0

    int-to-float v10, v5

    div-float/2addr v9, v10

    move/from16 v0, p4

    int-to-float v10, v0

    int-to-float v11, v5

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 92
    .local v2, "scale":F
    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    if-le v9, v10, :cond_1

    .line 93
    new-instance v6, Landroid/graphics/RectF;

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float v9, v9, p6

    const/4 v10, 0x0

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v11

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float v11, v11, p6

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v6, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 99
    .local v6, "source":Landroid/graphics/RectF;
    :goto_0
    new-instance v7, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p3

    int-to-float v11, v0

    move/from16 v0, p4

    int-to-float v12, v0

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 100
    .local v7, "target":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-interface {v0, p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 139
    .end local v2    # "scale":F
    .end local v5    # "size":I
    :goto_1
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 140
    return-void

    .line 96
    .end local v6    # "source":Landroid/graphics/RectF;
    .end local v7    # "target":Landroid/graphics/RectF;
    .restart local v2    # "scale":F
    .restart local v5    # "size":I
    :cond_1
    new-instance v6, Landroid/graphics/RectF;

    const/4 v9, 0x0

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float v10, v10, p6

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v12

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float v12, v12, p6

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    invoke-direct {v6, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v6    # "source":Landroid/graphics/RectF;
    goto :goto_0

    .line 102
    .end local v2    # "scale":F
    .end local v5    # "size":I
    .end local v6    # "source":Landroid/graphics/RectF;
    :cond_2
    if-eqz p5, :cond_3

    .line 103
    move/from16 v0, p5

    rem-int/lit16 v9, v0, 0xb4

    if-nez v9, :cond_4

    .line 104
    div-int/lit8 v9, p3, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, p4, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 105
    move/from16 v0, p5

    int-to-float v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-interface {p1, v9, v10, v11, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 106
    move/from16 v0, p3

    neg-int v9, v0

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move/from16 v0, p4

    neg-int v10, v0

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 116
    :cond_3
    :goto_2
    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v5, v9

    .line 117
    .local v5, "size":F
    move/from16 v0, p3

    int-to-float v9, v0

    div-float v4, v9, v5

    .line 118
    .local v4, "scaleWidth":F
    move/from16 v0, p4

    int-to-float v9, v0

    div-float v3, v9, v5

    .line 120
    .local v3, "scaleHeight":F
    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    if-le v9, v10, :cond_5

    .line 121
    new-instance v6, Landroid/graphics/RectF;

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v11

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v6, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 127
    .restart local v6    # "source":Landroid/graphics/RectF;
    :goto_3
    cmpl-float v9, v4, v3

    if-lez v9, :cond_6

    .line 128
    iget v9, v6, Landroid/graphics/RectF;->top:F

    move/from16 v0, p4

    int-to-float v10, v0

    div-float/2addr v10, v4

    sub-float v10, v5, v10

    mul-float v10, v10, p6

    add-float/2addr v9, v10

    iput v9, v6, Landroid/graphics/RectF;->top:F

    .line 129
    iget v9, v6, Landroid/graphics/RectF;->top:F

    move/from16 v0, p4

    int-to-float v10, v0

    div-float/2addr v10, v4

    add-float/2addr v9, v10

    iput v9, v6, Landroid/graphics/RectF;->bottom:F

    .line 135
    :goto_4
    new-instance v7, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p3

    int-to-float v11, v0

    move/from16 v0, p4

    int-to-float v12, v0

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 136
    .restart local v7    # "target":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-interface {v0, p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto/16 :goto_1

    .line 107
    .end local v3    # "scaleHeight":F
    .end local v4    # "scaleWidth":F
    .end local v5    # "size":F
    .end local v6    # "source":Landroid/graphics/RectF;
    .end local v7    # "target":Landroid/graphics/RectF;
    :cond_4
    rem-int/lit8 v9, p5, 0x5a

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_3

    .line 108
    div-int/lit8 v9, p3, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, p4, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 109
    move/from16 v0, p5

    int-to-float v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-interface {p1, v9, v10, v11, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 110
    move/from16 v0, p4

    neg-int v9, v0

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move/from16 v0, p3

    neg-int v10, v0

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 111
    move/from16 v8, p4

    .line 112
    .restart local v8    # "temp":I
    move/from16 p4, p3

    .line 113
    move/from16 p3, v8

    goto/16 :goto_2

    .line 124
    .end local v8    # "temp":I
    .restart local v3    # "scaleHeight":F
    .restart local v4    # "scaleWidth":F
    .restart local v5    # "size":F
    :cond_5
    new-instance v6, Landroid/graphics/RectF;

    const/4 v9, 0x0

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v12

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    invoke-direct {v6, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v6    # "source":Landroid/graphics/RectF;
    goto/16 :goto_3

    .line 131
    :cond_6
    iget v9, v6, Landroid/graphics/RectF;->left:F

    move/from16 v0, p3

    int-to-float v10, v0

    div-float/2addr v10, v3

    sub-float v10, v5, v10

    mul-float v10, v10, p6

    add-float/2addr v9, v10

    iput v9, v6, Landroid/graphics/RectF;->left:F

    .line 132
    iget v9, v6, Landroid/graphics/RectF;->left:F

    move/from16 v0, p3

    int-to-float v10, v0

    div-float/2addr v10, v3

    add-float/2addr v9, v10

    iput v9, v6, Landroid/graphics/RectF;->right:F

    goto/16 :goto_4
.end method

.method protected drawVideoOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 14
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 204
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mVideoOverlay:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 205
    .local v1, "v":Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;
    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 206
    .local v13, "scale":F
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 207
    .local v5, "w":I
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 208
    .local v6, "h":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 210
    sub-int v3, p2, v5

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 215
    const/16 v11, 0x52

    .line 217
    .local v11, "s":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mVideoPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    sub-int v2, p2, v11

    div-int/lit8 v9, v2, 0x2

    sub-int v2, p3, v11

    div-int/lit8 v10, v2, 0x2

    move-object v8, p1

    move v12, v11

    invoke-virtual/range {v7 .. v12}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 218
    return-void
.end method

.method protected isPressedUpFrameFinished()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeAbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    .line 255
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
