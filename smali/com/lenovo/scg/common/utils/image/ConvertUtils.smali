.class public Lcom/lenovo/scg/common/utils/image/ConvertUtils;
.super Ljava/lang/Object;
.source "ConvertUtils.java"


# static fields
.field private static mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

.field private static mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

.field private static mLeImageEncoder:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;

    invoke-direct {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;-><init>()V

    sput-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageEncoder:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;

    .line 25
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-direct {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;-><init>()V

    sput-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    .line 27
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-direct {v0}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;-><init>()V

    sput-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ColorConvertScale([BLcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;IILcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;II)[B
    .locals 9
    .param p0, "data"    # [B
    .param p1, "srcFormat"    # Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;
    .param p2, "inWidth"    # I
    .param p3, "inHeight"    # I
    .param p4, "outFormat"    # Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;
    .param p5, "outWidth"    # I
    .param p6, "outHeight"    # I

    .prologue
    .line 235
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Init()Z

    .line 236
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ImageColorConvertScaleByte([BLcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;IILcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;II)[B

    move-result-object v8

    .line 237
    .local v8, "output":[B
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Finish()V

    .line 238
    return-object v8
.end method

.method public static JPEG2YUV([BIII)[B
    .locals 10
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .prologue
    .line 99
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Init()Z

    .line 101
    const/4 v5, 0x0

    .line 102
    .local v5, "outData":[B
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeBufferHead([B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;

    move-result-object v6

    .line 104
    .local v6, "head":Lcom/lenovo/scg/LeImageJI/CLeImageHead;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ccc head w = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " head h = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 105
    if-eqz v6, :cond_2

    .line 107
    move-object v1, p0

    .line 108
    .local v1, "rotateData":[B
    invoke-static {p0}, Lcom/lenovo/scg/camera/Exif;->getOrientation([B)I

    move-result v7

    .line 109
    .local v7, "orientation":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exif.getOrientation(data) = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 110
    const/16 v0, 0x5a

    if-ne v7, v0, :cond_0

    .line 111
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v2, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    sget-object v3, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_ROT_90:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    invoke-static {p0, v0, v2, v3}, Lcom/lenovo/scg/camera/CameraUtil;->rotate([BIILcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;)[B

    move-result-object v1

    .line 112
    iget v9, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    .line 113
    .local v9, "temp":I
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    iput v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    .line 114
    iput v9, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    .line 117
    .end local v9    # "temp":I
    :cond_0
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    if-gt p1, v0, :cond_1

    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    if-gt p2, v0, :cond_1

    .line 118
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v5, v0, [B

    .line 120
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    move v2, p3

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImage([BIII[B)I

    move-result v8

    .line 121
    .local v8, "ret":I
    const-string/jumbo v0, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeImage ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v1    # "rotateData":[B
    .end local v7    # "orientation":I
    .end local v8    # "ret":I
    :goto_0
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Finish()V

    .line 132
    return-object v5

    .line 123
    .restart local v1    # "rotateData":[B
    .restart local v7    # "orientation":I
    :cond_1
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v2, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v5, v0, [B

    .line 125
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    iget v3, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    iget v4, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImage([BIII[B)I

    goto :goto_0

    .line 128
    .end local v1    # "rotateData":[B
    .end local v7    # "orientation":I
    :cond_2
    const-string v0, "mLeImageDecoder.DecodeBufferHead(data), return null"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static JPEG2YUVNoRotate([BIII)[B
    .locals 8
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .prologue
    .line 61
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Init()Z

    .line 63
    const/4 v5, 0x0

    .line 64
    .local v5, "outData":[B
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeBufferHead([B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;

    move-result-object v6

    .line 65
    .local v6, "head":Lcom/lenovo/scg/LeImageJI/CLeImageHead;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "head w = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "head h = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 67
    if-eqz v6, :cond_1

    .line 68
    move-object v1, p0

    .line 69
    .local v1, "rotateData":[B
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    if-gt p1, v0, :cond_0

    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    if-gt p2, v0, :cond_0

    .line 70
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v5, v0, [B

    .line 71
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    move v2, p3

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImage([BIII[B)I

    move-result v7

    .line 72
    .local v7, "ret":I
    const-string/jumbo v0, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeImage ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v1    # "rotateData":[B
    .end local v7    # "ret":I
    :goto_0
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Finish()V

    .line 82
    return-object v5

    .line 74
    .restart local v1    # "rotateData":[B
    :cond_0
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v2, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v5, v0, [B

    .line 75
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    iget v3, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v4, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImage([BIII[B)I

    goto :goto_0

    .line 78
    .end local v1    # "rotateData":[B
    :cond_1
    const-string v0, "mLeImageDecoder.DecodeBufferHead(data), return null"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static JPEG2YUVWithBuffer([BIIIZ)Ljava/util/ArrayList;
    .locals 9
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "bNeedRotate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIIZ)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-direct {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;-><init>()V

    .line 138
    .local v0, "ImageDecoder":Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;
    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Init()Z

    .line 140
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v6, "arrData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v5, 0x0

    .line 143
    .local v5, "outData":[B
    move-object v1, p0

    .line 145
    .local v1, "rotateData":[B
    invoke-virtual {v0, p0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeBufferHead([B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;

    move-result-object v7

    .line 146
    .local v7, "head":Lcom/lenovo/scg/LeImageJI/CLeImageHead;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "head w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " head h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 147
    if-eqz v7, :cond_1

    .line 162
    iget v2, v7, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    if-gt p1, v2, :cond_0

    iget v2, v7, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    if-gt p2, v2, :cond_0

    .line 163
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v5, v2, [B

    move v2, p3

    move v3, p1

    move v4, p2

    .line 165
    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImage([BIII[B)I

    move-result v8

    .line 166
    .local v8, "ret":I
    const-string/jumbo v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeImage ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v8    # "ret":I
    :goto_0
    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Finish()V

    .line 177
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    return-object v6

    .line 168
    :cond_0
    iget v2, v7, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v3, v7, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v5, v2, [B

    .line 170
    iget v3, v7, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v4, v7, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImage([BIII[B)I

    goto :goto_0

    .line 173
    :cond_1
    const-string v2, "mLeImageDecoder.DecodeBufferHead(data), return null"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static RGBA2JPEG([BII)[B
    .locals 7
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 212
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageEncoder:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->Init()Z

    .line 213
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageEncoder:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;

    sget v2, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->RGBA8888:I

    sget-object v5, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;->jpeg:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->EncodeBuffer([BIIILcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;)[B

    move-result-object v6

    .line 214
    .local v6, "output":[B
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageEncoder:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->Finish()V

    .line 216
    return-object v6
.end method

.method public static YUV2JPEG([BII)[B
    .locals 7
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 42
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageEncoder:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->Init()Z

    .line 43
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageEncoder:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;

    sget v2, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    sget-object v5, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;->jpeg:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->EncodeBuffer([BIIILcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;)[B

    move-result-object v6

    .line 44
    .local v6, "output":[B
    sget-object v0, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageEncoder:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->Finish()V

    .line 46
    return-object v6
.end method

.method public static getJPEGHeaderSize([B)[I
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 185
    sget-object v2, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v2}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Init()Z

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "size":[I
    sget-object v2, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeBufferHead([B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;

    move-result-object v0

    .line 189
    .local v0, "head":Lcom/lenovo/scg/LeImageJI/CLeImageHead;
    if-eqz v0, :cond_0

    .line 190
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 191
    const/4 v2, 0x0

    iget v3, v0, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    aput v3, v1, v2

    .line 192
    const/4 v2, 0x1

    iget v3, v0, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    aput v3, v1, v2

    .line 194
    :cond_0
    sget-object v2, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v2}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Finish()V

    .line 195
    return-object v1
.end method
