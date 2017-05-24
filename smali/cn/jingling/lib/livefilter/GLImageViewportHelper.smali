.class public Lcn/jingling/lib/livefilter/GLImageViewportHelper;
.super Ljava/lang/Object;
.source "GLImageViewportHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cn$jingling$lib$livefilter$GLImageViewportHelper$ImageType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$cn$jingling$lib$livefilter$GLImageViewportHelper$ImageType()[I
    .locals 3

    .prologue
    .line 4
    sget-object v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper;->$SWITCH_TABLE$cn$jingling$lib$livefilter$GLImageViewportHelper$ImageType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->values()[Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->CENTER_CROP:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    invoke-virtual {v1}, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_BOTTOM:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    invoke-virtual {v1}, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_CENTER:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    invoke-virtual {v1}, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_TOP:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    invoke-virtual {v1}, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcn/jingling/lib/livefilter/GLImageViewportHelper;->$SWITCH_TABLE$cn$jingling$lib$livefilter$GLImageViewportHelper$ImageType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGLViewPort(IIIILcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)Lcn/jingling/lib/livefilter/ViewportRect;
    .locals 4
    .param p0, "mImageWidth"    # I
    .param p1, "mImageHeight"    # I
    .param p2, "mViewWidth"    # I
    .param p3, "mViewHeight"    # I
    .param p4, "type"    # Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcn/jingling/lib/livefilter/ViewportRect;

    invoke-direct {v0, v2, v2, v2, v2}, Lcn/jingling/lib/livefilter/ViewportRect;-><init>(IIII)V

    .line 10
    .local v0, "mViewportRect":Lcn/jingling/lib/livefilter/ViewportRect;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p0, :cond_0

    .line 11
    if-nez p1, :cond_1

    :cond_0
    move-object v1, v0

    .line 33
    .end local v0    # "mViewportRect":Lcn/jingling/lib/livefilter/ViewportRect;
    .local v1, "mViewportRect":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 15
    .end local v1    # "mViewportRect":Ljava/lang/Object;
    .restart local v0    # "mViewportRect":Lcn/jingling/lib/livefilter/ViewportRect;
    :cond_1
    invoke-static {}, Lcn/jingling/lib/livefilter/GLImageViewportHelper;->$SWITCH_TABLE$cn$jingling$lib$livefilter$GLImageViewportHelper$ImageType()[I

    move-result-object v2

    invoke-virtual {p4}, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    move-object v1, v0

    .line 33
    .restart local v1    # "mViewportRect":Ljava/lang/Object;
    goto :goto_0

    .line 17
    .end local v1    # "mViewportRect":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p0, p1, p2, p3}, Lcn/jingling/lib/livefilter/GLImageViewportHelper;->getGLViewPortFitCenter(IIII)Lcn/jingling/lib/livefilter/ViewportRect;

    move-result-object v0

    .line 18
    goto :goto_1

    .line 20
    :pswitch_1
    invoke-static {p0, p1, p2, p3}, Lcn/jingling/lib/livefilter/GLImageViewportHelper;->getGLViewPortCenterCrop(IIII)Lcn/jingling/lib/livefilter/ViewportRect;

    move-result-object v0

    .line 21
    goto :goto_1

    .line 23
    :pswitch_2
    invoke-static {p0, p1, p2, p3}, Lcn/jingling/lib/livefilter/GLImageViewportHelper;->getGLViewPortFitTop(IIII)Lcn/jingling/lib/livefilter/ViewportRect;

    move-result-object v0

    .line 24
    goto :goto_1

    .line 26
    :pswitch_3
    invoke-static {p0, p1, p2, p3}, Lcn/jingling/lib/livefilter/GLImageViewportHelper;->getGLViewPortFitBottom(IIII)Lcn/jingling/lib/livefilter/ViewportRect;

    move-result-object v0

    .line 27
    goto :goto_1

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getGLViewPortCenterCrop(IIII)Lcn/jingling/lib/livefilter/ViewportRect;
    .locals 12
    .param p0, "mImageWidth"    # I
    .param p1, "mImageHeight"    # I
    .param p2, "mViewWidth"    # I
    .param p3, "mViewHeight"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 71
    const/high16 v1, 0x3f800000    # 1.0f

    .line 72
    .local v1, "scaleRatio":F
    const/4 v4, 0x0

    .line 73
    .local v4, "traslatex":F
    const/4 v5, 0x0

    .line 76
    .local v5, "traslatey":F
    int-to-float v9, p3

    int-to-float v10, p1

    div-float v2, v9, v10

    .line 77
    .local v2, "scaleRatioH":F
    int-to-float v9, p2

    int-to-float v10, p0

    div-float v3, v9, v10

    .line 80
    .local v3, "scaleRatioW":F
    cmpl-float v9, v3, v2

    if-lez v9, :cond_0

    .line 81
    move v1, v3

    .line 82
    const/4 v4, 0x0

    .line 83
    int-to-float v9, p3

    int-to-float v10, p1

    mul-float/2addr v10, v1

    sub-float/2addr v9, v10

    div-float v5, v9, v11

    .line 90
    :goto_0
    float-to-int v7, v4

    .line 91
    .local v7, "x":I
    float-to-int v8, v5

    .line 92
    .local v8, "y":I
    int-to-float v9, p0

    mul-float/2addr v9, v1

    float-to-int v6, v9

    .line 93
    .local v6, "width":I
    int-to-float v9, p1

    mul-float/2addr v9, v1

    float-to-int v0, v9

    .line 95
    .local v0, "height":I
    new-instance v9, Lcn/jingling/lib/livefilter/ViewportRect;

    invoke-direct {v9, v7, v8, v6, v0}, Lcn/jingling/lib/livefilter/ViewportRect;-><init>(IIII)V

    return-object v9

    .line 85
    .end local v0    # "height":I
    .end local v6    # "width":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_0
    move v1, v2

    .line 86
    const/4 v5, 0x0

    .line 87
    int-to-float v9, p2

    int-to-float v10, p0

    mul-float/2addr v10, v1

    sub-float/2addr v9, v10

    div-float v4, v9, v11

    goto :goto_0
.end method

.method private static getGLViewPortFitBottom(IIII)Lcn/jingling/lib/livefilter/ViewportRect;
    .locals 9
    .param p0, "mImageWidth"    # I
    .param p1, "mImageHeight"    # I
    .param p2, "mViewWidth"    # I
    .param p3, "mViewHeight"    # I

    .prologue
    .line 121
    const/high16 v1, 0x3f800000    # 1.0f

    .line 122
    .local v1, "scaleRatio":F
    const/4 v2, 0x0

    .line 123
    .local v2, "traslatex":F
    const/4 v3, 0x0

    .line 125
    .local v3, "traslatey":F
    int-to-float v7, p2

    int-to-float v8, p0

    div-float v1, v7, v8

    .line 127
    float-to-int v5, v2

    .line 128
    .local v5, "x":I
    float-to-int v6, v3

    .line 129
    .local v6, "y":I
    int-to-float v7, p0

    mul-float/2addr v7, v1

    float-to-int v4, v7

    .line 130
    .local v4, "width":I
    int-to-float v7, p1

    mul-float/2addr v7, v1

    float-to-int v0, v7

    .line 132
    .local v0, "height":I
    new-instance v7, Lcn/jingling/lib/livefilter/ViewportRect;

    invoke-direct {v7, v5, v6, v4, v0}, Lcn/jingling/lib/livefilter/ViewportRect;-><init>(IIII)V

    return-object v7
.end method

.method private static getGLViewPortFitCenter(IIII)Lcn/jingling/lib/livefilter/ViewportRect;
    .locals 12
    .param p0, "mImageWidth"    # I
    .param p1, "mImageHeight"    # I
    .param p2, "mViewWidth"    # I
    .param p3, "mViewHeight"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 40
    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    .local v1, "scaleRatio":F
    const/4 v4, 0x0

    .line 42
    .local v4, "traslatex":F
    const/4 v5, 0x0

    .line 45
    .local v5, "traslatey":F
    int-to-float v9, p3

    int-to-float v10, p1

    div-float v2, v9, v10

    .line 46
    .local v2, "scaleRatioH":F
    int-to-float v9, p2

    int-to-float v10, p0

    div-float v3, v9, v10

    .line 49
    .local v3, "scaleRatioW":F
    cmpl-float v9, v2, v3

    if-lez v9, :cond_0

    .line 50
    move v1, v3

    .line 51
    const/4 v4, 0x0

    .line 52
    int-to-float v9, p3

    int-to-float v10, p1

    mul-float/2addr v10, v1

    sub-float/2addr v9, v10

    div-float v5, v9, v11

    .line 59
    :goto_0
    float-to-int v7, v4

    .line 60
    .local v7, "x":I
    float-to-int v8, v5

    .line 61
    .local v8, "y":I
    int-to-float v9, p0

    mul-float/2addr v9, v1

    float-to-int v6, v9

    .line 62
    .local v6, "width":I
    int-to-float v9, p1

    mul-float/2addr v9, v1

    float-to-int v0, v9

    .line 64
    .local v0, "height":I
    new-instance v9, Lcn/jingling/lib/livefilter/ViewportRect;

    invoke-direct {v9, v7, v8, v6, v0}, Lcn/jingling/lib/livefilter/ViewportRect;-><init>(IIII)V

    return-object v9

    .line 54
    .end local v0    # "height":I
    .end local v6    # "width":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_0
    move v1, v2

    .line 55
    const/4 v5, 0x0

    .line 56
    int-to-float v9, p2

    int-to-float v10, p0

    mul-float/2addr v10, v1

    sub-float/2addr v9, v10

    div-float v4, v9, v11

    goto :goto_0
.end method

.method private static getGLViewPortFitTop(IIII)Lcn/jingling/lib/livefilter/ViewportRect;
    .locals 9
    .param p0, "mImageWidth"    # I
    .param p1, "mImageHeight"    # I
    .param p2, "mViewWidth"    # I
    .param p3, "mViewHeight"    # I

    .prologue
    .line 102
    const/high16 v1, 0x3f800000    # 1.0f

    .line 103
    .local v1, "scaleRatio":F
    const/4 v2, 0x0

    .line 104
    .local v2, "traslatex":F
    const/4 v3, 0x0

    .line 106
    .local v3, "traslatey":F
    int-to-float v7, p2

    int-to-float v8, p0

    div-float v1, v7, v8

    .line 107
    int-to-float v7, p3

    int-to-float v8, p1

    mul-float/2addr v8, v1

    sub-float v3, v7, v8

    .line 109
    float-to-int v5, v2

    .line 110
    .local v5, "x":I
    float-to-int v6, v3

    .line 111
    .local v6, "y":I
    int-to-float v7, p0

    mul-float/2addr v7, v1

    float-to-int v4, v7

    .line 112
    .local v4, "width":I
    int-to-float v7, p1

    mul-float/2addr v7, v1

    float-to-int v0, v7

    .line 114
    .local v0, "height":I
    new-instance v7, Lcn/jingling/lib/livefilter/ViewportRect;

    invoke-direct {v7, v5, v6, v4, v0}, Lcn/jingling/lib/livefilter/ViewportRect;-><init>(IIII)V

    return-object v7
.end method
