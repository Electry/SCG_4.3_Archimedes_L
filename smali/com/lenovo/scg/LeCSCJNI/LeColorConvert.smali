.class public Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;
.super Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;
.source "LeColorConvert.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    const-string v0, "LeCSC"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 272
    const-string v0, "LeCSCJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;-><init>()V

    return-void
.end method

.method private native CharBufToScaledBitmapC(JJIIIILandroid/graphics/Bitmap;I)V
.end method

.method private native ColorConvert(J[BIIIIZ)[I
.end method

.method private native ColorConvertBitmapC(J[BILandroid/graphics/Bitmap;I)V
.end method

.method private native ColorConvertBitmapToYUVC(JLandroid/graphics/Bitmap;II)[B
.end method

.method private native ColorConvertByte(J[BIIII)[B
.end method

.method private native ColorConvertConStruct()J
.end method

.method private native ColorConvertDestruct(J)V
.end method

.method private native ColorConvertScaleBitmapC(J[BIIILandroid/graphics/Bitmap;I)V
.end method

.method private native ColorConvertToBitmapInt(J[BIIII)[I
.end method

.method private native ColorConvertToScaleByte(J[BIIIIII)[B
.end method

.method private native ColorConvertToScaleCharHandle(J[BIIIIII)J
.end method

.method private native SetClipRectC(JIIII)I
.end method


# virtual methods
.method public CharBufToScaledBitmapC(JIIILcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;Landroid/graphics/Bitmap;)V
    .locals 13

    .prologue
    .line 45
    iget-wide v2, p0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->m_handleC:J

    invoke-virtual/range {p6 .. p6}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v9

    sget-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_RGBA8888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v11

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v11}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->CharBufToScaledBitmapC(JJIIIILandroid/graphics/Bitmap;I)V

    .line 55
    return-void
.end method

.method public ColorConvertBitmapToYUV(Landroid/graphics/Bitmap;Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;)[B
    .locals 7

    .prologue
    .line 29
    sget-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_RGBA8888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v5

    .line 30
    invoke-virtual {p2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v6

    .line 31
    iget-wide v2, p0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->m_handleC:J

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ColorConvertBitmapToYUVC(JLandroid/graphics/Bitmap;II)[B

    move-result-object v0

    return-object v0
.end method

.method protected ConstructC()J
    .locals 2

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ColorConvertConStruct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->m_handleC:J

    .line 278
    iget-wide v0, p0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->m_handleC:J

    return-wide v0
.end method

.method protected DestructC(J)V
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->m_handleC:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ColorConvertDestruct(J)V

    .line 284
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->m_handleC:J

    .line 285
    return-void
.end method

.method public ImageColorConvert([BLcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;IILcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;)[I
    .locals 10

    .prologue
    .line 74
    invoke-virtual {p2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v5

    .line 75
    invoke-virtual {p5}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v8

    .line 76
    sget-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;->CPU_littleEndian:Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;->GetValue()Z

    move-result v9

    .line 78
    iget-wide v2, p0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->m_handleC:J

    move-object v1, p0

    move-object v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v9}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ColorConvert(J[BIIIIZ)[I

    move-result-object v0

    return-object v0
.end method

.method public ImageColorConvertByte([BLcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;IILcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;)[B
    .locals 9

    .prologue
    .line 90
    invoke-virtual {p2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v5

    .line 91
    invoke-virtual {p5}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v8

    .line 93
    iget-wide v2, p0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->m_handleC:J

    move-object v1, p0

    move-object v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ColorConvertByte(J[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public ImageColorConvertScaleByte([BLcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;IILcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;II)[B
    .locals 11

    .prologue
    .line 106
    invoke-virtual {p2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v5

    .line 107
    invoke-virtual/range {p5 .. p5}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v8

    .line 108
    iget-wide v2, p0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->m_handleC:J

    move-object v1, p0

    move-object v4, p1

    move v6, p3

    move v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ColorConvertToScaleByte(J[BIIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public ImageColorConvertScaleCharHandle([BLcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;IILcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;II)J
    .locals 11

    .prologue
    .line 144
    invoke-virtual {p2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v5

    .line 145
    invoke-virtual/range {p5 .. p5}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v8

    .line 146
    iget-wide v2, p0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->m_handleC:J

    move-object v1, p0

    move-object v4, p1

    move v6, p3

    move v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ColorConvertToScaleCharHandle(J[BIIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public ImageConvertToBitmap([BLcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;Landroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    .line 16
    invoke-virtual {p2}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v5

    .line 17
    sget-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_RGBA8888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v7

    .line 18
    iget-wide v2, p0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->m_handleC:J

    move-object v1, p0

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ColorConvertBitmapC(J[BILandroid/graphics/Bitmap;I)V

    .line 19
    return-void
.end method

.method public ImageConvertToScaleBitmap([BIILcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;Landroid/graphics/Bitmap;)V
    .locals 10

    .prologue
    .line 23
    invoke-virtual {p4}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v7

    .line 24
    sget-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_RGBA8888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->ordinal()I

    move-result v9

    .line 25
    iget-wide v2, p0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->m_handleC:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ColorConvertScaleBitmapC(J[BIIILandroid/graphics/Bitmap;I)V

    .line 26
    return-void
.end method

.method public SetClipRect(IIII)I
    .locals 8

    .prologue
    .line 158
    iget-wide v2, p0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->m_handleC:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->SetClipRectC(JIIII)I

    move-result v0

    return v0
.end method
