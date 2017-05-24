.class public Lcn/jingling/sdkdemo/widgets/InkCanvas;
.super Landroid/widget/ImageView;
.source "InkCanvas.java"


# instance fields
.field private mBrushActibity:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

.field private mCanvasIsDrawn:Z

.field public mContext:Landroid/content/Context;

.field private mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

.field private mDualPoint:Lcn/jingling/sdkdemo/utils/DualPoint;

.field private mGroundBitmap:Landroid/graphics/Bitmap;

.field public mPathBitmap:Landroid/graphics/Bitmap;

.field public mPenId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPenId:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mCanvasIsDrawn:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPenId:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mCanvasIsDrawn:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPenId:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mCanvasIsDrawn:Z

    .line 38
    return-void
.end method


# virtual methods
.method public generateBrushBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 197
    iget-object v3, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mGroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 198
    :cond_0
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    .line 201
    :cond_1
    iget-object v3, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mGroundBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mGroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 203
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 204
    .local v1, "cv":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mGroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 205
    iget-object v3, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getPathBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPenWidth()I
    .locals 2

    .prologue
    .line 177
    const/16 v0, 0x1e

    .line 178
    .local v0, "penWidth":I
    iget-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    invoke-virtual {v1}, Lcn/jingling/lib/advanceedit/brush/DrawState;->getPenWidth()I

    move-result v0

    .line 181
    :cond_0
    return v0
.end method

.method public init(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groundBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageViewMatrix"    # Landroid/graphics/Matrix;
    .param p4, "groundActivity"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 60
    const-string v0, "dongyu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groundBitmap is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-nez p2, :cond_0

    .line 73
    :goto_0
    return-void

    .line 65
    :cond_0
    iput-object p1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mGroundBitmap:Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    .line 69
    iput-object p4, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mBrushActibity:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .line 70
    iget-object v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 72
    invoke-virtual {p0, p3}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    iget-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    if-nez v1, :cond_0

    .line 91
    const/4 v1, 0x0

    .line 120
    :goto_0
    return v1

    .line 93
    :cond_0
    new-instance v1, Lcn/jingling/sdkdemo/utils/DualPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/jingling/sdkdemo/utils/DualPoint;-><init>(FFLandroid/graphics/Matrix;)V

    iput-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDualPoint:Lcn/jingling/sdkdemo/utils/DualPoint;

    .line 96
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 97
    .local v0, "bmPoint":Landroid/graphics/Point;
    iget-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDualPoint:Lcn/jingling/sdkdemo/utils/DualPoint;

    iget v1, v1, Lcn/jingling/sdkdemo/utils/DualPoint;->bmx:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 98
    iget-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDualPoint:Lcn/jingling/sdkdemo/utils/DualPoint;

    iget v1, v1, Lcn/jingling/sdkdemo/utils/DualPoint;->bmy:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 100
    iget-boolean v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mCanvasIsDrawn:Z

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mBrushActibity:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->updateCancelOkButtonBg()V

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 120
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 105
    :pswitch_0
    iget-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    invoke-virtual {v1, v0}, Lcn/jingling/lib/advanceedit/brush/DrawState;->mouseDown(Landroid/graphics/Point;)V

    .line 106
    invoke-virtual {p0}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->invalidate()V

    goto :goto_1

    .line 109
    :pswitch_1
    iget-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    invoke-virtual {v1, v0}, Lcn/jingling/lib/advanceedit/brush/DrawState;->mouseMove(Landroid/graphics/Point;)V

    .line 110
    invoke-virtual {p0}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->invalidate()V

    goto :goto_1

    .line 113
    :pswitch_2
    iget-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    invoke-virtual {v1, v0}, Lcn/jingling/lib/advanceedit/brush/DrawState;->mouseUp(Landroid/graphics/Point;)V

    .line 114
    invoke-virtual {p0}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->invalidate()V

    goto :goto_1

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCanvasIsDrawn()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mCanvasIsDrawn:Z

    .line 126
    return-void
.end method

.method public setPathBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    .line 81
    iget-object v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    iget-object v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    iget-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/DrawState;->setPathBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->invalidate()V

    .line 86
    return-void
.end method

.method public setPenColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/advanceedit/brush/DrawState;->setPenColor(I)V

    .line 189
    return-void
.end method

.method public setPenState(I)V
    .locals 4
    .param p1, "penId"    # I

    .prologue
    .line 132
    iput p1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPenId:I

    .line 134
    move v0, p1

    .line 135
    .local v0, "brushType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 136
    new-instance v1, Lcn/jingling/lib/advanceedit/brush/PenState;

    iget-object v2, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcn/jingling/lib/advanceedit/brush/PenState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 138
    new-instance v1, Lcn/jingling/lib/advanceedit/brush/GlowDrawState;

    iget-object v2, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcn/jingling/lib/advanceedit/brush/GlowDrawState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    goto :goto_0

    .line 139
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 140
    new-instance v1, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;

    iget-object v2, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    goto :goto_0

    .line 141
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 142
    new-instance v1, Lcn/jingling/lib/advanceedit/brush/AlphaDrawState;

    iget-object v2, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcn/jingling/lib/advanceedit/brush/AlphaDrawState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    goto :goto_0

    .line 143
    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 144
    new-instance v1, Lcn/jingling/lib/advanceedit/brush/BlurDrawState;

    iget-object v2, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcn/jingling/lib/advanceedit/brush/BlurDrawState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    goto :goto_0

    .line 145
    :cond_5
    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 146
    new-instance v1, Lcn/jingling/lib/advanceedit/brush/GlowWhiteShadowDrawState;

    iget-object v2, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcn/jingling/lib/advanceedit/brush/GlowWhiteShadowDrawState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    goto :goto_0

    .line 147
    :cond_6
    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 148
    new-instance v1, Lcn/jingling/lib/advanceedit/brush/MosaicState;

    iget-object v2, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mGroundBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Lcn/jingling/lib/advanceedit/brush/MosaicState;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    goto :goto_0

    .line 157
    :cond_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 158
    new-instance v1, Lcn/jingling/lib/advanceedit/brush/EraserState;

    iget-object v2, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mPathBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcn/jingling/lib/advanceedit/brush/EraserState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    goto :goto_0
.end method

.method public setPenWidth(I)V
    .locals 1
    .param p1, "penWidth"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcn/jingling/sdkdemo/widgets/InkCanvas;->mDrawState:Lcn/jingling/lib/advanceedit/brush/DrawState;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/advanceedit/brush/DrawState;->setPenWidth(I)V

    .line 171
    :cond_0
    return-void
.end method
