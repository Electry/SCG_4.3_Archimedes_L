.class public abstract Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;
.super Ljava/lang/Object;
.source "AbstractSlotRenderer.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;


# static fields
.field public static final ICON_SIZE:I = 0x52


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

.field private mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

.field private final mFrameSelected:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

.field private final mGifPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field protected mIsPressedBottom:Z

.field private final mMultiSelectedIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private final mPanoramaIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private final mPanoramaPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private final mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private final mVideoOverlay:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private final mVideoPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mIsPressedBottom:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mContext:Landroid/content/Context;

    .line 78
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f0206c8

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mVideoOverlay:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 80
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f02064f

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mVideoPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 81
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f020638

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mPanoramaIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 82
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    const v1, 0x7f020634

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    .line 84
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    const v1, 0x7f020701

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    .line 89
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f020652

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mGifPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 92
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f020693

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mPanoramaPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 94
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f0206a7

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 95
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f020081

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mMultiSelectedIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 96
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
    .line 352
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

    .line 353
    return-void
.end method

.method private getDim(I)I
    .locals 1
    .param p1, "nDimId"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
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

    .line 197
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 201
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    move p3, p4

    .line 202
    if-eqz p5, :cond_0

    .line 203
    div-int/lit8 v1, p3, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 204
    int-to-float v1, p5

    invoke-interface {p1, v1, v3, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 205
    neg-int v1, p3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v2, p4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 210
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

    .line 211
    .local v0, "scale":F
    invoke-interface {p1, v0, v0, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 217
    invoke-interface {p2, p1, v5, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 231
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 232
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
    .line 111
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 113
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    .line 114
    if-eqz p5, :cond_0

    .line 115
    div-int/lit8 v9, p3, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, p4, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 116
    move/from16 v0, p5

    int-to-float v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-interface {p1, v9, v10, v11, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 117
    move/from16 v0, p3

    neg-int v9, v0

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move/from16 v0, p4

    neg-int v10, v0

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 118
    rem-int/lit8 v9, p5, 0x5a

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    .line 119
    move/from16 v8, p4

    .line 120
    .local v8, "temp":I
    move/from16 p4, p3

    .line 121
    move/from16 p3, v8

    .line 124
    .end local v8    # "temp":I
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 125
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

    .line 133
    .local v2, "scale":F
    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    if-le v9, v10, :cond_1

    .line 134
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

    .line 140
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

    .line 141
    .local v7, "target":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-interface {v0, p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 191
    .end local v2    # "scale":F
    .end local v5    # "size":I
    :goto_1
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 192
    return-void

    .line 137
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

    .line 143
    .end local v2    # "scale":F
    .end local v5    # "size":I
    .end local v6    # "source":Landroid/graphics/RectF;
    :cond_2
    if-eqz p5, :cond_3

    .line 144
    move/from16 v0, p5

    rem-int/lit16 v9, v0, 0xb4

    if-nez v9, :cond_4

    .line 145
    div-int/lit8 v9, p3, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, p4, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 146
    move/from16 v0, p5

    int-to-float v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-interface {p1, v9, v10, v11, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 147
    move/from16 v0, p3

    neg-int v9, v0

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move/from16 v0, p4

    neg-int v10, v0

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 168
    :cond_3
    :goto_2
    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v5, v9

    .line 169
    .local v5, "size":F
    move/from16 v0, p3

    int-to-float v9, v0

    div-float v4, v9, v5

    .line 170
    .local v4, "scaleWidth":F
    move/from16 v0, p4

    int-to-float v9, v0

    div-float v3, v9, v5

    .line 172
    .local v3, "scaleHeight":F
    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v10

    if-le v9, v10, :cond_5

    .line 173
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

    .line 179
    .restart local v6    # "source":Landroid/graphics/RectF;
    :goto_3
    cmpl-float v9, v4, v3

    if-lez v9, :cond_6

    .line 180
    iget v9, v6, Landroid/graphics/RectF;->top:F

    move/from16 v0, p4

    int-to-float v10, v0

    div-float/2addr v10, v4

    sub-float v10, v5, v10

    mul-float v10, v10, p6

    add-float/2addr v9, v10

    iput v9, v6, Landroid/graphics/RectF;->top:F

    .line 181
    iget v9, v6, Landroid/graphics/RectF;->top:F

    move/from16 v0, p4

    int-to-float v10, v0

    div-float/2addr v10, v4

    add-float/2addr v9, v10

    iput v9, v6, Landroid/graphics/RectF;->bottom:F

    .line 187
    :goto_4
    new-instance v7, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p3

    int-to-float v11, v0

    move/from16 v0, p4

    int-to-float v12, v0

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 188
    .restart local v7    # "target":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-interface {v0, p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto/16 :goto_1

    .line 148
    .end local v3    # "scaleHeight":F
    .end local v4    # "scaleWidth":F
    .end local v5    # "size":F
    .end local v6    # "source":Landroid/graphics/RectF;
    .end local v7    # "target":Landroid/graphics/RectF;
    :cond_4
    rem-int/lit8 v9, p5, 0x5a

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_3

    .line 149
    div-int/lit8 v9, p3, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, p4, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 150
    move/from16 v0, p5

    int-to-float v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-interface {p1, v9, v10, v11, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 151
    move/from16 v0, p4

    neg-int v9, v0

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move/from16 v0, p3

    neg-int v10, v0

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 152
    move/from16 v8, p4

    .line 153
    .restart local v8    # "temp":I
    move/from16 p4, p3

    .line 154
    move/from16 p3, v8

    goto/16 :goto_2

    .line 176
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

    .line 183
    :cond_6
    iget v9, v6, Landroid/graphics/RectF;->left:F

    move/from16 v0, p3

    int-to-float v10, v0

    div-float/2addr v10, v3

    sub-float v10, v5, v10

    mul-float v10, v10, p6

    add-float/2addr v9, v10

    iput v9, v6, Landroid/graphics/RectF;->left:F

    .line 184
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

    .line 257
    const/16 v4, 0x52

    .line 260
    .local v4, "s":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mGifPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 261
    return-void
.end method

.method protected drawMultiSelected(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mMultiSelectedIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v4

    .line 347
    .local v4, "w":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mMultiSelectedIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v5

    .line 348
    .local v5, "h":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mMultiSelectedIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    sub-int v1, p2, v4

    add-int/lit8 v2, v1, -0x6

    const/4 v3, 0x6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 349
    return-void
.end method

.method protected drawPanoramaIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 283
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v4, v0, 0x6

    .line 284
    .local v4, "iconSize":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mPanoramaIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    sub-int v1, p2, v4

    div-int/lit8 v2, v1, 0x2

    sub-int v1, p3, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 285
    return-void
.end method

.method protected drawPanoramaOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 276
    const/16 v4, 0x52

    .line 277
    .local v4, "s":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mPanoramaPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 278
    return-void
.end method

.method protected drawPressedFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const v5, 0x7f0903df

    const/4 v3, 0x0

    .line 319
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mIsPressedBottom:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    const v0, 0x7f0903de

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->getDim(I)I

    move-result v0

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->getDim(I)I

    move-result v4

    sub-int v4, v0, v4

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->getDim(I)I

    move-result v6

    move-object v0, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIII)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIII)V

    goto :goto_0
.end method

.method protected drawPressedUpFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const v5, 0x7f0903df

    const/4 v3, 0x0

    .line 303
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;-><init>(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    .line 308
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mIsPressedBottom:Z

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    const v0, 0x7f0903de

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->getDim(I)I

    move-result v0

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->getDim(I)I

    move-result v4

    sub-int v4, v0, v4

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->getDim(I)I

    move-result v6

    move-object v0, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIII)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIII)V

    goto :goto_0
.end method

.method protected drawSelectedFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 329
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIII)V

    .line 343
    return-void
.end method

.method protected drawSpeechOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 267
    const/16 v4, 0x52

    .line 269
    .local v4, "s":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 270
    return-void
.end method

.method protected drawVideoOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 14
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 237
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mVideoOverlay:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 238
    .local v1, "v":Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;
    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 239
    .local v13, "scale":F
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 240
    .local v5, "w":I
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 241
    .local v6, "h":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 243
    sub-int v3, p2, v5

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 248
    const/16 v11, 0x52

    .line 250
    .local v11, "s":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mVideoPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    sub-int v2, p2, v11

    div-int/lit8 v9, v2, 0x2

    sub-int v2, p3, v11

    div-int/lit8 v10, v2, 0x2

    move-object v8, p1

    move v12, v11

    invoke-virtual/range {v7 .. v12}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 251
    return-void
.end method

.method protected isPressedUpFrameFinished()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 295
    :goto_0
    return v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;

    .line 295
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
