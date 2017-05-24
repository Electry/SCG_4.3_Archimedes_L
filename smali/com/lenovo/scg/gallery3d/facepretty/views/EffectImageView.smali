.class public Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
.super Landroid/widget/ImageView;
.source "EffectImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView$OnCalFaceRecCompleteCallback;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "EffectImageView"

.field public static islandscape:Z


# instance fields
.field private drawRountRectPaint:Landroid/graphics/Paint;

.field private effectImageViewHeight:I

.field private effectImageViewWidth:I

.field private faceNinePatch:Landroid/graphics/NinePatch;

.field private faceRectBitmap:Landroid/graphics/Bitmap;

.field private isCanClick:Z

.field private land_small_FaceRects:[Landroid/graphics/RectF;

.field private mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

.field private mCallback:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView$OnCalFaceRecCompleteCallback;

.field private mCircleViewSize:I

.field private mContext:Landroid/content/Context;

.field private mFaceOnPic:[Landroid/graphics/Rect;

.field private mFaceRectsOnScreen:[Landroid/graphics/Rect;

.field private mFaceRectsOnScreenLandRects:[Landroid/graphics/Rect;

.field private mUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

.field private maskBitmap:Landroid/graphics/Bitmap;

.field private port_small_FaceRects:[Landroid/graphics/RectF;

.field private relativeRects:[Landroid/graphics/Rect;

.field private scallLand:D

.field private scallValue:D

.field private scallViewH:I

.field private scallViewW:I

.field private startDrawX:I

.field private startDrawY:I

.field topBannerHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->islandscape:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    .line 39
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    .line 41
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->drawRountRectPaint:Landroid/graphics/Paint;

    .line 43
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->maskBitmap:Landroid/graphics/Bitmap;

    .line 45
    iput v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallViewW:I

    .line 47
    iput v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallViewH:I

    .line 49
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewWidth:I

    .line 51
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewHeight:I

    .line 53
    iput v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->startDrawX:I

    .line 55
    iput v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->startDrawY:I

    .line 57
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCircleViewSize:I

    .line 59
    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallValue:D

    .line 61
    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallLand:D

    .line 65
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->relativeRects:[Landroid/graphics/Rect;

    .line 67
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreen:[Landroid/graphics/Rect;

    .line 69
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreenLandRects:[Landroid/graphics/Rect;

    .line 71
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceOnPic:[Landroid/graphics/Rect;

    .line 73
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->port_small_FaceRects:[Landroid/graphics/RectF;

    .line 75
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->land_small_FaceRects:[Landroid/graphics/RectF;

    .line 79
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    .line 81
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceNinePatch:Landroid/graphics/NinePatch;

    .line 83
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mContext:Landroid/content/Context;

    .line 85
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->isCanClick:Z

    .line 87
    iput v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->topBannerHeight:I

    .line 116
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mContext:Landroid/content/Context;

    .line 118
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09042a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->topBannerHeight:I

    .line 120
    iput v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->topBannerHeight:I

    .line 122
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    .line 124
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .local v0, "mPoint":Landroid/graphics/Point;
    move-object v1, p1

    .line 125
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 126
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewWidth:I

    .line 127
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewHeight:I

    .line 128
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    .line 131
    :cond_0
    const v1, 0x7f09043b

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getCircleSize(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCircleViewSize:I

    .line 134
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getMaskBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020548

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->setMaskBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getMaskBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->maskBitmap:Landroid/graphics/Bitmap;

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getFaceRectClickBmp()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getFaceRectClickBmp()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020551

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->setFaceRectClickBmp(Landroid/graphics/Bitmap;)V

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getFaceRectClickBmp()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    .line 145
    new-instance v1, Landroid/graphics/NinePatch;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceNinePatch:Landroid/graphics/NinePatch;

    .line 147
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->drawRountRectPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_4

    .line 148
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->drawRountRectPaint:Landroid/graphics/Paint;

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->drawRountRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    :cond_4
    return-void
.end method

.method private calcuateFaceRectonScreen(II[Landroid/graphics/Rect;D)[Landroid/graphics/Rect;
    .locals 8
    .param p1, "baseBitmapW"    # I
    .param p2, "baseBitmapH"    # I
    .param p3, "inRelativeRects"    # [Landroid/graphics/Rect;
    .param p4, "inScall"    # D

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    .line 248
    const-wide/16 v4, 0x0

    cmpl-double v3, p4, v4

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 250
    array-length v2, p3

    .line 251
    .local v2, "size":I
    new-array v1, v2, [Landroid/graphics/Rect;

    .line 253
    .local v1, "outFaceRectOnScreen":[Landroid/graphics/Rect;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_1

    .line 254
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v0

    .line 256
    aget-object v3, v1, v0

    int-to-float v4, p1

    aget-object v5, p3, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v4, p4

    double-to-int v4, v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->startDrawX:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 257
    aget-object v3, v1, v0

    int-to-float v4, p2

    aget-object v5, p3, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v4, p4

    double-to-int v4, v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->startDrawY:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 258
    aget-object v3, v1, v0

    int-to-float v4, p1

    aget-object v5, p3, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v4, p4

    double-to-int v4, v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->startDrawX:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 259
    aget-object v3, v1, v0

    int-to-float v4, p2

    aget-object v5, p3, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v4, p4

    double-to-int v4, v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->startDrawY:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "i":I
    .end local v1    # "outFaceRectOnScreen":[Landroid/graphics/Rect;
    .end local v2    # "size":I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private calcuateFaceRectonScreen_Land(II[Landroid/graphics/Rect;D)[Landroid/graphics/Rect;
    .locals 8
    .param p1, "baseBitmapW"    # I
    .param p2, "baseBitmapH"    # I
    .param p3, "inRelativeRects"    # [Landroid/graphics/Rect;
    .param p4, "inScall"    # D

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    .line 281
    const-wide/16 v4, 0x0

    cmpl-double v3, p4, v4

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 283
    array-length v2, p3

    .line 284
    .local v2, "size":I
    new-array v1, v2, [Landroid/graphics/Rect;

    .line 286
    .local v1, "outFaceRectOnScreen":[Landroid/graphics/Rect;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_1

    .line 287
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v0

    .line 289
    aget-object v3, v1, v0

    int-to-float v4, p1

    aget-object v5, p3, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v4, p4

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 290
    aget-object v3, v1, v0

    int-to-float v4, p2

    aget-object v5, p3, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v4, p4

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 291
    aget-object v3, v1, v0

    int-to-float v4, p1

    aget-object v5, p3, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v4, p4

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 292
    aget-object v3, v1, v0

    int-to-float v4, p2

    aget-object v5, p3, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v4, p4

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "i":I
    .end local v1    # "outFaceRectOnScreen":[Landroid/graphics/Rect;
    .end local v2    # "size":I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private cutCanvasToCircle(Landroid/graphics/Canvas;III)V
    .locals 5
    .param p1, "dstCanvas"    # Landroid/graphics/Canvas;
    .param p2, "circle_x"    # I
    .param p3, "circle_y"    # I
    .param p4, "circle_r"    # I

    .prologue
    .line 382
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 383
    .local v0, "mCirclePath":Landroid/graphics/Path;
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 384
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 385
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 386
    return-void
.end method

.method private rotateCanvas_DrawPic(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "baseBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 588
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 590
    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 592
    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 595
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 596
    .local v8, "width":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 598
    .local v3, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 599
    .local v1, "canvasWidth":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 601
    .local v0, "canvasHeight":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v1

    div-float v6, v9, v10

    .line 602
    .local v6, "scaleWidth":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float v5, v9, v10

    .line 604
    .local v5, "scaleHeight":F
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v7, v11, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 606
    .local v7, "src":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v11, v11, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 608
    .local v2, "dst":Landroid/graphics/Rect;
    cmpl-float v9, v6, v5

    if-ltz v9, :cond_0

    .line 609
    int-to-float v9, v0

    int-to-float v10, v3

    div-float/2addr v10, v6

    sub-float/2addr v9, v10

    div-float/2addr v9, v12

    float-to-int v9, v9

    iput v9, v2, Landroid/graphics/Rect;->top:I

    .line 610
    iget v9, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v10, v6

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    .line 616
    :goto_0
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 617
    .local v4, "mPaint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 618
    new-instance v9, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v10, 0x3

    invoke-direct {v9, v11, v10}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 619
    invoke-virtual {p1, p2, v7, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 621
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 623
    return-void

    .line 612
    .end local v4    # "mPaint":Landroid/graphics/Paint;
    :cond_0
    int-to-float v9, v1

    int-to-float v10, v8

    div-float/2addr v10, v5

    sub-float/2addr v9, v10

    div-float/2addr v9, v12

    float-to-int v9, v9

    iput v9, v2, Landroid/graphics/Rect;->left:I

    .line 613
    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    int-to-float v10, v8

    div-float/2addr v10, v5

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private scallBitmapAndDrawToScreen(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "baseBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 549
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 550
    .local v8, "width":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 552
    .local v3, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 553
    .local v1, "canvasWidth":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 555
    .local v0, "canvasHeight":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v1

    div-float v6, v9, v10

    .line 556
    .local v6, "scaleWidth":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float v5, v9, v10

    .line 558
    .local v5, "scaleHeight":F
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v7, v11, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 560
    .local v7, "src":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v11, v11, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 562
    .local v2, "dst":Landroid/graphics/Rect;
    cmpl-float v9, v6, v5

    if-ltz v9, :cond_0

    .line 563
    int-to-float v9, v0

    int-to-float v10, v3

    div-float/2addr v10, v6

    sub-float/2addr v9, v10

    div-float/2addr v9, v12

    float-to-int v9, v9

    iput v9, v2, Landroid/graphics/Rect;->top:I

    .line 564
    iget v9, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v10, v6

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    .line 570
    :goto_0
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 571
    .local v4, "mPaint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 572
    new-instance v9, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v10, 0x3

    invoke-direct {v9, v11, v10}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 573
    invoke-virtual {p1, p2, v7, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 574
    return-void

    .line 566
    .end local v4    # "mPaint":Landroid/graphics/Paint;
    :cond_0
    int-to-float v9, v1

    int-to-float v10, v8

    div-float/2addr v10, v5

    sub-float/2addr v9, v10

    div-float/2addr v9, v12

    float-to-int v9, v9

    iput v9, v2, Landroid/graphics/Rect;->left:I

    .line 567
    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    int-to-float v10, v8

    div-float/2addr v10, v5

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method


# virtual methods
.method public creatScallBitmap4Screen(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "baseBmp"    # Landroid/graphics/Bitmap;
    .param p2, "scall"    # D

    .prologue
    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, "scallBitmap4Screen":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 696
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p2, v2

    if-nez v1, :cond_0

    .line 702
    .end local p1    # "baseBmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 699
    .restart local p1    # "baseBmp":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, p2

    double-to-int v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, p2

    double-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    move-object p1, v0

    .line 702
    goto :goto_0
.end method

.method public doinvalidate()V
    .locals 0

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->invalidate()V

    .line 232
    return-void
.end method

.method public drawBaseBitmapToScreen()V
    .locals 6

    .prologue
    .line 714
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 716
    .local v0, "baseBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 719
    iget v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getScallValue(Landroid/graphics/Bitmap;II)F

    move-result v1

    float-to-double v2, v1

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallValue:D

    .line 722
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallValue:D

    div-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallViewW:I

    .line 723
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallValue:D

    div-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallViewH:I

    .line 725
    iget v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallViewW:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->startDrawX:I

    .line 726
    iget v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewHeight:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallViewH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->startDrawY:I

    .line 728
    const-string v1, "EffectImage startXXX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->startDrawX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v1, "EffectImage startYYY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->startDrawY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewHeight:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewWidth:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getScallValue(Landroid/graphics/Bitmap;II)F

    move-result v1

    float-to-double v2, v1

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallLand:D

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->doinvalidate()V

    .line 735
    return-void
.end method

.method public getCircleSize(Landroid/content/Context;I)F
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getEffectBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFaceOnPic()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceOnPic:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public getNeedEffectBasedOnBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getScallLand()D
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallLand:D

    return-wide v0
.end method

.method public getScallValue(Landroid/graphics/Bitmap;II)F
    .locals 9
    .param p1, "iBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "screenW"    # I
    .param p3, "screenH"    # I

    .prologue
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 661
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 662
    .local v1, "bmpW":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 663
    .local v0, "bmpH":I
    int-to-float v6, v1

    int-to-float v7, p2

    div-float v4, v6, v7

    .line 664
    .local v4, "scallW":F
    int-to-float v6, v0

    int-to-float v7, p3

    div-float v2, v6, v7

    .line 665
    .local v2, "scallH":F
    mul-float v6, v4, v8

    float-to-int v5, v6

    .line 666
    .local v5, "scallW_int":I
    mul-float v6, v2, v8

    float-to-int v3, v6

    .line 667
    .local v3, "scallH_int":I
    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_0

    const/16 v6, 0x64

    if-ne v3, v6, :cond_0

    .line 669
    const/high16 v6, 0x3f800000    # 1.0f

    .line 671
    :goto_0
    return v6

    :cond_0
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_0
.end method

.method public getScreenOrientation()Z
    .locals 1

    .prologue
    .line 646
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->islandscape:Z

    return v0
.end method

.method public getSelectFaceBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "faceRectIndex"    # I
    .param p2, "inBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 312
    move-object/from16 v10, p2

    .line 314
    .local v10, "tmpBitmaptmp":Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreen:[Landroid/graphics/Rect;

    if-nez v11, :cond_0

    .line 315
    const/4 v9, 0x0

    .line 366
    :goto_0
    return-object v9

    .line 317
    :cond_0
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreen:[Landroid/graphics/Rect;

    array-length v11, v11

    if-nez v11, :cond_1

    .line 318
    const/4 v9, 0x0

    goto :goto_0

    .line 320
    :cond_1
    if-nez v10, :cond_2

    .line 321
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 325
    :cond_2
    new-instance v8, Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceOnPic:[Landroid/graphics/Rect;

    aget-object v11, v11, p1

    invoke-direct {v8, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 326
    .local v8, "selectRect":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v6, v11, 0x3

    .line 327
    .local v6, "offectWidth":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v5, v11, 0x3

    .line 328
    .local v5, "offectHeight":I
    iget v11, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v6

    iput v11, v8, Landroid/graphics/Rect;->left:I

    .line 329
    iget v11, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v5

    iput v11, v8, Landroid/graphics/Rect;->top:I

    .line 331
    iget v11, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v6

    iput v11, v8, Landroid/graphics/Rect;->right:I

    .line 332
    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v5

    iput v11, v8, Landroid/graphics/Rect;->bottom:I

    .line 335
    new-instance v1, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCircleViewSize:I

    iget v14, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCircleViewSize:I

    invoke-direct {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 338
    .local v1, "dstRect":Landroid/graphics/Rect;
    iget v11, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCircleViewSize:I

    iget v12, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCircleViewSize:I

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 339
    .local v9, "tmpBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 341
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 342
    .local v3, "mPaint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 343
    new-instance v11, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-direct {v11, v12, v13}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 345
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    iget v13, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCircleViewSize:I

    div-int/lit8 v13, v13, 0x2

    invoke-direct {p0, v0, v11, v12, v13}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->cutCanvasToCircle(Landroid/graphics/Canvas;III)V

    .line 347
    :try_start_0
    invoke-virtual {v0, v10, v8, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_1
    new-instance v7, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    iget-object v14, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v7, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 354
    .local v7, "scrRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCircleViewSize:I

    iget v14, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCircleViewSize:I

    invoke-direct {v4, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 356
    .local v4, "mdstRect":Landroid/graphics/Rect;
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->maskBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_3

    .line 357
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v11, v7, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 363
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 365
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getCircleBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v12, v13, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 348
    .end local v4    # "mdstRect":Landroid/graphics/Rect;
    .end local v7    # "scrRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "EffectImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 359
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "mdstRect":Landroid/graphics/Rect;
    .restart local v7    # "scrRect":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020548

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v0, v11, v7, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public getSelectFaceEffectBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "faceRectIndex"    # I
    .param p2, "inBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 399
    const/4 v6, 0x0

    .line 401
    .local v6, "tmBitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 402
    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 404
    :cond_0
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreen:[Landroid/graphics/Rect;

    if-nez v8, :cond_1

    .line 405
    const/4 v7, 0x0

    .line 442
    :goto_0
    return-object v7

    .line 407
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreen:[Landroid/graphics/Rect;

    array-length v8, v8

    if-nez v8, :cond_2

    .line 408
    const/4 v7, 0x0

    goto :goto_0

    .line 411
    :cond_2
    if-nez v6, :cond_3

    .line 412
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 414
    :cond_3
    if-nez v6, :cond_4

    .line 415
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 419
    :cond_4
    new-instance v5, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceOnPic:[Landroid/graphics/Rect;

    aget-object v8, v8, p1

    invoke-direct {v5, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 420
    .local v5, "selectRect":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v4, v8, 0x3

    .line 421
    .local v4, "offectWidth":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v3, v8, 0x3

    .line 422
    .local v3, "offectHeight":I
    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v4

    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 423
    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v3

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 425
    iget v8, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v4

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 426
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v3

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 428
    new-instance v1, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCircleViewSize:I

    iget v11, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCircleViewSize:I

    invoke-direct {v1, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 431
    .local v1, "dstRect":Landroid/graphics/Rect;
    iget v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCircleViewSize:I

    iget v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCircleViewSize:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 432
    .local v7, "tmpBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 434
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 435
    .local v2, "mPaint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 436
    new-instance v8, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-direct {v8, v9, v10}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 438
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    iget v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCircleViewSize:I

    div-int/lit8 v10, v10, 0x2

    invoke-direct {p0, v0, v8, v9, v10}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->cutCanvasToCircle(Landroid/graphics/Canvas;III)V

    .line 439
    invoke-virtual {v0, v6, v5, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 440
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 441
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getCircleBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getStartX()I
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->startDrawX:I

    return v0
.end method

.method public getStartY()I
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->startDrawY:I

    return v0
.end method

.method public isCanClick()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->isCanClick:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v10, 0x7f020551

    const/4 v9, 0x0

    .line 448
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 449
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 450
    .local v0, "baseBitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 452
    .local v4, "mEffectBitmap":Landroid/graphics/Bitmap;
    sget-boolean v5, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->islandscape:Z

    if-nez v5, :cond_6

    .line 453
    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 455
    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallBitmapAndDrawToScreen(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 459
    :cond_0
    if-eqz v4, :cond_1

    .line 460
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 461
    invoke-direct {p0, p1, v4}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallBitmapAndDrawToScreen(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 465
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreen:[Landroid/graphics/Rect;

    if-eqz v5, :cond_6

    .line 466
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->port_small_FaceRects:[Landroid/graphics/RectF;

    array-length v2, v5

    .line 467
    .local v2, "faceNumber":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_6

    .line 468
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getFaceRectClickBmp()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getFaceRectClickBmp()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 469
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->setFaceRectClickBmp(Landroid/graphics/Bitmap;)V

    .line 471
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 472
    :cond_4
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getFaceRectClickBmp()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    .line 475
    :cond_5
    :try_start_0
    new-instance v5, Landroid/graphics/NinePatch;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceNinePatch:Landroid/graphics/NinePatch;

    .line 476
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceNinePatch:Landroid/graphics/NinePatch;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->port_small_FaceRects:[Landroid/graphics/RectF;

    aget-object v6, v6, v3

    invoke-virtual {v5, p1, v6}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 477
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EffectImageView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 487
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "faceNumber":I
    .end local v3    # "i":I
    :cond_6
    sget-boolean v5, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->islandscape:Z

    if-eqz v5, :cond_d

    .line 488
    if-eqz v0, :cond_7

    .line 489
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_7

    .line 490
    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->rotateCanvas_DrawPic(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 494
    :cond_7
    if-eqz v4, :cond_8

    .line 495
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_8

    .line 496
    invoke-direct {p0, p1, v4}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->rotateCanvas_DrawPic(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 500
    :cond_8
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreenLandRects:[Landroid/graphics/Rect;

    if-eqz v5, :cond_d

    .line 501
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->land_small_FaceRects:[Landroid/graphics/RectF;

    if-eqz v5, :cond_d

    .line 502
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->land_small_FaceRects:[Landroid/graphics/RectF;

    array-length v2, v5

    .line 503
    .restart local v2    # "faceNumber":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_d

    .line 505
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getFaceRectClickBmp()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getFaceRectClickBmp()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 506
    :cond_9
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->setFaceRectClickBmp(Landroid/graphics/Bitmap;)V

    .line 508
    :cond_a
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 509
    :cond_b
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getFaceRectClickBmp()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    .line 510
    new-instance v5, Landroid/graphics/NinePatch;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v7

    invoke-direct {v5, v6, v7, v9}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceNinePatch:Landroid/graphics/NinePatch;

    .line 513
    :cond_c
    :try_start_1
    new-instance v5, Landroid/graphics/NinePatch;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceNinePatch:Landroid/graphics/NinePatch;

    .line 514
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceNinePatch:Landroid/graphics/NinePatch;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->land_small_FaceRects:[Landroid/graphics/RectF;

    aget-object v6, v6, v3

    invoke-virtual {v5, p1, v6}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 503
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 515
    :catch_1
    move-exception v1

    .line 517
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EffectImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    faceRectBitmap.isRecycled() ? == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->faceRectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 526
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "faceNumber":I
    .end local v3    # "i":I
    :cond_d
    return-void
.end method

.method public recycleMaskBitmap()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->maskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->maskBitmap:Landroid/graphics/Bitmap;

    .line 536
    :cond_0
    return-void
.end method

.method public setCanClick(Z)V
    .locals 0
    .param p1, "isCanClick"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->isCanClick:Z

    .line 95
    return-void
.end method

.method public setFaceRectOnBaseBmp([Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "inRects"    # [Landroid/graphics/Rect;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceOnPic:[Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 168
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceOnPic:[Landroid/graphics/Rect;

    .line 170
    :cond_0
    invoke-virtual {p1}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceOnPic:[Landroid/graphics/Rect;

    .line 171
    return-void
.end method

.method public setOnCalFaceRectCompleteListener(Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView$OnCalFaceRecCompleteCallback;IIII)V
    .locals 24
    .param p1, "callback"    # Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView$OnCalFaceRecCompleteCallback;
    .param p2, "imageViewWidth"    # I
    .param p3, "imageViewHeight"    # I
    .param p4, "screenWidth"    # I
    .param p5, "screenHeight"    # I

    .prologue
    .line 744
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCallback:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView$OnCalFaceRecCompleteCallback;

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 747
    .local v10, "baseBitmap":Landroid/graphics/Bitmap;
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewWidth:I

    .line 748
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewHeight:I

    .line 749
    if-nez v10, :cond_1

    .line 824
    :cond_0
    return-void

    .line 753
    :cond_1
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->relativeRects:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallValue:D

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->calcuateFaceRectonScreen(II[Landroid/graphics/Rect;D)[Landroid/graphics/Rect;

    move-result-object v12

    .line 755
    .local v12, "faceRectsOnScreemTmp":[Landroid/graphics/Rect;
    const-string v3, "WDY:FacePrettyActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EffectImageView == relativeRects   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->relativeRects:[Landroid/graphics/Rect;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewWidth:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getScallValue(Landroid/graphics/Bitmap;II)F

    move-result v2

    float-to-double v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallLand:D

    .line 758
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->relativeRects:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallLand:D

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->calcuateFaceRectonScreen_Land(II[Landroid/graphics/Rect;D)[Landroid/graphics/Rect;

    move-result-object v13

    .line 760
    .local v13, "faceRectsOnScreenTmpLand":[Landroid/graphics/Rect;
    if-eqz v13, :cond_3

    .line 761
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v2, v13

    if-ge v14, v2, :cond_3

    .line 762
    new-instance v16, Landroid/graphics/Rect;

    aget-object v2, v13, v14

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 763
    .local v16, "tmp":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 764
    .local v17, "x1":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 766
    .local v19, "y1":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .line 767
    .local v18, "x2":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    .line 769
    .local v20, "y2":I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallLand:D

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-int v8, v2

    .line 770
    .local v8, "X_center":I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallLand:D

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-int v9, v2

    .line 774
    .local v9, "Y_center":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->topBannerHeight:I

    .line 777
    aget-object v2, v13, v14

    add-int v3, v8, v9

    sub-int v3, v3, v19

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewWidth:I

    int-to-double v4, v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallLand:D

    move-wide/from16 v22, v0

    div-double v6, v6, v22

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 778
    aget-object v2, v13, v14

    add-int v3, v17, v9

    sub-int/2addr v3, v8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewHeight:I

    int-to-double v4, v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallLand:D

    move-wide/from16 v22, v0

    div-double v6, v6, v22

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->topBannerHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 780
    aget-object v2, v13, v14

    add-int v3, v8, v9

    sub-int v3, v3, v20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewWidth:I

    int-to-double v4, v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallLand:D

    move-wide/from16 v22, v0

    div-double v6, v6, v22

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 781
    aget-object v2, v13, v14

    add-int v3, v18, v9

    sub-int/2addr v3, v8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->effectImageViewHeight:I

    int-to-double v4, v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->scallLand:D

    move-wide/from16 v22, v0

    div-double v6, v6, v22

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->topBannerHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 761
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 755
    .end local v8    # "X_center":I
    .end local v9    # "Y_center":I
    .end local v13    # "faceRectsOnScreenTmpLand":[Landroid/graphics/Rect;
    .end local v14    # "i":I
    .end local v16    # "tmp":Landroid/graphics/Rect;
    .end local v17    # "x1":I
    .end local v18    # "x2":I
    .end local v19    # "y1":I
    .end local v20    # "y2":I
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 786
    .restart local v13    # "faceRectsOnScreenTmpLand":[Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreen:[Landroid/graphics/Rect;

    .line 788
    if-nez v12, :cond_4

    if-nez v13, :cond_4

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCallback:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView$OnCalFaceRecCompleteCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView$OnCalFaceRecCompleteCallback;->onCalComplete([Landroid/graphics/Rect;[Landroid/graphics/Rect;)V

    .line 790
    const-string v2, "WDY:FacePrettyActivity"

    const-string v3, "mCallback.onComplete(null, null)==========="

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->port_small_FaceRects:[Landroid/graphics/RectF;

    if-nez v2, :cond_5

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreen:[Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreen:[Landroid/graphics/Rect;

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->port_small_FaceRects:[Landroid/graphics/RectF;

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreen:[Landroid/graphics/Rect;

    array-length v11, v2

    .line 804
    .local v11, "faceNumber":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_3
    if-ge v15, v11, :cond_5

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->port_small_FaceRects:[Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreen:[Landroid/graphics/Rect;

    aget-object v4, v4, v15

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    aput-object v3, v2, v15

    .line 804
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 792
    .end local v11    # "faceNumber":I
    .end local v15    # "j":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mCallback:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView$OnCalFaceRecCompleteCallback;

    invoke-virtual {v12}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Rect;

    invoke-virtual {v13}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/Rect;

    invoke-interface {v4, v2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView$OnCalFaceRecCompleteCallback;->onCalComplete([Landroid/graphics/Rect;[Landroid/graphics/Rect;)V

    .line 793
    array-length v2, v13

    new-array v2, v2, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreenLandRects:[Landroid/graphics/Rect;

    .line 794
    invoke-virtual {v13}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreenLandRects:[Landroid/graphics/Rect;

    goto :goto_2

    .line 810
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->land_small_FaceRects:[Landroid/graphics/RectF;

    if-nez v2, :cond_0

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreenLandRects:[Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreenLandRects:[Landroid/graphics/Rect;

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->land_small_FaceRects:[Landroid/graphics/RectF;

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreenLandRects:[Landroid/graphics/Rect;

    array-length v11, v2

    .line 817
    .restart local v11    # "faceNumber":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_4
    if-ge v14, v11, :cond_0

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->land_small_FaceRects:[Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreenLandRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v14

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreenLandRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v14

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreenLandRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v14

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->mFaceRectsOnScreenLandRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v14

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v3, v2, v14

    .line 817
    add-int/lit8 v14, v14, 0x1

    goto :goto_4
.end method

.method public setRelativeRects([Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "relativeRects"    # [Landroid/graphics/Rect;

    .prologue
    .line 186
    const-string v1, "WDY:FacePrettyActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRelativeRects is null   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-eqz p1, :cond_1

    .line 188
    invoke-virtual {p1}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->relativeRects:[Landroid/graphics/Rect;

    .line 193
    :goto_1
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->relativeRects:[Landroid/graphics/Rect;

    goto :goto_1
.end method

.method public setisNeedRotate(Z)V
    .locals 0
    .param p1, "click"    # Z

    .prologue
    .line 634
    sput-boolean p1, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->islandscape:Z

    .line 635
    return-void
.end method
