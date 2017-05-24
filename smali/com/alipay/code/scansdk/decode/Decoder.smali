.class public Lcom/alipay/code/scansdk/decode/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Landroid/graphics/YuvImage;I)Lcom/alipay/code/scansdk/decode/DecoderResult;
    .locals 5
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "scanMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 14
    if-nez p0, :cond_1

    .line 22
    :cond_0
    :goto_0
    return-object v1

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/alipay/code/scansdk/decode/Decoder;->getDefaultRectForPicture(II)Landroid/graphics/Rect;

    move-result-object v2

    .line 18
    invoke-static {p0, v2, p1}, Lcom/etao/kaka/decode/KakaDecode;->yuvcodeDecode(Landroid/graphics/YuvImage;Landroid/graphics/Rect;I)Lcom/etao/kaka/decode/DecodeResult;

    move-result-object v0

    .line 21
    .local v0, "kakaDecodeResult":Lcom/etao/kaka/decode/DecodeResult;
    const-string v2, "ScanSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Decoder decode kakaDecodeResult "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/code/scansdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/code/scansdk/decode/DecoderResult;

    invoke-direct {v1, v0}, Lcom/alipay/code/scansdk/decode/DecoderResult;-><init>(Lcom/etao/kaka/decode/DecodeResult;)V

    goto :goto_0
.end method

.method public static decodeQr(Landroid/graphics/Bitmap;)Lcom/alipay/code/scansdk/decode/DecoderResult;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 37
    if-nez p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-object v1

    .line 41
    :cond_1
    invoke-static {p0}, Lcom/etao/kaka/decode/KakaDecode;->codeDecodePictureWithQr(Landroid/graphics/Bitmap;)Lcom/etao/kaka/decode/DecodeResult;

    move-result-object v0

    .line 43
    .local v0, "kakaDecodeResult":Lcom/etao/kaka/decode/DecodeResult;
    const-string v2, "ScanSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Decoder decode Qr from bitmap pic kakaDecodeResult "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/code/scansdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/code/scansdk/decode/DecoderResult;

    invoke-direct {v1, v0}, Lcom/alipay/code/scansdk/decode/DecoderResult;-><init>(Lcom/etao/kaka/decode/DecodeResult;)V

    goto :goto_0
.end method

.method public static decodeQr(Ljava/lang/String;)Lcom/alipay/code/scansdk/decode/DecoderResult;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-object v1

    .line 30
    :cond_1
    invoke-static {p0}, Lcom/etao/kaka/decode/KakaDecode;->codeDecodePictureWithQr(Ljava/lang/String;)Lcom/etao/kaka/decode/DecodeResult;

    move-result-object v0

    .line 32
    .local v0, "kakaDecodeResult":Lcom/etao/kaka/decode/DecodeResult;
    const-string v2, "ScanSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Decoder decode Qr pic kakaDecodeResult "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/code/scansdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/code/scansdk/decode/DecoderResult;

    invoke-direct {v1, v0}, Lcom/alipay/code/scansdk/decode/DecoderResult;-><init>(Lcom/etao/kaka/decode/DecodeResult;)V

    goto :goto_0
.end method

.method private static getDefaultRectForPicture(II)Landroid/graphics/Rect;
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 48
    if-lt p0, p1, :cond_0

    .line 49
    sub-int v5, p0, p1

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 50
    .local v3, "x1":I
    const/4 v4, 0x0

    .line 51
    .local v4, "y1":I
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    mul-int/lit8 v2, v5, 0x8

    .line 53
    .local v2, "w1":I
    new-instance v0, Landroid/graphics/Rect;

    add-int v5, v3, v2

    add-int v6, v4, v2

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 54
    .local v0, "rect":Landroid/graphics/Rect;
    const-string v5, "ScanSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Decoder decode default rect "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/code/scansdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 63
    .end local v0    # "rect":Landroid/graphics/Rect;
    .local v1, "rect":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 57
    .end local v1    # "rect":Ljava/lang/Object;
    .end local v2    # "w1":I
    .end local v3    # "x1":I
    .end local v4    # "y1":I
    :cond_0
    sub-int v5, p0, p1

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 58
    .restart local v4    # "y1":I
    const/4 v3, 0x0

    .line 59
    .restart local v3    # "x1":I
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    mul-int/lit8 v2, v5, 0x8

    .line 61
    .restart local v2    # "w1":I
    new-instance v0, Landroid/graphics/Rect;

    add-int v5, v3, v2

    add-int v6, v4, v2

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 62
    .restart local v0    # "rect":Landroid/graphics/Rect;
    const-string v5, "ScanSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Decoder decode default rect (portrate) "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/code/scansdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 63
    .restart local v1    # "rect":Ljava/lang/Object;
    goto :goto_0
.end method
