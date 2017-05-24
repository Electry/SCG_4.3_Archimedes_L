.class Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MiniCameraExifOutputStream.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final EXIF_HEADER:I = 0x45786966

.field private static final MAX_EXIF_SIZE:I = 0xffff

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ExifOutputStream"

.field private static final TAG_SIZE:S = 0xcs

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_HEADER_SIZE:S = 0x8s

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

.field private final mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

.field private mSingleByteArray:[B

.field private mState:I


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;)V
    .locals 2
    .param p1, "ou"    # Ljava/io/OutputStream;
    .param p2, "iRef"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    .prologue
    .line 110
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mState:I

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mSingleByteArray:[B

    .line 105
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 111
    iput-object p2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    .line 112
    return-void
.end method

.method private calculateAllOffset()I
    .locals 12

    .prologue
    .line 445
    const/16 v6, 0x8

    .line 446
    .local v6, "offset":I
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v3

    .line 447
    .local v3, "ifd0":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    invoke-direct {p0, v3, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->calculateOffsetOfIfd(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;I)I

    move-result v6

    .line 448
    sget v9, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v3, v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getTag(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue(I)Z

    .line 450
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v0

    .line 451
    .local v0, "exifIfd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    invoke-direct {p0, v0, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->calculateOffsetOfIfd(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;I)I

    move-result v6

    .line 453
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v5

    .line 454
    .local v5, "interIfd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-eqz v5, :cond_0

    .line 455
    sget v9, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getTag(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue(I)Z

    .line 456
    invoke-direct {p0, v5, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->calculateOffsetOfIfd(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;I)I

    move-result v6

    .line 459
    :cond_0
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v1

    .line 460
    .local v1, "gpsIfd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-eqz v1, :cond_1

    .line 461
    sget v9, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_IFD:I

    invoke-static {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v3, v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getTag(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue(I)Z

    .line 462
    invoke-direct {p0, v1, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->calculateOffsetOfIfd(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;I)I

    move-result v6

    .line 465
    :cond_1
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v4

    .line 466
    .local v4, "ifd1":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-eqz v4, :cond_2

    .line 467
    invoke-virtual {v3, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->setOffsetToNextIfd(I)V

    .line 468
    invoke-direct {p0, v4, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->calculateOffsetOfIfd(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;I)I

    move-result v6

    .line 472
    :cond_2
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->hasCompressedThumbnail()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 473
    sget v9, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v4, v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getTag(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue(I)Z

    .line 474
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getCompressedThumbnail()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v6, v9

    .line 484
    :cond_3
    :goto_0
    return v6

    .line 475
    :cond_4
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->hasUncompressedStrip()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 476
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getStripCount()I

    move-result v8

    .line 477
    .local v8, "stripCount":I
    new-array v7, v8, [J

    .line 478
    .local v7, "offsets":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getStripCount()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 479
    int-to-long v10, v6

    aput-wide v10, v7, v2

    .line 480
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v9, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getStrip(I)[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v6, v9

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 482
    :cond_5
    sget v9, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v4, v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getTag(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([J)Z

    goto :goto_0
.end method

.method private calculateOffsetOfIfd(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;I)I
    .locals 7
    .param p1, "ifd"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    .param p2, "offset"    # I

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getTagCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0xc

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x4

    add-int/2addr p2, v5

    .line 334
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getAllTags()[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v4

    .line 335
    .local v4, "tags":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    move-object v0, v4

    .local v0, "arr$":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 336
    .local v3, "tag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataSize()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    .line 337
    invoke-virtual {v3, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setOffset(I)V

    .line 338
    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataSize()I

    move-result v5

    add-int/2addr p2, v5

    .line 335
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v3    # "tag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_1
    return p2
.end method

.method private createRequiredIfdAndTag()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v7

    .line 347
    .local v7, "ifd0":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-nez v7, :cond_0

    .line 348
    new-instance v7, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    .end local v7    # "ifd0":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    const/4 v15, 0x0

    invoke-direct {v7, v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;-><init>(I)V

    .line 349
    .restart local v7    # "ifd0":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v15, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->addIfdData(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;)V

    .line 351
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    sget v16, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->buildUninitializedTag(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v3

    .line 352
    .local v3, "exifOffsetTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v3, :cond_1

    .line 353
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 355
    :cond_1
    invoke-virtual {v7, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 358
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v2

    .line 359
    .local v2, "exifIfd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-nez v2, :cond_2

    .line 360
    new-instance v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    .end local v2    # "exifIfd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    const/4 v15, 0x2

    invoke-direct {v2, v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;-><init>(I)V

    .line 361
    .restart local v2    # "exifIfd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v15, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->addIfdData(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;)V

    .line 365
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v4

    .line 366
    .local v4, "gpsIfd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-eqz v4, :cond_4

    .line 367
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    sget v16, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_IFD:I

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->buildUninitializedTag(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v5

    .line 368
    .local v5, "gpsOffsetTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v5, :cond_3

    .line 369
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_IFD:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 371
    :cond_3
    invoke-virtual {v7, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 375
    .end local v5    # "gpsOffsetTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v9

    .line 376
    .local v9, "interIfd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-eqz v9, :cond_6

    .line 377
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    sget v16, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->buildUninitializedTag(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v10

    .line 378
    .local v10, "interOffsetTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v10, :cond_5

    .line 379
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 381
    :cond_5
    invoke-virtual {v2, v10}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 384
    .end local v10    # "interOffsetTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v8

    .line 387
    .local v8, "ifd1":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->hasCompressedThumbnail()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 389
    if-nez v8, :cond_7

    .line 390
    new-instance v8, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    .end local v8    # "ifd1":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    const/4 v15, 0x1

    invoke-direct {v8, v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;-><init>(I)V

    .line 391
    .restart local v8    # "ifd1":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v15, v8}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->addIfdData(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;)V

    .line 394
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    sget v16, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->buildUninitializedTag(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v13

    .line 395
    .local v13, "offsetTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v13, :cond_8

    .line 396
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 399
    :cond_8
    invoke-virtual {v8, v13}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 400
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    sget v16, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->buildUninitializedTag(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v11

    .line 401
    .local v11, "lengthTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v11, :cond_9

    .line 402
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 405
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getCompressedThumbnail()[B

    move-result-object v15

    array-length v15, v15

    invoke-virtual {v11, v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue(I)Z

    .line 406
    invoke-virtual {v8, v11}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 409
    sget v15, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->removeTag(S)V

    .line 410
    sget v15, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->removeTag(S)V

    .line 442
    .end local v11    # "lengthTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .end local v13    # "offsetTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_a
    :goto_0
    return-void

    .line 411
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->hasUncompressedStrip()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 412
    if-nez v8, :cond_c

    .line 413
    new-instance v8, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    .end local v8    # "ifd1":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    const/4 v15, 0x1

    invoke-direct {v8, v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;-><init>(I)V

    .line 414
    .restart local v8    # "ifd1":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v15, v8}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->addIfdData(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;)V

    .line 416
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getStripCount()I

    move-result v14

    .line 417
    .local v14, "stripCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    sget v16, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->buildUninitializedTag(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v13

    .line 418
    .restart local v13    # "offsetTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v13, :cond_d

    .line 419
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 421
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    sget v16, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->buildUninitializedTag(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v11

    .line 422
    .restart local v11    # "lengthTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v11, :cond_e

    .line 423
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 425
    :cond_e
    new-array v12, v14, [J

    .line 426
    .local v12, "lengths":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getStripCount()I

    move-result v15

    if-ge v6, v15, :cond_f

    .line 427
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v15, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getStrip(I)[B

    move-result-object v15

    array-length v15, v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    aput-wide v16, v12, v6

    .line 426
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 429
    :cond_f
    invoke-virtual {v11, v12}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([J)Z

    .line 430
    invoke-virtual {v8, v13}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 431
    invoke-virtual {v8, v11}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 433
    sget v15, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->removeTag(S)V

    .line 434
    sget v15, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->removeTag(S)V

    goto/16 :goto_0

    .line 435
    .end local v6    # "i":I
    .end local v11    # "lengthTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .end local v12    # "lengths":[J
    .end local v13    # "offsetTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .end local v14    # "stripCount":I
    :cond_10
    if-eqz v8, :cond_a

    .line 437
    sget v15, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->removeTag(S)V

    .line 438
    sget v15, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->removeTag(S)V

    .line 439
    sget v15, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->removeTag(S)V

    .line 440
    sget v15, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->removeTag(S)V

    goto/16 :goto_0
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 3
    .param p1, "requestByteCount"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 130
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v0, p1, v2

    .line 131
    .local v0, "byteNeeded":I
    if-le p4, v0, :cond_0

    move v1, v0

    .line 132
    .local v1, "byteToRead":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2, p3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 133
    return v1

    .end local v1    # "byteToRead":I
    :cond_0
    move v1, p4

    .line 131
    goto :goto_0
.end method

.method private stripNullValueTags(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "data"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v1, "nullTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;>;"
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getAllTags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 270
    .local v2, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getTagId()S

    move-result v3

    invoke-static {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->isOffsetTag(S)Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getTagId()S

    move-result v3

    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getIfd()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->removeTag(SI)V

    .line 272
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    .end local v2    # "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_1
    return-object v1
.end method

.method private writeAllTags(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;)V
    .locals 6
    .param p1, "dataOutputStream"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 289
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->writeIfd(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;)V

    .line 290
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->writeIfd(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;)V

    .line 291
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v2

    .line 292
    .local v2, "interoperabilityIfd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-eqz v2, :cond_0

    .line 293
    invoke-direct {p0, v2, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->writeIfd(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;)V

    .line 295
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v0

    .line 296
    .local v0, "gpsIfd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-eqz v0, :cond_1

    .line 297
    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->writeIfd(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;)V

    .line 299
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v1

    .line 300
    .local v1, "ifd1":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-eqz v1, :cond_2

    .line 301
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->writeIfd(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;)V

    .line 303
    :cond_2
    return-void
.end method

.method private writeExifData()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    if-nez v5, :cond_1

    .line 265
    :cond_0
    return-void

    .line 240
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-direct {p0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->stripNullValueTags(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;)Ljava/util/ArrayList;

    move-result-object v3

    .line 241
    .local v3, "nullTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;>;"
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->createRequiredIfdAndTag()V

    .line 242
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->calculateAllOffset()I

    move-result v1

    .line 243
    .local v1, "exifSize":I
    add-int/lit8 v5, v1, 0x8

    const v6, 0xffff

    if-le v5, v6, :cond_2

    .line 244
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Exif header is too large (>64Kb)"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 246
    :cond_2
    new-instance v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 247
    .local v0, "dataOutputStream":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 248
    const/16 v5, -0x1f

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeShort(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 249
    add-int/lit8 v5, v1, 0x8

    int-to-short v5, v5

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeShort(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 250
    const v5, 0x45786966

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeInt(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 251
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeShort(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 252
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v6, :cond_3

    .line 253
    const/16 v5, 0x4d4d

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeShort(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 257
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 258
    const/16 v5, 0x2a

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeShort(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 259
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeInt(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 260
    invoke-direct {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->writeAllTags(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;)V

    .line 261
    invoke-direct {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->writeThumbnail(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;)V

    .line 262
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 263
    .local v4, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->addTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    goto :goto_1

    .line 255
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_3
    const/16 v5, 0x4949

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeShort(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    goto :goto_0
.end method

.method private writeIfd(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;)V
    .locals 9
    .param p1, "ifd"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    .param p2, "dataOutputStream"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    .line 306
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getAllTags()[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v6

    .line 307
    .local v6, "tags":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    array-length v7, v6

    int-to-short v7, v7

    invoke-virtual {p2, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeShort(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 308
    move-object v0, v6

    .local v0, "arr$":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 309
    .local v5, "tag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    invoke-virtual {v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getTagId()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeShort(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 310
    invoke-virtual {v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataType()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeShort(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 311
    invoke-virtual {v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeInt(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 315
    invoke-virtual {v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataSize()I

    move-result v7

    if-le v7, v8, :cond_1

    .line 316
    invoke-virtual {v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getOffset()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeInt(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 308
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_1
    invoke-static {v5, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->writeTagValue(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;)V

    .line 319
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataSize()I

    move-result v7

    rsub-int/lit8 v4, v7, 0x4

    .local v4, "n":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 320
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->write(I)V

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    .end local v1    # "i":I
    .end local v4    # "n":I
    .end local v5    # "tag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_2
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getOffsetToNextIfd()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeInt(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 325
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    .line 326
    .restart local v5    # "tag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    invoke-virtual {v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataSize()I

    move-result v7

    if-le v7, v8, :cond_3

    .line 327
    invoke-static {v5, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->writeTagValue(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;)V

    .line 325
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 330
    .end local v5    # "tag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_4
    return-void
.end method

.method static writeTagValue(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;)V
    .locals 6
    .param p0, "tag"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .param p1, "dataOutputStream"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 488
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataType()S

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 523
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 490
    :pswitch_1
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getStringByte()[B

    move-result-object v0

    .line 491
    .local v0, "buf":[B
    array-length v3, v0

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 492
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-byte v5, v0, v3

    .line 493
    invoke-virtual {p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->write([B)V

    .line 496
    invoke-virtual {p1, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->write(I)V

    goto :goto_0

    .line 501
    .end local v0    # "buf":[B
    :pswitch_2
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 502
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeInt(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 507
    .end local v1    # "i":I
    .end local v2    # "n":I
    :pswitch_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 508
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getRational(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeRational(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 513
    .end local v1    # "i":I
    .end local v2    # "n":I
    :pswitch_4
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v3

    new-array v0, v3, [B

    .line 514
    .restart local v0    # "buf":[B
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getBytes([B)V

    .line 515
    invoke-virtual {p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 518
    .end local v0    # "buf":[B
    :pswitch_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_3
    if-ge v1, v2, :cond_0

    .line 519
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-short v3, v3

    invoke-virtual {p1, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeShort(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private writeThumbnail(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;)V
    .locals 2
    .param p1, "dataOutputStream"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->hasCompressedThumbnail()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getCompressedThumbnail()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->write([B)V

    .line 286
    :cond_0
    return-void

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->hasUncompressedStrip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->write([B)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getExifData()Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    return-object v0
.end method

.method protected setExifData(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;)V
    .locals 0
    .param p1, "exifData"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mExifData:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    .line 120
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mSingleByteArray:[B

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mSingleByteArray:[B

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->write([B)V

    .line 223
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->write([BII)V

    .line 231
    return-void
.end method

.method public write([BII)V
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v9, 0xffff

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 143
    :goto_0
    iget v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mByteToSkip:I

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mByteToCopy:I

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mState:I

    if-eq v4, v6, :cond_b

    :cond_0
    if-lez p3, :cond_b

    .line 144
    iget v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mByteToSkip:I

    if-lez v4, :cond_1

    .line 145
    iget v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mByteToSkip:I

    if-le p3, v4, :cond_4

    iget v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mByteToSkip:I

    .line 146
    .local v1, "byteToProcess":I
    :goto_1
    sub-int/2addr p3, v1

    .line 147
    iget v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mByteToSkip:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mByteToSkip:I

    .line 148
    add-int/2addr p2, v1

    .line 150
    .end local v1    # "byteToProcess":I
    :cond_1
    iget v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mByteToCopy:I

    if-lez v4, :cond_2

    .line 151
    iget v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mByteToCopy:I

    if-le p3, v4, :cond_5

    iget v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mByteToCopy:I

    .line 152
    .restart local v1    # "byteToProcess":I
    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 153
    sub-int/2addr p3, v1

    .line 154
    iget v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mByteToCopy:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mByteToCopy:I

    .line 155
    add-int/2addr p2, v1

    .line 157
    .end local v1    # "byteToProcess":I
    :cond_2
    if-nez p3, :cond_6

    .line 212
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v1, p3

    .line 145
    goto :goto_1

    :cond_5
    move v1, p3

    .line 151
    goto :goto_2

    .line 160
    :cond_6
    iget v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mState:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    invoke-direct {p0, v6, p1, p2, p3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    .line 163
    .local v0, "byteRead":I
    add-int/2addr p2, v0

    .line 164
    sub-int/2addr p3, v0

    .line 165
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-lt v4, v6, :cond_3

    .line 168
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 169
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const/16 v5, -0x28

    if-eq v4, v5, :cond_7

    .line 170
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Not a valid jpeg image, cannot write exif"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 172
    :cond_7
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 173
    const/4 v4, 0x1

    iput v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mState:I

    .line 174
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 175
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->writeExifData()V

    goto :goto_0

    .line 180
    .end local v0    # "byteRead":I
    :pswitch_1
    invoke-direct {p0, v8, p1, p2, p3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    .line 181
    .restart local v0    # "byteRead":I
    add-int/2addr p2, v0

    .line 182
    sub-int/2addr p3, v0

    .line 184
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-ne v4, v6, :cond_8

    .line 185
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 186
    .local v3, "tag":S
    const/16 v4, -0x27

    if-ne v3, v4, :cond_8

    .line 187
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 188
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 191
    .end local v3    # "tag":S
    :cond_8
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-lt v4, v8, :cond_3

    .line 194
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 195
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 196
    .local v2, "marker":S
    const/16 v4, -0x1f

    if-ne v2, v4, :cond_9

    .line 197
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mByteToSkip:I

    .line 198
    iput v6, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mState:I

    .line 206
    :goto_4
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 199
    :cond_9
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraJpegHeader;->isSofMarker(S)Z

    move-result v4

    if-nez v4, :cond_a

    .line 200
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 201
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mByteToCopy:I

    goto :goto_4

    .line 203
    :cond_a
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 204
    iput v6, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->mState:I

    goto :goto_4

    .line 209
    .end local v0    # "byteRead":I
    .end local v2    # "marker":S
    :cond_b
    if-lez p3, :cond_3

    .line 210
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_3

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
