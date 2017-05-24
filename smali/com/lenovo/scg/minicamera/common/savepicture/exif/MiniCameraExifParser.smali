.class Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
.super Ljava/lang/Object;
.source "MiniCameraExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$IfdEvent;,
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;
    }
.end annotation


# static fields
.field protected static final BIG_ENDIAN_TAG:S = 0x4d4ds

.field protected static final DEFAULT_IFD0_OFFSET:I = 0x8

.field public static final EVENT_COMPRESSED_IMAGE:I = 0x3

.field public static final EVENT_END:I = 0x5

.field public static final EVENT_NEW_TAG:I = 0x1

.field public static final EVENT_START_OF_IFD:I = 0x0

.field public static final EVENT_UNCOMPRESSED_STRIP:I = 0x4

.field public static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2

.field protected static final EXIF_HEADER:I = 0x45786966

.field protected static final EXIF_HEADER_TAIL:S = 0x0s

.field protected static final LITTLE_ENDIAN_TAG:S = 0x4949s

.field private static final LOGV:Z = false

.field protected static final OFFSET_SIZE:I = 0x2

.field public static final OPTION_IFD_0:I = 0x1

.field public static final OPTION_IFD_1:I = 0x2

.field public static final OPTION_IFD_EXIF:I = 0x4

.field public static final OPTION_IFD_GPS:I = 0x8

.field public static final OPTION_IFD_INTEROPERABILITY:I = 0x10

.field public static final OPTION_THUMBNAIL:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ExifParser"

.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field protected static final TAG_SIZE:I = 0xc

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field protected static final TIFF_HEADER_TAIL:S = 0x2as

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;

.field private final mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

.field private mJpegSizeTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripCount:I

.field private mStripSizeTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

.field private mTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 204
    sget v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->TAG_EXIF_IFD:S

    .line 206
    sget v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->TAG_GPS_IFD:S

    .line 208
    sget v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 210
    sget v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 212
    sget v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 214
    sget v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->TAG_STRIP_OFFSETS:S

    .line 216
    sget v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->TAG_STRIP_BYTE_COUNTS:S

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "options"    # I
    .param p3, "iRef"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mIfdStartOffset:I

    .line 174
    iput v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mNumOfTagInIfd:I

    .line 190
    iput-boolean v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mContainExifData:Z

    .line 194
    iput v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mOffsetToApp1EndFromSOF:I

    .line 218
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    .line 241
    if-nez p1, :cond_0

    .line 242
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Null argument inputStream to ExifParser"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_0
    iput-object p3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    .line 248
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mContainExifData:Z

    .line 249
    new-instance v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-direct {v2, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    .line 250
    iput p2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mOptions:I

    .line 251
    iget-boolean v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mContainExifData:Z

    if-nez v2, :cond_2

    .line 269
    :cond_1
    :goto_0
    return-void

    .line 255
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->parseTiffHeader()V

    .line 256
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readUnsignedInt()J

    move-result-wide v0

    .line 257
    .local v0, "offset":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 258
    new-instance v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mIfd0Position:I

    .line 261
    iput v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mIfdType:I

    .line 262
    invoke-direct {p0, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    :cond_4
    invoke-direct {p0, v4, v0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->registerIfd(IJ)V

    .line 264
    const-wide/16 v2, 0x8

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 265
    long-to-int v2, v0

    add-int/lit8 v2, v2, -0x8

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mDataAboveIfd0:[B

    .line 266
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mDataAboveIfd0:[B

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->read([B)I

    goto :goto_0
.end method

.method private checkAllowed(II)Z
    .locals 2
    .param p1, "ifd"    # I
    .param p2, "tagId"    # I

    .prologue
    .line 659
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 660
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 661
    const/4 v1, 0x0

    .line 663
    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->isIfdAllowed(II)Z

    move-result v1

    goto :goto_0
.end method

.method private checkOffsetOrImageTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)V
    .locals 10
    .param p1, "tag"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 614
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getTagId()S

    move-result v2

    .line 618
    .local v2, "tid":S
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getIfd()I

    move-result v1

    .line 619
    .local v1, "ifd":I
    sget-short v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->TAG_EXIF_IFD:S

    if-ne v2, v3, :cond_3

    sget v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 620
    invoke-direct {p0, v8}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 621
    :cond_2
    invoke-virtual {p1, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v8, v4, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 623
    :cond_3
    sget-short v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->TAG_GPS_IFD:S

    if-ne v2, v3, :cond_4

    sget v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 624
    invoke-direct {p0, v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 625
    invoke-virtual {p1, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v9, v4, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 627
    :cond_4
    sget-short v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v2, v3, :cond_5

    sget v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 628
    invoke-direct {p0, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    invoke-virtual {p1, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v7, v4, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 631
    :cond_5
    sget-short v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v2, v3, :cond_6

    sget v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 632
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    invoke-virtual {p1, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->registerCompressedImage(J)V

    goto :goto_0

    .line 635
    :cond_6
    sget-short v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v2, v3, :cond_7

    sget v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 636
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 637
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mJpegSizeTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    goto/16 :goto_0

    .line 639
    :cond_7
    sget-short v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v2, v3, :cond_a

    sget v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 640
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 641
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 642
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 643
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataType()S

    move-result v3

    if-ne v3, v7, :cond_8

    .line 644
    invoke-virtual {p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->registerUncompressedStrip(IJ)V

    .line 642
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 646
    :cond_8
    invoke-virtual {p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_2

    .line 650
    .end local v0    # "i":I
    :cond_9
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;

    invoke-direct {v5, p1, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;-><init>(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;Z)V

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 653
    :cond_a
    sget-short v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v2, v3, :cond_0

    sget v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 654
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mStripSizeTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    goto/16 :goto_0
.end method

.method private isIfdRequested(I)Z
    .locals 3
    .param p1, "ifdType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 221
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 223
    :pswitch_0
    iget v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 225
    :pswitch_1
    iget v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 227
    :pswitch_2
    iget v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 229
    :pswitch_3
    iget v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 231
    :pswitch_4
    iget v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private isThumbnailRequested()Z
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 424
    iget v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mIfdType:I

    packed-switch v2, :pswitch_data_0

    .line 434
    :cond_0
    :goto_0
    return v0

    .line 426
    :pswitch_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isIfdRequested(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 429
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isThumbnailRequested()Z

    move-result v0

    goto :goto_0

    .line 432
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isIfdRequested(I)Z

    move-result v0

    goto :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static parse(Ljava/io/InputStream;ILcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "options"    # I
    .param p2, "iRef"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;-><init>(Ljava/io/InputStream;ILcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;)V

    return-object v0
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "iRef"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;-><init>(Ljava/io/InputStream;ILcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 751
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readShort()S

    move-result v0

    .line 752
    .local v0, "byteOrder":S
    const/16 v1, 0x4949

    if-ne v1, v0, :cond_0

    .line 753
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 760
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_2

    .line 761
    new-instance v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 754
    :cond_0
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_1

    .line 755
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    .line 757
    :cond_1
    new-instance v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 763
    :cond_2
    return-void
.end method

.method private readTag()Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 564
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readShort()S

    move-result v1

    .line 565
    .local v1, "tagId":S
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readShort()S

    move-result v2

    .line 566
    .local v2, "dataFormat":S
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readUnsignedInt()J

    move-result-wide v10

    .line 567
    .local v10, "numOfComp":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v10, v4

    if-lez v3, :cond_0

    .line 568
    new-instance v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;

    const-string v4, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v3, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 571
    :cond_0
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->isValidType(S)Z

    move-result v3

    if-nez v3, :cond_1

    .line 572
    const-string v3, "ExifParser"

    const-string v4, "Tag %04x: Invalid data type %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    aput-object v14, v5, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    aput-object v14, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->skip(J)J

    .line 574
    const/4 v0, 0x0

    .line 604
    :goto_0
    return-object v0

    .line 577
    :cond_1
    new-instance v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    long-to-int v3, v10

    iget v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mIfdType:I

    long-to-int v5, v10

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;-><init>(SSIIZ)V

    .line 578
    .local v0, "tag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataSize()I

    move-result v7

    .line 579
    .local v7, "dataSize":I
    const/4 v3, 0x4

    if-le v7, v3, :cond_5

    .line 580
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readUnsignedInt()J

    move-result-wide v12

    .line 581
    .local v12, "offset":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v12, v4

    if-lez v3, :cond_3

    .line 582
    new-instance v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;

    const-string/jumbo v4, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v3, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 577
    .end local v0    # "tag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .end local v7    # "dataSize":I
    .end local v12    # "offset":J
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 586
    .restart local v0    # "tag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .restart local v7    # "dataSize":I
    .restart local v12    # "offset":J
    :cond_3
    iget v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mIfd0Position:I

    int-to-long v4, v3

    cmp-long v3, v12, v4

    if-gez v3, :cond_4

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    .line 587
    long-to-int v3, v10

    new-array v6, v3, [B

    .line 588
    .local v6, "buf":[B
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mDataAboveIfd0:[B

    long-to-int v4, v12

    add-int/lit8 v4, v4, -0x8

    const/4 v5, 0x0

    long-to-int v9, v10

    invoke-static {v3, v4, v6, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    invoke-virtual {v0, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([B)Z

    goto :goto_0

    .line 591
    .end local v6    # "buf":[B
    :cond_4
    long-to-int v3, v12

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setOffset(I)V

    goto :goto_0

    .line 594
    .end local v12    # "offset":J
    :cond_5
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->hasDefinedCount()Z

    move-result v8

    .line 596
    .local v8, "defCount":Z
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setHasDefinedCount(Z)V

    .line 598
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readFullTagValue(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)V

    .line 599
    invoke-virtual {v0, v8}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setHasDefinedCount(Z)V

    .line 600
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    rsub-int/lit8 v4, v7, 0x4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->skip(J)J

    .line 602
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->getReadByteCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setOffset(I)V

    goto :goto_0
.end method

.method private registerCompressedImage(J)V
    .locals 5
    .param p1, "offset"    # J

    .prologue
    .line 556
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    return-void
.end method

.method private registerIfd(IJ)V
    .locals 4
    .param p1, "ifdType"    # I
    .param p2, "offset"    # J

    .prologue
    .line 552
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isIfdRequested(I)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 4
    .param p1, "stripIndex"    # I
    .param p2, "offset"    # J

    .prologue
    .line 560
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 10
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 766
    new-instance v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 767
    .local v0, "dataStream":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readShort()S

    move-result v6

    const/16 v7, -0x28

    if-eq v6, v7, :cond_0

    .line 768
    new-instance v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;

    const-string v6, "Invalid JPEG format"

    invoke-direct {v5, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 771
    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readShort()S

    move-result v4

    .line 772
    .local v4, "marker":S
    :goto_0
    const/16 v6, -0x27

    if-eq v4, v6, :cond_1

    invoke-static {v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraJpegHeader;->isSofMarker(S)Z

    move-result v6

    if-nez v6, :cond_1

    .line 773
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readUnsignedShort()I

    move-result v3

    .line 776
    .local v3, "length":I
    const/16 v6, -0x1f

    if-ne v4, v6, :cond_2

    .line 777
    const/4 v1, 0x0

    .line 778
    .local v1, "header":I
    const/4 v2, 0x0

    .line 779
    .local v2, "headerTail":S
    const/16 v6, 0x8

    if-lt v3, v6, :cond_2

    .line 780
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readInt()I

    move-result v1

    .line 781
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readShort()S

    move-result v2

    .line 782
    add-int/lit8 v3, v3, -0x6

    .line 783
    const v6, 0x45786966

    if-ne v1, v6, :cond_2

    if-nez v2, :cond_2

    .line 784
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->getReadByteCount()I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStartPosition:I

    .line 785
    iput v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mApp1End:I

    .line 786
    iget v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStartPosition:I

    iget v6, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mApp1End:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mOffsetToApp1EndFromSOF:I

    .line 787
    const/4 v5, 0x1

    .line 797
    .end local v1    # "header":I
    .end local v2    # "headerTail":S
    .end local v3    # "length":I
    :cond_1
    :goto_1
    return v5

    .line 791
    .restart local v3    # "length":I
    :cond_2
    const/4 v6, 0x2

    if-lt v3, v6, :cond_3

    add-int/lit8 v6, v3, -0x2

    int-to-long v6, v6

    add-int/lit8 v8, v3, -0x2

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->skip(J)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 792
    :cond_3
    const-string v6, "ExifParser"

    const-string v7, "Invalid JPEG format."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 795
    :cond_4
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readShort()S

    move-result v4

    .line 796
    goto :goto_0
.end method

.method private skipTo(I)V
    .locals 4
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->skipTo(J)V

    .line 529
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 530
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    .line 532
    :cond_0
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 521
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mJpegSizeTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    if-nez v1, :cond_0

    .line 524
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mJpegSizeTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected getCurrentIfd()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mIfdType:I

    return v0
.end method

.method protected getOffsetToExifEndFromSOF()I
    .locals 1

    .prologue
    .line 801
    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mOffsetToApp1EndFromSOF:I

    return v0
.end method

.method protected getStripCount()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mStripCount:I

    return v0
.end method

.method protected getStripIndex()I
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mImageEvent:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;

    iget v0, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method protected getStripSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 512
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mStripSizeTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    if-nez v1, :cond_0

    .line 513
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mStripSizeTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected getTag()Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    return-object v0
.end method

.method protected getTagCountInCurrentIfd()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mNumOfTagInIfd:I

    return v0
.end method

.method protected getTiffStartPosition()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStartPosition:I

    return v0
.end method

.method protected next()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 307
    iget-boolean v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mContainExifData:Z

    if-nez v9, :cond_0

    .line 308
    const/4 v9, 0x5

    .line 386
    :goto_0
    return v9

    .line 310
    :cond_0
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->getReadByteCount()I

    move-result v6

    .line 311
    .local v6, "offset":I
    iget v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mIfdStartOffset:I

    add-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v10, v10, 0xc

    add-int v1, v9, v10

    .line 312
    .local v1, "endOfTags":I
    if-ge v6, v1, :cond_3

    .line 313
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readTag()Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v9

    iput-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 314
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    if-nez v9, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->next()I

    move-result v9

    goto :goto_0

    .line 317
    :cond_1
    iget-boolean v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v9, :cond_2

    .line 318
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    invoke-direct {p0, v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->checkOffsetOrImageTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)V

    .line 320
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 321
    :cond_3
    if-ne v6, v1, :cond_5

    .line 323
    iget v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mIfdType:I

    if-nez v9, :cond_6

    .line 324
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readUnsignedLong()J

    move-result-wide v4

    .line 325
    .local v4, "ifdOffset":J
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isIfdRequested(I)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isThumbnailRequested()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 326
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_5

    .line 327
    const/4 v9, 0x1

    invoke-direct {p0, v9, v4, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->registerIfd(IJ)V

    .line 346
    .end local v4    # "ifdOffset":J
    :cond_5
    :goto_1
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    if-eqz v9, :cond_e

    .line 347
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    .line 348
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 350
    .local v3, "event":Ljava/lang/Object;
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    instance-of v9, v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$IfdEvent;

    if-eqz v9, :cond_b

    move-object v9, v3

    .line 356
    check-cast v9, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$IfdEvent;

    iget v9, v9, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$IfdEvent;->ifd:I

    iput v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mIfdType:I

    .line 357
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readUnsignedShort()I

    move-result v9

    iput v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mNumOfTagInIfd:I

    .line 358
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mIfdStartOffset:I

    .line 360
    iget v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v9, v9, 0xc

    iget v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mIfdStartOffset:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mApp1End:I

    if-le v9, v10, :cond_9

    .line 361
    const-string v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid size of IFD "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mIfdType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v9, 0x5

    goto/16 :goto_0

    .line 331
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v3    # "event":Ljava/lang/Object;
    :cond_6
    const/4 v7, 0x4

    .line 333
    .local v7, "offsetSize":I
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 334
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v10}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->getReadByteCount()I

    move-result v10

    sub-int v7, v9, v10

    .line 336
    :cond_7
    const/4 v9, 0x4

    if-ge v7, v9, :cond_8

    .line 337
    const-string v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid size of link to next IFD: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 339
    :cond_8
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readUnsignedLong()J

    move-result-wide v4

    .line 340
    .restart local v4    # "ifdOffset":J
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_5

    .line 341
    const-string v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid link to next IFD: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 351
    .end local v4    # "ifdOffset":J
    .end local v7    # "offsetSize":I
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v3    # "event":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to skip to data at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", the file may be broken."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 365
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v9

    iput-boolean v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 366
    check-cast v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$IfdEvent;

    .end local v3    # "event":Ljava/lang/Object;
    iget-boolean v9, v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$IfdEvent;->isRequested:Z

    if-eqz v9, :cond_a

    .line 367
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 369
    :cond_a
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->skipRemainingTagsInCurrentIfd()V

    goto/16 :goto_1

    .line 371
    .restart local v3    # "event":Ljava/lang/Object;
    :cond_b
    instance-of v9, v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;

    if-eqz v9, :cond_c

    .line 372
    check-cast v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;

    .end local v3    # "event":Ljava/lang/Object;
    iput-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mImageEvent:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;

    .line 373
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mImageEvent:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;

    iget v9, v9, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;->type:I

    goto/16 :goto_0

    .restart local v3    # "event":Ljava/lang/Object;
    :cond_c
    move-object v8, v3

    .line 375
    check-cast v8, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;

    .line 376
    .local v8, "tagEvent":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;
    iget-object v9, v8, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;->tag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    iput-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 377
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    invoke-virtual {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataType()S

    move-result v9

    const/4 v10, 0x7

    if-eq v9, v10, :cond_d

    .line 378
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readFullTagValue(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)V

    .line 379
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    invoke-direct {p0, v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->checkOffsetOrImageTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)V

    .line 381
    :cond_d
    iget-boolean v9, v8, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v9, :cond_5

    .line 382
    const/4 v9, 0x2

    goto/16 :goto_0

    .line 386
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v3    # "event":Ljava/lang/Object;
    .end local v8    # "tagEvent":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;
    :cond_e
    const/4 v9, 0x5

    goto/16 :goto_0
.end method

.method protected read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 819
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method protected read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method protected readFullTagValue(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)V
    .locals 11
    .param p1, "tag"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataType()S

    move-result v6

    .line 669
    .local v6, "type":S
    const/4 v8, 0x2

    if-eq v6, v8, :cond_0

    const/4 v8, 0x7

    if-eq v6, v8, :cond_0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    .line 670
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v5

    .line 671
    .local v5, "size":I
    iget-object v8, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 672
    iget-object v8, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->getReadByteCount()I

    move-result v9

    add-int/2addr v9, v5

    if-ge v8, v9, :cond_1

    .line 673
    iget-object v8, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 674
    .local v2, "event":Ljava/lang/Object;
    instance-of v8, v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;

    if-eqz v8, :cond_2

    .line 676
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v8, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 678
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid thumbnail offset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v2    # "event":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataType()S

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 748
    :goto_1
    :pswitch_0
    return-void

    .line 681
    .restart local v2    # "event":Ljava/lang/Object;
    .restart local v5    # "size":I
    :cond_2
    instance-of v8, v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$IfdEvent;

    if-eqz v8, :cond_4

    .line 682
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ifd "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    check-cast v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$IfdEvent;

    .end local v2    # "event":Ljava/lang/Object;
    iget v10, v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$IfdEvent;->ifd:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " overlaps value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->getReadByteCount()I

    move-result v9

    sub-int v5, v8, v9

    .line 687
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid size of tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " setting count to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-virtual {p1, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->forceSetComponentCount(I)V

    goto :goto_0

    .line 683
    .restart local v2    # "event":Ljava/lang/Object;
    :cond_4
    instance-of v8, v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;

    if-eqz v8, :cond_3

    .line 684
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tag value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    check-cast v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;

    .end local v2    # "event":Ljava/lang/Object;
    iget-object v10, v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;->tag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    invoke-virtual {v10}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " overlaps value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 696
    .end local v5    # "size":I
    :pswitch_1
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v8

    new-array v0, v8, [B

    .line 697
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->read([B)I

    .line 698
    invoke-virtual {p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([B)Z

    goto/16 :goto_1

    .line 702
    .end local v0    # "buf":[B
    :pswitch_2
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 705
    :pswitch_3
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [J

    .line 706
    .local v7, "value":[J
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v7

    .local v4, "n":I
    :goto_3
    if-ge v3, v4, :cond_5

    .line 707
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readUnsignedLong()J

    move-result-wide v8

    aput-wide v8, v7, v3

    .line 706
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 709
    :cond_5
    invoke-virtual {p1, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([J)Z

    goto/16 :goto_1

    .line 713
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[J
    :pswitch_4
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    .line 714
    .local v7, "value":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_4
    if-ge v3, v4, :cond_6

    .line 715
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readUnsignedRational()Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    move-result-object v8

    aput-object v8, v7, v3

    .line 714
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 717
    :cond_6
    invoke-virtual {p1, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)Z

    goto/16 :goto_1

    .line 721
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    :pswitch_5
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [I

    .line 722
    .local v7, "value":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_5
    if-ge v3, v4, :cond_7

    .line 723
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readUnsignedShort()I

    move-result v8

    aput v8, v7, v3

    .line 722
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 725
    :cond_7
    invoke-virtual {p1, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([I)Z

    goto/16 :goto_1

    .line 729
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[I
    :pswitch_6
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [I

    .line 730
    .restart local v7    # "value":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_6
    if-ge v3, v4, :cond_8

    .line 731
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readLong()I

    move-result v8

    aput v8, v7, v3

    .line 730
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 733
    :cond_8
    invoke-virtual {p1, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([I)Z

    goto/16 :goto_1

    .line 737
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[I
    :pswitch_7
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    .line 738
    .local v7, "value":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_7
    if-ge v3, v4, :cond_9

    .line 739
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readRational()Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    move-result-object v8

    aput-object v8, v7, v3

    .line 738
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 741
    :cond_9
    invoke-virtual {p1, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setValue([Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)Z

    goto/16 :goto_1

    .line 693
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected readLong()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method protected readRational()Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readLong()I

    move-result v1

    .line 883
    .local v1, "nomi":I
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readLong()I

    move-result v0

    .line 884
    .local v0, "denomi":I
    new-instance v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    int-to-long v4, v1

    int-to-long v6, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;-><init>(JJ)V

    return-object v2
.end method

.method protected readString(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 837
    if-lez p1, :cond_0

    .line 838
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 840
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 866
    .local v2, "nomi":J
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 867
    .local v0, "denomi":J
    new-instance v4, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;-><init>(JJ)V

    return-object v4
.end method

.method protected readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected registerForTagValue(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)V
    .locals 4
    .param p1, "tag"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .prologue
    .line 544
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;-><init>(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 397
    iget v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mIfdStartOffset:I

    add-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v5, v5, 0xc

    add-int v0, v4, v5

    .line 398
    .local v0, "endOfTags":I
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTiffStream:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;

    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraCountedDataInputStream;->getReadByteCount()I

    move-result v1

    .line 399
    .local v1, "offset":I
    if-le v1, v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-boolean v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v4, :cond_3

    .line 403
    :cond_2
    :goto_1
    if-ge v1, v0, :cond_4

    .line 404
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readTag()Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 405
    add-int/lit8 v1, v1, 0xc

    .line 406
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    if-eqz v4, :cond_2

    .line 409
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->checkOffsetOrImageTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)V

    goto :goto_1

    .line 412
    :cond_3
    invoke-direct {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->skipTo(I)V

    .line 414
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 416
    .local v2, "ifdOffset":J
    iget v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->mIfdType:I

    if-nez v4, :cond_0

    invoke-direct {p0, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isIfdRequested(I)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->isThumbnailRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 418
    invoke-direct {p0, v6, v2, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->registerIfd(IJ)V

    goto :goto_0
.end method
