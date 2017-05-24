.class public Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;
.super Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;
.source "CLeImageDecoder.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "CLeImageDecoder"

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->TAG:Ljava/lang/String;

    .line 294
    const-string v0, "LeCSC"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 295
    const-string v0, "Lejpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 296
    const-string v0, "Leskia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 297
    const-string v0, "LeImage"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 298
    const-string v0, "LeImageJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;-><init>()V

    return-void
.end method

.method private native DecodeBufferHeadC(J[B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;
.end method

.method private native DecodeBufferRotateAsExifHeadC(J[B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;
.end method

.method private native DecodeImageBufferByteC(J[B)[B
.end method

.method private native DecodeImageBufferC(J[BLandroid/graphics/Bitmap;)Z
.end method

.method private native DecodeImageBufferScaleC(J[BIII[B)I
.end method

.method private native DecodeImageScaleDownC(J[BLandroid/graphics/Bitmap;)Z
.end method

.method private native GetDecodeScaleDownHeadC(J[B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;
.end method

.method public static IsJpegBuffer([B)Z
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->IsJpegBufferC([B)Z

    move-result v0

    return v0
.end method

.method private static native IsJpegBufferC([B)Z
.end method

.method private native RotateAsExifC(JZ)V
.end method


# virtual methods
.method protected native ConstructC()J
.end method

.method public DecodeBufferHead([B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->m_handleC:J

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeBufferHeadC(J[B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;

    move-result-object v0

    return-object v0
.end method

.method public DecodeBufferRotateAsExifHead([B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->m_handleC:J

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeBufferRotateAsExifHeadC(J[B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;

    move-result-object v0

    return-object v0
.end method

.method public DecodeImage([BIII[B)I
    .locals 9

    .prologue
    .line 116
    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->m_handleC:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImageBufferScaleC(J[BIII[B)I

    move-result v0

    return v0
.end method

.method public DecodeImage([B)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 65
    .line 66
    invoke-static {p1}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->IsJpegBuffer([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->m_handleC:J

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeBufferHeadC(J[B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;

    move-result-object v0

    .line 70
    iget v1, v0, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v0, v0, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->m_handleC:J

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImageBufferC(J[BLandroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->TAG:Ljava/lang/String;

    const-string v2, "DecodeImageBufferC error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 79
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 80
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public DecodeImageByte([B)[B
    .locals 2

    .prologue
    .line 88
    invoke-static {p1}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->IsJpegBuffer([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->m_handleC:J

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImageBufferByteC(J[B)[B

    move-result-object p1

    .line 96
    :goto_0
    return-object p1

    .line 95
    :cond_0
    sget-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "not jpeg buffer !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public DecodeImageScaleDown([B)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->GetDecodeScaleDownHead([B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;

    move-result-object v0

    .line 143
    iget v1, v0, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v0, v0, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->m_handleC:J

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImageScaleDownC(J[BLandroid/graphics/Bitmap;)Z

    .line 145
    return-object v0
.end method

.method protected native DestructC(J)V
.end method

.method public GetDecodeScaleDownHead([B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->m_handleC:J

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->GetDecodeScaleDownHeadC(J[B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;

    move-result-object v0

    return-object v0
.end method

.method public RotateAsExif(Z)V
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->m_handleC:J

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->RotateAsExifC(JZ)V

    .line 159
    return-void
.end method
