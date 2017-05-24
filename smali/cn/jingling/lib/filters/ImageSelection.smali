.class public Lcn/jingling/lib/filters/ImageSelection;
.super Ljava/lang/Object;
.source "ImageSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/filters/ImageSelection$Align;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cn$jingling$lib$filters$ImageSelection$Align:[I


# instance fields
.field private mHeight:I

.field private mSelection:[I

.field private mWidth:I


# direct methods
.method static synthetic $SWITCH_TABLE$cn$jingling$lib$filters$ImageSelection$Align()[I
    .locals 3

    .prologue
    .line 6
    sget-object v0, Lcn/jingling/lib/filters/ImageSelection;->$SWITCH_TABLE$cn$jingling$lib$filters$ImageSelection$Align:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/jingling/lib/filters/ImageSelection$Align;->values()[Lcn/jingling/lib/filters/ImageSelection$Align;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcn/jingling/lib/filters/ImageSelection$Align;->CENTER:Lcn/jingling/lib/filters/ImageSelection$Align;

    invoke-virtual {v1}, Lcn/jingling/lib/filters/ImageSelection$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcn/jingling/lib/filters/ImageSelection$Align;->LEFT_TOP:Lcn/jingling/lib/filters/ImageSelection$Align;

    invoke-virtual {v1}, Lcn/jingling/lib/filters/ImageSelection$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcn/jingling/lib/filters/ImageSelection$Align;->RIGHT_BOTTOM:Lcn/jingling/lib/filters/ImageSelection$Align;

    invoke-virtual {v1}, Lcn/jingling/lib/filters/ImageSelection$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcn/jingling/lib/filters/ImageSelection;->$SWITCH_TABLE$cn$jingling$lib$filters$ImageSelection$Align:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    .line 18
    iput p2, p0, Lcn/jingling/lib/filters/ImageSelection;->mHeight:I

    .line 19
    iget v0, p0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    iget v1, p0, Lcn/jingling/lib/filters/ImageSelection;->mHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/jingling/lib/filters/ImageSelection;->mSelection:[I

    .line 20
    return-void
.end method

.method public constructor <init>(Lcn/jingling/lib/filters/ImageSelection;)V
    .locals 2
    .param p1, "imageSelection"    # Lcn/jingling/lib/filters/ImageSelection;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcn/jingling/lib/filters/ImageSelection;->getWidth()I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    .line 24
    invoke-virtual {p1}, Lcn/jingling/lib/filters/ImageSelection;->getHeight()I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/filters/ImageSelection;->mHeight:I

    .line 26
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lcn/jingling/lib/filters/ImageSelection;->mSelection:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method private dist2(IIII)I
    .locals 3
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 198
    sub-int v0, p1, p3

    sub-int v1, p1, p3

    mul-int/2addr v0, v1

    sub-int v1, p2, p4

    sub-int v2, p2, p4

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private getSquareFeatherValue(IIIII)I
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "featherSize"    # I

    .prologue
    .line 177
    move v0, p5

    .line 178
    .local v0, "f":I
    if-nez v0, :cond_0

    .line 179
    const/16 v1, 0xff

    .line 194
    :goto_0
    return v1

    .line 181
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 182
    .local v2, "rate":D
    if-ge p3, v0, :cond_1

    .line 183
    int-to-double v4, p3

    mul-double/2addr v4, v2

    int-to-double v6, v0

    div-double v2, v4, v6

    .line 185
    :cond_1
    sub-int v1, p1, v0

    if-le p3, v1, :cond_2

    .line 186
    sub-int v1, p1, p3

    int-to-double v4, v1

    mul-double/2addr v4, v2

    int-to-double v6, v0

    div-double v2, v4, v6

    .line 188
    :cond_2
    if-ge p4, v0, :cond_3

    .line 189
    int-to-double v4, p4

    mul-double/2addr v4, v2

    int-to-double v6, v0

    div-double v2, v4, v6

    .line 191
    :cond_3
    sub-int v1, p2, v0

    if-le p4, v1, :cond_4

    .line 192
    sub-int v1, p2, p4

    int-to-double v4, v1

    mul-double/2addr v4, v2

    int-to-double v6, v0

    div-double v2, v4, v6

    .line 194
    :cond_4
    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v2

    double-to-int v1, v4

    goto :goto_0
.end method

.method private isOutTheCorner(IIIII)Z
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "r"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 156
    if-nez p5, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 159
    :cond_1
    mul-int v0, p5, p5

    .line 160
    .local v0, "r2":I
    if-ge p3, p5, :cond_2

    if-ge p4, p5, :cond_2

    invoke-direct {p0, p3, p4, p5, p5}, Lcn/jingling/lib/filters/ImageSelection;->dist2(IIII)I

    move-result v3

    if-le v3, v0, :cond_2

    move v1, v2

    .line 161
    goto :goto_0

    .line 163
    :cond_2
    sub-int v3, p1, p5

    if-le p3, v3, :cond_3

    if-ge p4, p5, :cond_3

    sub-int v3, p1, p5

    invoke-direct {p0, p3, p4, v3, p5}, Lcn/jingling/lib/filters/ImageSelection;->dist2(IIII)I

    move-result v3

    if-le v3, v0, :cond_3

    move v1, v2

    .line 164
    goto :goto_0

    .line 166
    :cond_3
    if-ge p3, p5, :cond_4

    sub-int v3, p2, p5

    if-le p4, v3, :cond_4

    sub-int v3, p2, p5

    invoke-direct {p0, p3, p4, p5, v3}, Lcn/jingling/lib/filters/ImageSelection;->dist2(IIII)I

    move-result v3

    if-le v3, v0, :cond_4

    move v1, v2

    .line 167
    goto :goto_0

    .line 169
    :cond_4
    sub-int v3, p1, p5

    if-le p3, v3, :cond_0

    sub-int v3, p2, p5

    if-le p4, v3, :cond_0

    sub-int v3, p1, p5

    sub-int v4, p2, p5

    invoke-direct {p0, p3, p4, v3, v4}, Lcn/jingling/lib/filters/ImageSelection;->dist2(IIII)I

    move-result v3

    if-le v3, v0, :cond_0

    move v1, v2

    .line 170
    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcn/jingling/lib/filters/ImageSelection;->mHeight:I

    return v0
.end method

.method public getPixels()[I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/jingling/lib/filters/ImageSelection;->mSelection:[I

    return-object v0
.end method

.method public getSelectedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 35
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 36
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 37
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 38
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    mul-int v0, v3, v7

    if-lt v9, v0, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v1, v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 43
    .local v10, "rst":Landroid/graphics/Bitmap;
    return-object v10

    .line 39
    .end local v10    # "rst":Landroid/graphics/Bitmap;
    :cond_0
    aget v8, v1, v9

    .line 40
    .local v8, "c":I
    iget-object v0, p0, Lcn/jingling/lib/filters/ImageSelection;->mSelection:[I

    aget v0, v0, v9

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v0, v2, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v1, v9

    .line 38
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    return v0
.end method

.method public reverse()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    iget v2, p0, Lcn/jingling/lib/filters/ImageSelection;->mHeight:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 68
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcn/jingling/lib/filters/ImageSelection;->mSelection:[I

    iget-object v2, p0, Lcn/jingling/lib/filters/ImageSelection;->mSelection:[I

    aget v2, v2, v0

    rsub-int v2, v2, 0xff

    aput v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public selectAll()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    iget v2, p0, Lcn/jingling/lib/filters/ImageSelection;->mHeight:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 62
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcn/jingling/lib/filters/ImageSelection;->mSelection:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public selectRound(IIII)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # I
    .param p4, "featherSize"    # I

    .prologue
    .line 136
    move v2, p4

    .line 137
    .local v2, "f":I
    mul-int v6, p3, p3

    .line 138
    .local v6, "r2":I
    sub-int v7, p3, v2

    sub-int v8, p3, v2

    mul-int v3, v7, v8

    .line 139
    .local v3, "fr2":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v7, p0, Lcn/jingling/lib/filters/ImageSelection;->mHeight:I

    if-lt v4, v7, :cond_0

    .line 153
    return-void

    .line 140
    :cond_0
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget v7, p0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    if-lt v5, v7, :cond_1

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-direct {p0, v4, v5, p2, p1}, Lcn/jingling/lib/filters/ImageSelection;->dist2(IIII)I

    move-result v1

    .line 142
    .local v1, "d2":I
    if-ge v1, v3, :cond_2

    .line 143
    iget-object v7, p0, Lcn/jingling/lib/filters/ImageSelection;->mSelection:[I

    iget v8, p0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v5

    const/16 v9, 0xff

    aput v9, v7, v8

    .line 140
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 144
    :cond_2
    if-ge v1, v6, :cond_3

    .line 145
    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 146
    .local v0, "d":I
    iget-object v7, p0, Lcn/jingling/lib/filters/ImageSelection;->mSelection:[I

    iget v8, p0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v5

    sub-int v9, p3, v0

    mul-int/lit16 v9, v9, 0xff

    div-int/2addr v9, v2

    aput v9, v7, v8

    goto :goto_2

    .line 148
    .end local v0    # "d":I
    :cond_3
    iget-object v7, p0, Lcn/jingling/lib/filters/ImageSelection;->mSelection:[I

    iget v8, p0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v5

    const/4 v9, 0x0

    aput v9, v7, v8

    goto :goto_2
.end method

.method public selectRound(ILcn/jingling/lib/filters/ImageSelection$Align;)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "align"    # Lcn/jingling/lib/filters/ImageSelection$Align;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/jingling/lib/filters/ImageSelection;->selectRound(ILcn/jingling/lib/filters/ImageSelection$Align;I)V

    .line 114
    return-void
.end method

.method public selectRound(ILcn/jingling/lib/filters/ImageSelection$Align;I)V
    .locals 4
    .param p1, "r"    # I
    .param p2, "align"    # Lcn/jingling/lib/filters/ImageSelection$Align;
    .param p3, "featherSize"    # I

    .prologue
    .line 118
    invoke-static {}, Lcn/jingling/lib/filters/ImageSelection;->$SWITCH_TABLE$cn$jingling$lib$filters$ImageSelection$Align()[I

    move-result-object v2

    invoke-virtual {p2}, Lcn/jingling/lib/filters/ImageSelection$Align;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 128
    :pswitch_0
    move v1, p1

    .line 129
    .local v1, "y":I
    move v0, p1

    .line 132
    .local v0, "x":I
    :goto_0
    invoke-virtual {p0, v0, v1, p1, p3}, Lcn/jingling/lib/filters/ImageSelection;->selectRound(IIII)V

    .line 133
    return-void

    .line 120
    .end local v0    # "x":I
    .end local v1    # "y":I
    :pswitch_1
    iget v2, p0, Lcn/jingling/lib/filters/ImageSelection;->mHeight:I

    div-int/lit8 v1, v2, 0x2

    .line 121
    .restart local v1    # "y":I
    iget v2, p0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    div-int/lit8 v0, v2, 0x2

    .line 122
    .restart local v0    # "x":I
    goto :goto_0

    .line 124
    .end local v0    # "x":I
    .end local v1    # "y":I
    :pswitch_2
    iget v2, p0, Lcn/jingling/lib/filters/ImageSelection;->mHeight:I

    sub-int v1, v2, p1

    .line 125
    .restart local v1    # "y":I
    iget v2, p0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    sub-int v0, v2, p1

    .line 126
    .restart local v0    # "x":I
    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public selectSquare(IILcn/jingling/lib/filters/ImageSelection$Align;)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "align"    # Lcn/jingling/lib/filters/ImageSelection$Align;

    .prologue
    const/4 v4, 0x0

    .line 75
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcn/jingling/lib/filters/ImageSelection;->selectSquare(IILcn/jingling/lib/filters/ImageSelection$Align;II)V

    .line 76
    return-void
.end method

.method public selectSquare(IILcn/jingling/lib/filters/ImageSelection$Align;II)V
    .locals 17
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "align"    # Lcn/jingling/lib/filters/ImageSelection$Align;
    .param p4, "roundCornerRadius"    # I
    .param p5, "featherSize"    # I

    .prologue
    .line 80
    move/from16 v6, p4

    .line 82
    .local v6, "r":I
    invoke-static {}, Lcn/jingling/lib/filters/ImageSelection;->$SWITCH_TABLE$cn$jingling$lib$filters$ImageSelection$Align()[I

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcn/jingling/lib/filters/ImageSelection$Align;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 92
    :pswitch_0
    const/16 v16, 0x0

    .line 93
    .local v16, "y":I
    const/4 v15, 0x0

    .line 96
    .local v15, "x":I
    :goto_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcn/jingling/lib/filters/ImageSelection;->mHeight:I

    if-lt v13, v1, :cond_0

    .line 110
    return-void

    .line 84
    .end local v13    # "i":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v1, v0, Lcn/jingling/lib/filters/ImageSelection;->mHeight:I

    sub-int v1, v1, p2

    div-int/lit8 v16, v1, 0x2

    .line 85
    .restart local v16    # "y":I
    move-object/from16 v0, p0

    iget v1, v0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    sub-int v1, v1, p1

    div-int/lit8 v15, v1, 0x2

    .line 86
    .restart local v15    # "x":I
    goto :goto_0

    .line 88
    .end local v15    # "x":I
    .end local v16    # "y":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v1, v0, Lcn/jingling/lib/filters/ImageSelection;->mHeight:I

    sub-int v16, v1, p2

    .line 89
    .restart local v16    # "y":I
    move-object/from16 v0, p0

    iget v1, v0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    sub-int v15, v1, p1

    .line 90
    .restart local v15    # "x":I
    goto :goto_0

    .line 97
    .restart local v13    # "i":I
    :cond_0
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    if-lt v14, v1, :cond_1

    .line 96
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 98
    :cond_1
    move/from16 v0, v16

    if-lt v13, v0, :cond_3

    add-int v1, v16, p2

    if-ge v13, v1, :cond_3

    if-lt v14, v15, :cond_3

    add-int v1, v15, p1

    if-ge v14, v1, :cond_3

    .line 99
    sub-int v4, v14, v15

    sub-int v5, v13, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcn/jingling/lib/filters/ImageSelection;->isOutTheCorner(IIIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/jingling/lib/filters/ImageSelection;->mSelection:[I

    move-object/from16 v0, p0

    iget v2, v0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    mul-int/2addr v2, v13

    add-int/2addr v2, v14

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 97
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 102
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/jingling/lib/filters/ImageSelection;->mSelection:[I

    move-object/from16 v0, p0

    iget v2, v0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    mul-int/2addr v2, v13

    add-int/2addr v2, v14

    .line 103
    sub-int v10, v14, v15

    sub-int v11, v13, v16

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v12, p5

    .line 102
    invoke-direct/range {v7 .. v12}, Lcn/jingling/lib/filters/ImageSelection;->getSquareFeatherValue(IIIII)I

    move-result v3

    aput v3, v1, v2

    goto :goto_3

    .line 106
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/jingling/lib/filters/ImageSelection;->mSelection:[I

    move-object/from16 v0, p0

    iget v2, v0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    mul-int/2addr v2, v13

    add-int/2addr v2, v14

    const/4 v3, 0x0

    aput v3, v1, v2

    goto :goto_3

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setPoint(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcn/jingling/lib/filters/ImageSelection;->mSelection:[I

    iget v1, p0, Lcn/jingling/lib/filters/ImageSelection;->mWidth:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aput p3, v0, v1

    .line 72
    return-void
.end method
