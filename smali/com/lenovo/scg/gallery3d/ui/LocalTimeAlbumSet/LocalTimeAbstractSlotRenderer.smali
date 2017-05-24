.class public abstract Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;
.super Ljava/lang/Object;
.source "LocalTimeAbstractSlotRenderer.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;


# static fields
.field public static final ICON_SIZE:I = 0x52


# instance fields
.field private final mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

.field private mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

.field private final mFrameSelected:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

.field private final mGifPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private final mPanoramaBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

.field private final mPanoramaPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private final mPilePlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field protected final mScrollbarTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private final mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private final mVideoOverlay:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private final mVideoPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f0206c8

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mVideoOverlay:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 87
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f02064f

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mVideoPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 89
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f020652

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mGifPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 90
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f0206b7

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mPilePlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 93
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f0206a7

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 95
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    const v1, 0x7f020692

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mPanoramaBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    .line 96
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    const v1, 0x7f020634

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    .line 98
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    const v1, 0x7f020701

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mFrameSelected:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    .line 101
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f0208d5

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mScrollbarTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 104
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f020693

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mPanoramaPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 106
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
    .line 330
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

    .line 331
    return-void
.end method


# virtual methods
.method protected drawContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;III)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "content"    # Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "rotation"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 204
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 208
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    move p3, p4

    .line 209
    if-eqz p5, :cond_0

    .line 210
    div-int/lit8 v1, p3, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 211
    int-to-float v1, p5

    invoke-interface {p1, v1, v3, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 212
    neg-int v1, p3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v2, p4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 215
    :cond_0
    int-to-float v1, p3

    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p4

    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 218
    .local v0, "scale":F
    invoke-interface {p1, v0, v0, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 219
    invoke-interface {p2, p1, v5, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 221
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 222
    return-void
.end method

.method protected drawContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIIF)V
    .locals 14
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "content"    # Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "rotation"    # I
    .param p6, "textureOffset"    # F

    .prologue
    .line 119
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 121
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    .line 122
    if-eqz p5, :cond_0

    .line 123
    div-int/lit8 v9, p3, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, p4, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 124
    move/from16 v0, p5

    int-to-float v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-interface {p1, v9, v10, v11, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 125
    move/from16 v0, p3

    neg-int v9, v0

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move/from16 v0, p4

    neg-int v10, v0

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 126
    rem-int/lit8 v9, p5, 0x5a

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    .line 127
    move/from16 v8, p4

    .line 128
    .local v8, "temp":I
    move/from16 p4, p3

    .line 129
    move/from16 p3, v8

    .line 132
    .end local v8    # "temp":I
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 133
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

    .line 141
    .local v2, "scale":F
    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    if-le v9, v10, :cond_1

    .line 142
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

    .line 148
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

    .line 149
    .local v7, "target":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-interface {v0, p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 199
    .end local v2    # "scale":F
    .end local v5    # "size":I
    :goto_1
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 200
    return-void

    .line 145
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

    .line 151
    .end local v2    # "scale":F
    .end local v5    # "size":I
    .end local v6    # "source":Landroid/graphics/RectF;
    :cond_2
    if-eqz p5, :cond_3

    .line 152
    move/from16 v0, p5

    rem-int/lit16 v9, v0, 0xb4

    if-nez v9, :cond_4

    .line 153
    div-int/lit8 v9, p3, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, p4, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 154
    move/from16 v0, p5

    int-to-float v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-interface {p1, v9, v10, v11, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 155
    move/from16 v0, p3

    neg-int v9, v0

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move/from16 v0, p4

    neg-int v10, v0

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 176
    :cond_3
    :goto_2
    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v5, v9

    .line 177
    .local v5, "size":F
    move/from16 v0, p3

    int-to-float v9, v0

    div-float v4, v9, v5

    .line 178
    .local v4, "scaleWidth":F
    move/from16 v0, p4

    int-to-float v9, v0

    div-float v3, v9, v5

    .line 180
    .local v3, "scaleHeight":F
    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    if-le v9, v10, :cond_5

    .line 181
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

    .line 187
    .restart local v6    # "source":Landroid/graphics/RectF;
    :goto_3
    cmpl-float v9, v4, v3

    if-lez v9, :cond_6

    .line 188
    iget v9, v6, Landroid/graphics/RectF;->top:F

    move/from16 v0, p4

    int-to-float v10, v0

    div-float/2addr v10, v4

    sub-float v10, v5, v10

    mul-float v10, v10, p6

    add-float/2addr v9, v10

    iput v9, v6, Landroid/graphics/RectF;->top:F

    .line 189
    iget v9, v6, Landroid/graphics/RectF;->top:F

    move/from16 v0, p4

    int-to-float v10, v0

    div-float/2addr v10, v4

    add-float/2addr v9, v10

    iput v9, v6, Landroid/graphics/RectF;->bottom:F

    .line 195
    :goto_4
    new-instance v7, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p3

    int-to-float v11, v0

    move/from16 v0, p4

    int-to-float v12, v0

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 196
    .restart local v7    # "target":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-interface {v0, p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto/16 :goto_1

    .line 156
    .end local v3    # "scaleHeight":F
    .end local v4    # "scaleWidth":F
    .end local v5    # "size":F
    .end local v6    # "source":Landroid/graphics/RectF;
    .end local v7    # "target":Landroid/graphics/RectF;
    :cond_4
    rem-int/lit8 v9, p5, 0x5a

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_3

    .line 157
    div-int/lit8 v9, p3, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, p4, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 158
    move/from16 v0, p5

    int-to-float v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-interface {p1, v9, v10, v11, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 159
    move/from16 v0, p4

    neg-int v9, v0

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move/from16 v0, p3

    neg-int v10, v0

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 160
    move/from16 v8, p4

    .line 161
    .restart local v8    # "temp":I
    move/from16 p4, p3

    .line 162
    move/from16 p3, v8

    goto/16 :goto_2

    .line 184
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

    .line 191
    :cond_6
    iget v9, v6, Landroid/graphics/RectF;->left:F

    move/from16 v0, p3

    int-to-float v10, v0

    div-float/2addr v10, v3

    sub-float v10, v5, v10

    mul-float v10, v10, p6

    add-float/2addr v9, v10

    iput v9, v6, Landroid/graphics/RectF;->left:F

    .line 192
    iget v9, v6, Landroid/graphics/RectF;->left:F

    move/from16 v0, p3

    int-to-float v10, v0

    div-float/2addr v10, v3

    add-float/2addr v9, v10

    iput v9, v6, Landroid/graphics/RectF;->right:F

    goto/16 :goto_4
.end method

.method protected drawGifOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 247
    const/16 v4, 0x52

    .line 250
    .local v4, "s":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mGifPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 251
    return-void
.end method

.method protected drawPanoramaBorder(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 280
    int-to-float v0, p2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mPanoramaBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 281
    .local v6, "scale":F
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mPanoramaBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 282
    .local v4, "w":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mPanoramaBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 284
    .local v5, "h":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mPanoramaBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mPanoramaBorder:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    sub-int v3, p3, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 287
    return-void
.end method

.method protected drawPanoramaOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 274
    const/16 v4, 0x52

    .line 275
    .local v4, "s":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mPanoramaPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 276
    return-void
.end method

.method protected drawPileOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 257
    const/16 v4, 0x52

    .line 258
    .local v4, "s":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mPilePlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 259
    return-void
.end method

.method protected drawPressedFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->drawFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIII)V

    .line 309
    return-void
.end method

.method protected drawPressedUpFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;-><init>(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->drawFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIII)V

    .line 305
    return-void
.end method

.method public drawScrollbar(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 2
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mScrollbarTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0, p1, v1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 335
    return-void
.end method

.method protected drawSelectedFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mFrameSelected:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mFrameSelected:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->drawFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIII)V

    .line 327
    return-void
.end method

.method protected drawSpeechOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 264
    const/16 v4, 0x52

    .line 266
    .local v4, "s":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 267
    return-void
.end method

.method protected drawVideoOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 14
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 227
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mVideoOverlay:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 228
    .local v1, "v":Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;
    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 229
    .local v13, "scale":F
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 230
    .local v5, "w":I
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 231
    .local v6, "h":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 233
    sub-int v3, p2, v5

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 238
    const/16 v11, 0x52

    .line 240
    .local v11, "s":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mVideoPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    sub-int v2, p2, v11

    div-int/lit8 v9, v2, 0x2

    sub-int v2, p3, v11

    div-int/lit8 v10, v2, 0x2

    move-object v8, p1

    move v12, v11

    invoke-virtual/range {v7 .. v12}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 241
    return-void
.end method

.method protected isPressedUpFrameFinished()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 297
    :goto_0
    return v0

    .line 294
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    .line 297
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
