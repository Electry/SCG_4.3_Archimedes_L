.class public Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
.super Lcom/lenovo/scg/gallery3d/anim/Animation;
.source "PhotoFallbackEffect.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/AlbumSlotRenderer$SlotFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;,
        Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xc8

.field private static final ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionProvider:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field private mProgress:F

.field private mSource:Landroid/graphics/RectF;

.field private mTarget:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/anim/Animation;-><init>()V

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    .line 75
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->setDuration(I)V

    .line 76
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 77
    return-void
.end method

.method private drawEntry(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;)V
    .locals 17
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "entry"    # Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;

    .prologue
    .line 103
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->isLoaded()Z

    move-result v12

    if-nez v12, :cond_0

    .line 165
    :goto_0
    return-void

    .line 105
    :cond_0
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v11

    .line 106
    .local v11, "w":I
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v7

    .line 108
    .local v7, "h":I
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->source:Landroid/graphics/Rect;

    .line 109
    .local v9, "s":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->dest:Landroid/graphics/Rect;

    .line 113
    .local v5, "d":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mProgress:F

    .line 115
    .local v8, "p":F
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    div-float v6, v12, v13

    .line 116
    .local v6, "fullScale":F
    mul-float v12, v6, v8

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v8

    mul-float/2addr v13, v14

    add-float v10, v12, v13

    .line 118
    .local v10, "scale":F
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v8

    mul-float/2addr v13, v14

    add-float v3, v12, v13

    .line 119
    .local v3, "cx":F
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v8

    mul-float/2addr v13, v14

    add-float v4, v12, v13

    .line 121
    .local v4, "cy":F
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float v1, v12, v10

    .line 122
    .local v1, "ch":F
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float v2, v12, v10

    .line 124
    .local v2, "cw":F
    if-le v11, v7, :cond_1

    .line 126
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v1, v13

    sub-float v13, v3, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v1, v14

    sub-float v14, v4, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v1, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v1, v16

    add-float v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 127
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    sub-int v13, v11, v7

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    const/4 v14, 0x0

    add-int v15, v11, v7

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 128
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 130
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 131
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    .line 134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v2, v13

    sub-float v13, v3, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v1, v14

    sub-float v14, v4, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v1, v15

    sub-float v15, v3, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v1, v16

    add-float v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    sub-int v15, v11, v7

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v1, v13

    add-float/2addr v13, v3

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v1, v14

    sub-float v14, v4, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v2, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v1, v16

    add-float v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 140
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    add-int v13, v11, v7

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    const/4 v14, 0x0

    int-to-float v15, v11

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 141
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 143
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 146
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v2, v13

    sub-float v13, v3, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v2, v14

    sub-float v14, v4, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v2, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v2, v16

    add-float v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v13, 0x0

    sub-int v14, v7, v11

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    int-to-float v15, v11

    add-int v16, v7, v11

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 148
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 150
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 151
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    .line 154
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v2, v13

    sub-float v13, v3, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v1, v14

    sub-float v14, v4, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v2, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v2, v16

    sub-float v16, v4, v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    int-to-float v15, v11

    sub-int v16, v7, v11

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 156
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v2, v13

    sub-float v13, v3, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v2, v14

    add-float/2addr v14, v4

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v2, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v1, v16

    add-float v16, v16, v4

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v13, 0x0

    add-int v14, v11, v7

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    int-to-float v15, v11

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 161
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 163
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto/16 :goto_0
.end method


# virtual methods
.method public acceptSlot(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 184
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 185
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 186
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;
    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    if-ne v3, p1, :cond_0

    const/4 v3, 0x0

    .line 188
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;
    :goto_1
    return v3

    .line 184
    .restart local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public addEntry(Lcom/lenovo/scg/gallery3d/data/Path;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;

    invoke-direct {v1, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 92
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->calculate(J)Z

    move-result v2

    .line 93
    .local v2, "more":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 94
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 95
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;
    iget v4, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    if-gez v4, :cond_0

    .line 93
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    iget v5, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    invoke-interface {v4, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->dest:Landroid/graphics/Rect;

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->drawEntry(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;)V

    goto :goto_1

    .line 99
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;
    :cond_1
    return v2
.end method

.method public getEntry(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;
    .locals 4
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 84
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 85
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 86
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v3, p1, :cond_0

    .line 88
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;
    :goto_1
    return-object v0

    .line 84
    .restart local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onCalculate(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 169
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mProgress:F

    .line 170
    return-void
.end method

.method public setPositionProvider(Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V
    .locals 5
    .param p1, "provider"    # Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .line 174
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    if-eqz v3, :cond_0

    .line 175
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 176
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 177
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-interface {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$PositionProvider;->getItemIndex(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v3

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect$Entry;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    return-void
.end method
