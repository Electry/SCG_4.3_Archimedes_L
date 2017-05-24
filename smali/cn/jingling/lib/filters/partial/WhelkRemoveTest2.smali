.class public Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;
.super Lcn/jingling/lib/filters/PartialFilter;
.source "WhelkRemoveTest2.java"


# instance fields
.field private FSIZE:I

.field protected TAG:Ljava/lang/String;

.field isFirst:Z

.field private mAssistBitmap:Landroid/graphics/Bitmap;

.field private mAssistView:Landroid/widget/ImageView;

.field private mMaxRadius:I

.field private mMinRadius:I

.field private mRADIUS:I

.field private mZoomView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 15
    invoke-direct {p0}, Lcn/jingling/lib/filters/PartialFilter;-><init>()V

    .line 16
    const-string v0, "PartialSkinSmoothEffect_OK"

    iput-object v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->TAG:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mRADIUS:I

    .line 18
    const/16 v0, 0x64

    iput v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mMaxRadius:I

    .line 19
    const/16 v0, 0xa

    iput v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mMinRadius:I

    .line 20
    iput v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->FSIZE:I

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->isFirst:Z

    .line 15
    return-void
.end method

.method private selectRound([IIIIIII)V
    .locals 12
    .param p1, "selection"    # [I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "r"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "featherSize"    # I

    .prologue
    .line 94
    move/from16 v4, p7

    .line 95
    .local v4, "f":I
    mul-int v8, p4, p4

    .line 96
    .local v8, "r2":I
    sub-int v9, p4, v4

    sub-int v10, p4, v4

    mul-int v5, v9, v10

    .line 98
    .local v5, "fr2":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, p6

    if-lt v6, v0, :cond_0

    .line 112
    return-void

    .line 99
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    move/from16 v0, p5

    if-lt v7, v0, :cond_1

    .line 98
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 100
    :cond_1
    sub-int v9, v6, p2

    sub-int v10, v6, p2

    mul-int/2addr v9, v10

    sub-int v10, v7, p3

    sub-int v11, v7, p3

    mul-int/2addr v10, v11

    add-int v3, v9, v10

    .line 101
    .local v3, "d2":I
    if-ge v3, v5, :cond_2

    .line 102
    mul-int v9, v6, p5

    add-int/2addr v9, v7

    const/4 v10, 0x0

    aput v10, p1, v9

    .line 99
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 103
    :cond_2
    if-ge v3, v8, :cond_3

    .line 104
    int-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v2, v10

    .line 105
    .local v2, "d":I
    mul-int v9, v6, p5

    add-int/2addr v9, v7

    sub-int v10, p4, v2

    mul-int/lit16 v10, v10, 0xff

    div-int/2addr v10, v4

    rsub-int v10, v10, 0xff

    aput v10, p1, v9

    goto :goto_2

    .line 107
    .end local v2    # "d":I
    :cond_3
    mul-int v9, v6, p5

    add-int/2addr v9, v7

    const/16 v10, 0xff

    aput v10, p1, v9

    goto :goto_2
.end method


# virtual methods
.method public getRelativeRadius()I
    .locals 3

    .prologue
    .line 72
    iget v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mRADIUS:I

    iget v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mMinRadius:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mMaxRadius:I

    iget v2, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mMinRadius:I

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 570
    invoke-super {p0}, Lcn/jingling/lib/filters/PartialFilter;->release()V

    .line 571
    return-void
.end method

.method public setRelativeRadius(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "degree"    # I

    .prologue
    .line 63
    iget v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mMaxRadius:I

    iget v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mMinRadius:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mMinRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mRADIUS:I

    .line 64
    iget v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mRADIUS:I

    iget v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mMinRadius:I

    if-ge v0, v1, :cond_1

    .line 65
    iget v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mMinRadius:I

    iput v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mRADIUS:I

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mRADIUS:I

    iget v1, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mMaxRadius:I

    if-le v0, v1, :cond_0

    .line 67
    iget v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mMaxRadius:I

    iput v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mRADIUS:I

    goto :goto_0
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/filters/PartialFilter;->setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 38
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mRADIUS:I

    .line 39
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemoveTest2;->mMaxRadius:I

    .line 42
    return-void
.end method
