.class public Lcom/lenovo/scg/camera/front/FrontUtil;
.super Ljava/lang/Object;
.source "FrontUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FrontUtil"

.field private static mBottomSpace:I

.field public static mDefaultTopSpace:I

.field private static mPreviewScreenHeight:I

.field private static mPreviewScreenWidth:I

.field private static mRatio:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

.field public static mScreenHeight:I

.field public static mScreenWidth:I

.field private static mTopSpace:I

.field public static sShowBeautyRect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/camera/front/FrontUtil;->sShowBeautyRect:Z

    .line 34
    sget-object v0, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->SAMLL:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    sput-object v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mRatio:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getBottomSpace()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mBottomSpace:I

    return v0
.end method

.method public static getPreviewScreenHeight()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mPreviewScreenHeight:I

    return v0
.end method

.method public static getPreviewScreenWidth()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mPreviewScreenWidth:I

    return v0
.end method

.method public static getRatio()Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mRatio:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    return-object v0
.end method

.method public static getTopSpace()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mTopSpace:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/lenovo/scg/camera/front/FrontUtil;->mDefaultTopSpace:I

    .line 77
    const-string v2, "FrontUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDefaultTopSpace = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lenovo/scg/camera/front/FrontUtil;->mDefaultTopSpace:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 80
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 81
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 82
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    .line 83
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenHeight:I

    .line 84
    const-string v2, "FrontUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mScreenWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v2, "FrontUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mScreenHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public static mirrorRect(Landroid/graphics/Rect;I)V
    .locals 7
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "width"    # I

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, "newLeft":I
    const/4 v3, 0x0

    .line 92
    .local v3, "newRight":I
    div-int/lit8 v0, p1, 0x2

    .line 93
    .local v0, "centerX":I
    const-string v4, "FrontUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "divideLine = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget v4, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v0

    .line 96
    .local v1, "distance":I
    const-string v4, "FrontUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "distance = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget v4, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v0

    if-gez v4, :cond_1

    .line 99
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v3, v0, v4

    .line 106
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v2, v3, v4

    .line 107
    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 108
    iput v3, p0, Landroid/graphics/Rect;->right:I

    .line 109
    return-void

    .line 100
    :cond_1
    iget v4, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v0

    if-lez v4, :cond_2

    .line 101
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v3, v0, v4

    goto :goto_0

    .line 102
    :cond_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v0

    if-nez v4, :cond_0

    .line 103
    move v3, v0

    goto :goto_0
.end method

.method public static setRatio(Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;)V
    .locals 3
    .param p0, "ratio"    # Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    .prologue
    const/4 v1, 0x0

    .line 57
    sget-object v0, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->BIG:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    if-ne p0, v0, :cond_1

    .line 58
    sget-object v0, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->BIG:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    sput-object v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mRatio:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    .line 59
    sget v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    sput v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mPreviewScreenWidth:I

    .line 60
    sget v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenHeight:I

    sput v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mPreviewScreenHeight:I

    .line 61
    sput v1, Lcom/lenovo/scg/camera/front/FrontUtil;->mTopSpace:I

    .line 62
    sput v1, Lcom/lenovo/scg/camera/front/FrontUtil;->mBottomSpace:I

    .line 70
    :cond_0
    :goto_0
    const-string v0, "FrontUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTopSpace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/camera/front/FrontUtil;->mTopSpace:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBottomSpace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/camera/front/FrontUtil;->mBottomSpace:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPreviewScreenHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/camera/front/FrontUtil;->mPreviewScreenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 63
    :cond_1
    sget-object v0, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->SAMLL:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    if-ne p0, v0, :cond_0

    .line 64
    sget-object v0, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->SAMLL:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    sput-object v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mRatio:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    .line 65
    sget v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    sput v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mPreviewScreenWidth:I

    .line 66
    sget v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mPreviewScreenHeight:I

    .line 67
    sget v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mDefaultTopSpace:I

    sput v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mTopSpace:I

    .line 68
    sget v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenHeight:I

    sget v1, Lcom/lenovo/scg/camera/front/FrontUtil;->mPreviewScreenHeight:I

    sub-int/2addr v0, v1

    sget v1, Lcom/lenovo/scg/camera/front/FrontUtil;->mTopSpace:I

    sub-int/2addr v0, v1

    sput v0, Lcom/lenovo/scg/camera/front/FrontUtil;->mBottomSpace:I

    goto :goto_0
.end method
