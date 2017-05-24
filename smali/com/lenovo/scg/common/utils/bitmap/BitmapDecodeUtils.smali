.class public Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;
.super Ljava/lang/Object;
.source "BitmapDecodeUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DECODETYPE_FULL:I = 0x2

.field public static final DECODETYPE_THUMBNAIL:I = 0x1

.field private static final MAXSIZE_THUMBNAIL:I = 0x7d0

.field private static final MAX_PIXEL_COUNT:I = 0x1e8480


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeSampleSize(F)I
    .locals 3
    .param p0, "scale"    # F

    .prologue
    .line 267
    sget-boolean v1, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 268
    :cond_0
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p0

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 269
    .local v0, "initialSize":I
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->nextPowerOf2(I)I

    move-result v1

    :goto_0
    return v1

    :cond_1
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method private static computeSampleSizeLarger(F)I
    .locals 3
    .param p0, "scale"    # F

    .prologue
    const/4 v1, 0x1

    .line 259
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p0

    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    float-to-int v0, v2

    .line 260
    .local v0, "initialSize":I
    if-gt v0, v1, :cond_0

    .line 262
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static decodeByteArray([BIII)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "type"    # I

    .prologue
    .line 173
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 174
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 175
    invoke-static {p0, p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 176
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 177
    .local v7, "w":I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 178
    .local v1, "h":I
    if-lez v7, :cond_0

    if-gtz v1, :cond_2

    .line 179
    :cond_0
    const/4 v4, 0x0

    .line 250
    :cond_1
    :goto_0
    return-object v4

    .line 182
    :cond_2
    const-string v8, "decodeByteArray"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "w : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " h : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v4, 0x0

    .line 184
    .local v4, "result":Landroid/graphics/Bitmap;
    const/4 v8, 0x1

    if-ne p3, v8, :cond_6

    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v8, 0x1

    :try_start_0
    invoke-static {p0, p1, p2, v8}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    :goto_1
    if-nez v0, :cond_4

    .line 194
    const/4 v8, 0x0

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 195
    invoke-static {p0, p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 196
    if-nez v4, :cond_3

    .line 197
    const/4 v4, 0x0

    goto :goto_0

    .line 199
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 200
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 201
    .local v6, "size":I
    const/4 v8, 0x1

    invoke-static {v4, v6, v8}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 205
    .end local v6    # "size":I
    :cond_4
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 206
    const/4 v8, 0x1

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 207
    const/4 v8, 0x1

    iput v8, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 208
    const/4 v8, 0x0

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 209
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 210
    .local v3, "rect":Landroid/graphics/Rect;
    if-ge v7, v1, :cond_5

    .line 211
    const/4 v8, 0x0

    iput v8, v3, Landroid/graphics/Rect;->left:I

    .line 212
    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 213
    const/4 v8, 0x0

    iput v8, v3, Landroid/graphics/Rect;->top:I

    .line 214
    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 230
    :goto_2
    invoke-virtual {v0, v3, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 231
    if-eqz v4, :cond_1

    .line 232
    const-string/jumbo v8, "wwf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "net DECODETYPE_THUMBNAIL width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " height = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 225
    :cond_5
    const/4 v8, 0x0

    iput v8, v3, Landroid/graphics/Rect;->top:I

    .line 226
    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 227
    sub-int v8, v7, v1

    div-int/lit8 v8, v8, 0x2

    iput v8, v3, Landroid/graphics/Rect;->left:I

    .line 228
    add-int v8, v7, v1

    div-int/lit8 v8, v8, 0x2

    iput v8, v3, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 234
    .end local v0    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_6
    const/4 v8, 0x2

    if-ne p3, v8, :cond_8

    .line 235
    const/high16 v8, 0x44fa0000    # 2000.0f

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 236
    .local v5, "scale":F
    invoke-static {v5}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->computeSampleSizeLarger(F)I

    move-result v8

    iput v8, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 239
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v8, v7, v8

    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v9, v1, v9

    mul-int/2addr v8, v9

    const v9, 0x1e8480

    if-le v8, v9, :cond_7

    .line 240
    const v8, 0x49f42400    # 2000000.0f

    mul-int v9, v7, v1

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v8

    invoke-static {v8}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->computeSampleSize(F)I

    move-result v8

    iput v8, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 242
    :cond_7
    const/4 v8, 0x0

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 243
    invoke-static {p0, p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 244
    if-eqz v4, :cond_1

    .line 245
    const-string/jumbo v8, "wwf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "net DECODETYPE_FULL width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " height = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 248
    .end local v5    # "scale":F
    :cond_8
    sget-boolean v8, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 188
    .restart local v0    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :catch_0
    move-exception v8

    goto/16 :goto_1
.end method

.method public static decodeByteArray([BIIIII)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "type"    # I
    .param p4, "maxW"    # I
    .param p5, "maxH"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 129
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 130
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 131
    invoke-static {p0, p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 132
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 133
    .local v5, "w":I
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 134
    .local v0, "h":I
    if-lez v5, :cond_0

    if-gtz v0, :cond_2

    .line 135
    :cond_0
    const/4 v2, 0x0

    .line 169
    :cond_1
    :goto_0
    return-object v2

    .line 138
    :cond_2
    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 139
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 141
    iput v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 144
    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    if-eqz p4, :cond_3

    if-eqz p5, :cond_3

    .line 145
    div-int v6, v5, p4

    div-int v7, v0, p5

    add-int/2addr v6, v7

    div-int/lit8 v3, v6, 0x2

    .line 146
    .local v3, "sampleSize":I
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 149
    .end local v3    # "sampleSize":I
    :cond_3
    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 151
    const-string v6, "decodeByteArray"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "w : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " h : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, "result":Landroid/graphics/Bitmap;
    const/4 v6, 0x2

    if-ne p3, v6, :cond_5

    .line 154
    const/high16 v6, 0x44fa0000    # 2000.0f

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 155
    .local v4, "scale":F
    invoke-static {v4}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->computeSampleSizeLarger(F)I

    move-result v6

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 158
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v5, v6

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v7, v0, v7

    mul-int/2addr v6, v7

    mul-int v7, p4, p5

    if-le v6, v7, :cond_4

    .line 159
    mul-int v6, p4, p5

    int-to-float v6, v6

    mul-int v7, v5, v0

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->computeSampleSize(F)I

    move-result v6

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 161
    :cond_4
    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 162
    invoke-static {p0, p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 163
    if-eqz v2, :cond_1

    .line 164
    const-string/jumbo v6, "wwf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "net DECODETYPE_FULL width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 167
    .end local v4    # "scale":F
    :cond_5
    sget-boolean v6, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
.end method

.method public static decodeFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 29
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 30
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 31
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 32
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 33
    .local v8, "w":I
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 34
    .local v2, "h":I
    if-lez v8, :cond_0

    if-gtz v2, :cond_2

    .line 35
    :cond_0
    const/4 v5, 0x0

    .line 114
    :cond_1
    :goto_0
    return-object v5

    .line 37
    :cond_2
    const-string/jumbo v9, "wwf"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "options.inJustDecodeBounds == true w = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " h = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v5, 0x0

    .line 39
    .local v5, "result":Landroid/graphics/Bitmap;
    const/4 v9, 0x1

    if-ne p1, v9, :cond_7

    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v9, 0x1

    :try_start_0
    invoke-static {p0, v9}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_1
    if-nez v0, :cond_4

    .line 50
    const-string/jumbo v9, "wwf"

    const-string v10, "BitmapRegionDecoder.newInstance == null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v9, 0x0

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 53
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 54
    if-nez v5, :cond_3

    .line 55
    const-string/jumbo v9, "wwf"

    const-string v10, "BitmapFactory.decodeFile == null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v5, 0x0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "BitmapDecodeUtils decoder error:%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 58
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 59
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 60
    .local v7, "size":I
    const/4 v9, 0x1

    invoke-static {v5, v7, v9}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 64
    .end local v7    # "size":I
    :cond_4
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 65
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 66
    const/4 v9, 0x1

    iput v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 67
    const/4 v9, 0x0

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 68
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 69
    .local v4, "rect":Landroid/graphics/Rect;
    if-ge v8, v2, :cond_6

    .line 70
    const/4 v9, 0x0

    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 71
    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 72
    const/4 v9, 0x0

    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 73
    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 89
    :goto_2
    invoke-virtual {v0, v4, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 90
    if-eqz v5, :cond_5

    .line 91
    const-string/jumbo v9, "wwf"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file decoder.decodeRegion width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_5
    :goto_3
    if-nez v5, :cond_1

    .line 112
    const-string/jumbo v9, "wwf"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "can not decode file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 84
    .restart local v0    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v4    # "rect":Landroid/graphics/Rect;
    :cond_6
    const/4 v9, 0x0

    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 85
    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 86
    sub-int v9, v8, v2

    div-int/lit8 v9, v9, 0x2

    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 87
    add-int v9, v8, v2

    div-int/lit8 v9, v9, 0x2

    iput v9, v4, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 93
    .end local v0    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_7
    const/4 v9, 0x2

    if-ne p1, v9, :cond_a

    .line 94
    const/high16 v9, 0x44fa0000    # 2000.0f

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    div-float v6, v9, v10

    .line 95
    .local v6, "scale":F
    invoke-static {v6}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->computeSampleSizeLarger(F)I

    move-result v9

    iput v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 98
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v9, v8, v9

    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v10, v2, v10

    mul-int/2addr v9, v10

    const v10, 0x1e8480

    if-le v9, v10, :cond_8

    .line 99
    const v9, 0x49f42400    # 2000000.0f

    mul-int v10, v8, v2

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v9}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v9

    invoke-static {v9}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->computeSampleSize(F)I

    move-result v9

    iput v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 101
    :cond_8
    const/4 v9, 0x0

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 103
    if-eqz v5, :cond_9

    .line 104
    const-string/jumbo v9, "wwf"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file DECODETYPE_FULL width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 106
    :cond_9
    const-string/jumbo v9, "wwf"

    const-string v10, "file DECODETYPE_FULL BitmapFactory.decodeFile == null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 109
    .end local v6    # "scale":F
    :cond_a
    sget-boolean v9, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->$assertionsDisabled:Z

    if-nez v9, :cond_5

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 254
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 317
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 318
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 319
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 321
    :cond_0
    return-object v0
.end method

.method private static nextPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 285
    if-lez p0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 286
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 287
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 288
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 289
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 290
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 291
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 292
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private static prevPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 276
    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 277
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method private static resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "size"    # I
    .param p2, "recycle"    # Z

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 296
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 297
    .local v6, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 298
    .local v1, "h":I
    if-ne v6, p1, :cond_0

    if-ne v1, p1, :cond_0

    .line 313
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 302
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    int-to-float v8, p1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 304
    .local v4, "scale":F
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {p1, p1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 305
    .local v5, "target":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 306
    .local v7, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 307
    .local v2, "height":I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 308
    .local v0, "canvas":Landroid/graphics/Canvas;
    sub-int v8, p1, v7

    int-to-float v8, v8

    div-float/2addr v8, v11

    sub-int v9, p1, v2

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 309
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 310
    new-instance v3, Landroid/graphics/Paint;

    const/4 v8, 0x6

    invoke-direct {v3, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 311
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v10, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 312
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v5

    .line 313
    goto :goto_0
.end method
