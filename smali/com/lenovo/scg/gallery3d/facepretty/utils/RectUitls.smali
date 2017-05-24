.class public Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;
.super Ljava/lang/Object;
.source "RectUitls.java"


# static fields
.field public static final MAN:I = 0x0

.field public static final OTHER:I = 0x2

.field public static final WOMAN:I = 0x1


# instance fields
.field private faceRectsInPic:[Landroid/graphics/Rect;

.field private faceRectsInScreen:[Landroid/graphics/Rect;

.field private mBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

.field private relativeRectsInPic:[Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->mBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    .line 17
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->faceRectsInPic:[Landroid/graphics/Rect;

    .line 19
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->relativeRectsInPic:[Landroid/graphics/Rect;

    .line 21
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->faceRectsInScreen:[Landroid/graphics/Rect;

    .line 26
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->mBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    .line 27
    return-void
.end method


# virtual methods
.method public calFaceInScreen(IIIILandroid/graphics/Bitmap;[Landroid/graphics/Rect;D)[Landroid/graphics/Rect;
    .locals 15
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I
    .param p3, "topBannerHeight"    # I
    .param p4, "bottomBannerHeight"    # I
    .param p5, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p6, "relativeRectInPic"    # [Landroid/graphics/Rect;
    .param p7, "scallValue"    # D

    .prologue
    .line 48
    if-nez p6, :cond_0

    const/4 v9, 0x0

    .line 70
    :goto_0
    return-object v9

    .line 49
    :cond_0
    move-object/from16 v0, p6

    array-length v9, v0

    new-array v9, v9, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->faceRectsInScreen:[Landroid/graphics/Rect;

    .line 52
    move/from16 v4, p1

    .line 53
    .local v4, "imgViewWidth":I
    sub-int v9, p2, p3

    sub-int v3, v9, p4

    .line 56
    .local v3, "imgViewHeight":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 57
    .local v6, "mBmpWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 59
    .local v5, "mBmpHeight":I
    int-to-double v10, v4

    int-to-double v12, v6

    mul-double v12, v12, p7

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-int v7, v10

    .line 60
    .local v7, "startDrawX":I
    int-to-double v10, v3

    int-to-double v12, v5

    mul-double v12, v12, p7

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-int v8, v10

    .line 61
    .local v8, "startDrawY":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->faceRectsInScreen:[Landroid/graphics/Rect;

    array-length v9, v9

    if-ge v2, v9, :cond_1

    .line 62
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->faceRectsInScreen:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    aput-object v10, v9, v2

    .line 64
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->faceRectsInScreen:[Landroid/graphics/Rect;

    aget-object v9, v9, v2

    int-to-float v10, v4

    aget-object v11, p6, v2

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-double v10, v10

    div-double v10, v10, p7

    double-to-int v10, v10

    add-int/2addr v10, v7

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 65
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->faceRectsInScreen:[Landroid/graphics/Rect;

    aget-object v9, v9, v2

    int-to-float v10, v3

    aget-object v11, p6, v2

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-double v10, v10

    div-double v10, v10, p7

    double-to-int v10, v10

    add-int/2addr v10, v8

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 66
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->faceRectsInScreen:[Landroid/graphics/Rect;

    aget-object v9, v9, v2

    int-to-float v10, v4

    aget-object v11, p6, v2

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-double v10, v10

    div-double v10, v10, p7

    double-to-int v10, v10

    add-int/2addr v10, v7

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 67
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->faceRectsInScreen:[Landroid/graphics/Rect;

    aget-object v9, v9, v2

    int-to-float v10, v3

    aget-object v11, p6, v2

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-double v10, v10

    div-double v10, v10, p7

    double-to-int v10, v10

    add-int/2addr v10, v8

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 70
    :cond_1
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->faceRectsInScreen:[Landroid/graphics/Rect;

    goto/16 :goto_0
.end method

.method public calRelativeRectsInPic([Landroid/graphics/Rect;II)[Landroid/graphics/Rect;
    .locals 7
    .param p1, "inPic"    # [Landroid/graphics/Rect;
    .param p2, "bmpWidth"    # I
    .param p3, "bmpHeight"    # I

    .prologue
    .line 113
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 120
    :goto_0
    return-object v1

    .line 115
    :cond_0
    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->relativeRectsInPic:[Landroid/graphics/Rect;

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->relativeRectsInPic:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, p2

    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, p3

    aget-object v5, p1, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v5, v5, 0x64

    div-int/2addr v5, p2

    aget-object v6, p1, v0

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, p3

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v1, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->relativeRectsInPic:[Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public faceRectsInPic(Landroid/graphics/Bitmap;)[Landroid/graphics/Rect;
    .locals 1
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 133
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->mBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->findFaceRects(Landroid/graphics/Bitmap;)[Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->faceRectsInPic:[Landroid/graphics/Rect;

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;->faceRectsInPic:[Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public faceRoundRect4Port([Landroid/graphics/Rect;I)[Landroid/graphics/RectF;
    .locals 6
    .param p1, "faceOnScreen"    # [Landroid/graphics/Rect;
    .param p2, "topBannerHeight"    # I

    .prologue
    .line 149
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 160
    :cond_0
    return-object v0

    .line 151
    :cond_1
    array-length v3, p1

    new-array v0, v3, [Landroid/graphics/RectF;

    .line 153
    .local v0, "faceRoundRectFs":[Landroid/graphics/RectF;
    array-length v2, v0

    .line 154
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 155
    new-instance v3, Landroid/graphics/RectF;

    aget-object v4, p1, v1

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    aput-object v3, v0, v1

    .line 156
    aget-object v3, v0, v1

    aget-object v4, v0, v1

    iget v4, v4, Landroid/graphics/RectF;->top:F

    int-to-float v5, p2

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 157
    aget-object v3, v0, v1

    aget-object v4, v0, v1

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, p2

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getScallValue(IIII)F
    .locals 9
    .param p1, "bmpWidth"    # I
    .param p2, "bmpHeiht"    # I
    .param p3, "imageViewWidth"    # I
    .param p4, "imageViewHeiht"    # I

    .prologue
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 86
    move v1, p1

    .line 87
    .local v1, "bmpW":I
    move v0, p2

    .line 88
    .local v0, "bmpH":I
    int-to-float v6, v1

    int-to-float v7, p3

    div-float v4, v6, v7

    .line 89
    .local v4, "scallW":F
    int-to-float v6, v0

    int-to-float v7, p4

    div-float v2, v6, v7

    .line 91
    .local v2, "scallH":F
    mul-float v6, v4, v8

    float-to-int v5, v6

    .line 92
    .local v5, "scallW_int":I
    mul-float v6, v2, v8

    float-to-int v3, v6

    .line 93
    .local v3, "scallH_int":I
    if-ne v5, p3, :cond_0

    if-ne v3, p4, :cond_0

    .line 95
    const/high16 v6, 0x3f800000    # 1.0f

    .line 97
    :goto_0
    return v6

    :cond_0
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_0
.end method
