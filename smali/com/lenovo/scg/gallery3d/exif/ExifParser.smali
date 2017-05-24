.class Lcom/lenovo/scg/gallery3d/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/exif/ExifParser$ExifTagEvent;,
        Lcom/lenovo/scg/gallery3d/exif/ExifParser$IfdEvent;,
        Lcom/lenovo/scg/gallery3d/exif/ExifParser$ImageEvent;
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

.field private mImageEvent:Lcom/lenovo/scg/gallery3d/exif/ExifParser$ImageEvent;

.field private final mInterface:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

.field private mJpegSizeTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripCount:I

.field private mStripSizeTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

.field private mTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 165
    sget v0, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->TAG_EXIF_IFD:S

    .line 167
    sget v0, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->TAG_GPS_IFD:S

    .line 168
    sget v0, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 170
    sget v0, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 172
    sget v0, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 174
    sget v0, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    .line 176
    sget v0, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/lenovo/scg/gallery3d/exif/ExifInterface;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "options"    # I
    .param p3, "iRef"    # Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput v4, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    .line 149
    iput v4, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    .line 157
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mContainExifData:Z

    .line 159
    iput v4, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 179
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Null argument inputStream to ExifParser"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_0
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mInterface:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    .line 210
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mContainExifData:Z

    .line 211
    new-instance v2, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-direct {v2, p1}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    .line 212
    iput p2, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mOptions:I

    .line 213
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mContainExifData:Z

    if-nez v2, :cond_2

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->parseTiffHeader()V

    .line 218
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v0

    .line 219
    .local v0, "offset":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 220
    new-instance v2, Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mIfd0Position:I

    .line 223
    iput v4, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mIfdType:I

    .line 224
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    :cond_4
    invoke-direct {p0, v4, v0, v1}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    .line 226
    const-wide/16 v2, 0x8

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 227
    long-to-int v2, v0

    add-int/lit8 v2, v2, -0x8

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    .line 228
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->read([B)I

    goto :goto_0
.end method

.method private checkAllowed(II)Z
    .locals 2
    .param p1, "ifd"    # I
    .param p2, "tagId"    # I

    .prologue
    .line 642
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mInterface:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 643
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 644
    const/4 v1, 0x0

    .line 646
    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v1

    goto :goto_0
.end method

.method private checkOffsetOrImageTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)V
    .locals 10
    .param p1, "tag"    # Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 591
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getTagId()S

    move-result v2

    .line 595
    .local v2, "tid":S
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getIfd()I

    move-result v1

    .line 596
    .local v1, "ifd":I
    sget-short v3, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->TAG_EXIF_IFD:S

    if-ne v2, v3, :cond_3

    sget v3, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 597
    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    :cond_2
    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v8, v4, v5}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 601
    :cond_3
    sget-short v3, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->TAG_GPS_IFD:S

    if-ne v2, v3, :cond_4

    sget v3, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 602
    invoke-direct {p0, v9}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v9, v4, v5}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 605
    :cond_4
    sget-short v3, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v2, v3, :cond_5

    sget v3, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 607
    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 608
    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v7, v4, v5}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 610
    :cond_5
    sget-short v3, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v2, v3, :cond_6

    sget v3, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 612
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 613
    invoke-virtual {p1, v6}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->registerCompressedImage(J)V

    goto :goto_0

    .line 615
    :cond_6
    sget-short v3, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v2, v3, :cond_7

    sget v3, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 617
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 618
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    goto/16 :goto_0

    .line 620
    :cond_7
    sget-short v3, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v2, v3, :cond_a

    sget v3, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 621
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 623
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 624
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getDataType()S

    move-result v3

    if-ne v3, v7, :cond_8

    .line 625
    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->registerUncompressedStrip(IJ)V

    .line 623
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 627
    :cond_8
    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_2

    .line 631
    .end local v0    # "i":I
    :cond_9
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ExifTagEvent;

    invoke-direct {v5, p1, v6}, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ExifTagEvent;-><init>(Lcom/lenovo/scg/gallery3d/exif/ExifTag;Z)V

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 634
    :cond_a
    sget-short v3, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v2, v3, :cond_0

    sget v3, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 637
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    goto/16 :goto_0
.end method

.method private isIfdRequested(I)Z
    .locals 3
    .param p1, "ifdType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 182
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 184
    :pswitch_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 186
    :pswitch_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 188
    :pswitch_2
    iget v2, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 190
    :pswitch_3
    iget v2, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 192
    :pswitch_4
    iget v2, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 182
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
    .line 198
    iget v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mOptions:I

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

    .line 392
    iget v2, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mIfdType:I

    packed-switch v2, :pswitch_data_0

    .line 403
    :cond_0
    :goto_0
    return v0

    .line 394
    :pswitch_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 398
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    goto :goto_0

    .line 401
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static parse(Ljava/io/InputStream;ILcom/lenovo/scg/gallery3d/exif/ExifInterface;)Lcom/lenovo/scg/gallery3d/exif/ExifParser;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "options"    # I
    .param p2, "iRef"    # Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/lenovo/scg/gallery3d/exif/ExifInterface;)V

    return-object v0
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/lenovo/scg/gallery3d/exif/ExifInterface;)Lcom/lenovo/scg/gallery3d/exif/ExifParser;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "iRef"    # Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/lenovo/scg/gallery3d/exif/ExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 742
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 743
    .local v0, "byteOrder":S
    const/16 v1, 0x4949

    if-ne v1, v0, :cond_0

    .line 744
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 751
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_2

    .line 752
    new-instance v1, Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 745
    :cond_0
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_1

    .line 746
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    .line 748
    :cond_1
    new-instance v1, Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 754
    :cond_2
    return-void
.end method

.method private readTag()Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 534
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v1

    .line 535
    .local v1, "tagId":S
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v2

    .line 536
    .local v2, "dataFormat":S
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v10

    .line 537
    .local v10, "numOfComp":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v10, v4

    if-lez v3, :cond_0

    .line 538
    new-instance v3, Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;

    const-string v4, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v3, v4}, Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 542
    :cond_0
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->isValidType(S)Z

    move-result v3

    if-nez v3, :cond_2

    .line 543
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

    .line 544
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->skip(J)J

    .line 545
    const/4 v0, 0x0

    .line 582
    :cond_1
    :goto_0
    return-object v0

    .line 548
    :cond_2
    new-instance v0, Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    long-to-int v3, v10

    iget v4, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mIfdType:I

    long-to-int v5, v10

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 550
    .local v0, "tag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v7

    .line 551
    .local v7, "dataSize":I
    const/4 v3, 0x4

    if-le v7, v3, :cond_6

    .line 552
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v12

    .line 553
    .local v12, "offset":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v12, v4

    if-lez v3, :cond_4

    .line 554
    new-instance v3, Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;

    const-string/jumbo v4, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v3, v4}, Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 548
    .end local v0    # "tag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .end local v7    # "dataSize":I
    .end local v12    # "offset":J
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 559
    .restart local v0    # "tag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .restart local v7    # "dataSize":I
    .restart local v12    # "offset":J
    :cond_4
    iget v3, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mIfd0Position:I

    int-to-long v4, v3

    cmp-long v3, v12, v4

    if-gez v3, :cond_5

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 561
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    if-eqz v3, :cond_1

    .line 563
    long-to-int v3, v10

    new-array v6, v3, [B

    .line 564
    .local v6, "buf":[B
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mDataAboveIfd0:[B

    long-to-int v4, v12

    add-int/lit8 v4, v4, -0x8

    const/4 v5, 0x0

    long-to-int v9, v10

    invoke-static {v3, v4, v6, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    invoke-virtual {v0, v6}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->setValue([B)Z

    goto :goto_0

    .line 569
    .end local v6    # "buf":[B
    :cond_5
    long-to-int v3, v12

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->setOffset(I)V

    goto :goto_0

    .line 572
    .end local v12    # "offset":J
    :cond_6
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->hasDefinedCount()Z

    move-result v8

    .line 574
    .local v8, "defCount":Z
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 576
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)V

    .line 577
    invoke-virtual {v0, v8}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 578
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    rsub-int/lit8 v4, v7, 0x4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->skip(J)J

    .line 580
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->setOffset(I)V

    goto :goto_0
.end method

.method private registerCompressedImage(J)V
    .locals 5
    .param p1, "offset"    # J

    .prologue
    .line 525
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ImageEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    return-void
.end method

.method private registerIfd(IJ)V
    .locals 4
    .param p1, "ifdType"    # I
    .param p2, "offset"    # J

    .prologue
    .line 521
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/gallery3d/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 4
    .param p1, "stripIndex"    # I
    .param p2, "offset"    # J

    .prologue
    .line 529
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ImageEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 10
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 758
    new-instance v0, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 759
    .local v0, "dataStream":Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v6

    const/16 v7, -0x28

    if-eq v6, v7, :cond_0

    .line 760
    new-instance v5, Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;

    const-string v6, "Invalid JPEG format"

    invoke-direct {v5, v6}, Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 763
    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v4

    .line 765
    .local v4, "marker":S
    :goto_0
    const/16 v6, -0x27

    if-eq v4, v6, :cond_1

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/exif/JpegHeader;->isSofMarker(S)Z

    move-result v6

    if-nez v6, :cond_1

    .line 766
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v3

    .line 769
    .local v3, "length":I
    const/16 v6, -0x1f

    if-ne v4, v6, :cond_2

    .line 770
    const/4 v1, 0x0

    .line 771
    .local v1, "header":I
    const/4 v2, 0x0

    .line 772
    .local v2, "headerTail":S
    const/16 v6, 0x8

    if-lt v3, v6, :cond_2

    .line 773
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readInt()I

    move-result v1

    .line 774
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v2

    .line 775
    add-int/lit8 v3, v3, -0x6

    .line 776
    const v6, 0x45786966

    if-ne v1, v6, :cond_2

    if-nez v2, :cond_2

    .line 777
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStartPosition:I

    .line 778
    iput v3, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mApp1End:I

    .line 779
    iget v5, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStartPosition:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mApp1End:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 780
    const/4 v5, 0x1

    .line 790
    .end local v1    # "header":I
    .end local v2    # "headerTail":S
    .end local v3    # "length":I
    :cond_1
    :goto_1
    return v5

    .line 784
    .restart local v3    # "length":I
    :cond_2
    const/4 v6, 0x2

    if-lt v3, v6, :cond_3

    add-int/lit8 v6, v3, -0x2

    int-to-long v6, v6

    add-int/lit8 v8, v3, -0x2

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 785
    :cond_3
    const-string v6, "ExifParser"

    const-string v7, "Invalid JPEG format."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 788
    :cond_4
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v4

    .line 789
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
    .line 497
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->skipTo(J)V

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    .line 501
    :cond_0
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 490
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    if-nez v1, :cond_0

    .line 493
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mJpegSizeTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected getCurrentIfd()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mIfdType:I

    return v0
.end method

.method protected getOffsetToExifEndFromSOF()I
    .locals 1

    .prologue
    .line 794
    iget v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    return v0
.end method

.method protected getStripCount()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mStripCount:I

    return v0
.end method

.method protected getStripIndex()I
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mImageEvent:Lcom/lenovo/scg/gallery3d/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method protected getStripSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 480
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    if-nez v1, :cond_0

    .line 482
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mStripSizeTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected getTag()Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    return-object v0
.end method

.method protected getTagCountInCurrentIfd()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    return v0
.end method

.method protected getTiffStartPosition()I
    .locals 1

    .prologue
    .line 798
    iget v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStartPosition:I

    return v0
.end method

.method protected next()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 272
    iget-boolean v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mContainExifData:Z

    if-nez v9, :cond_0

    .line 273
    const/4 v9, 0x5

    .line 353
    :goto_0
    return v9

    .line 275
    :cond_0
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v6

    .line 276
    .local v6, "offset":I
    iget v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v10, v10, 0xc

    add-int v1, v9, v10

    .line 277
    .local v1, "endOfTags":I
    if-ge v6, v1, :cond_3

    .line 278
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readTag()Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    move-result-object v9

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    .line 279
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    if-nez v9, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->next()I

    move-result v9

    goto :goto_0

    .line 282
    :cond_1
    iget-boolean v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v9, :cond_2

    .line 283
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    invoke-direct {p0, v9}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)V

    .line 285
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 286
    :cond_3
    if-ne v6, v1, :cond_5

    .line 288
    iget v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mIfdType:I

    if-nez v9, :cond_6

    .line 289
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v4

    .line 290
    .local v4, "ifdOffset":J
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 291
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_5

    .line 292
    const/4 v9, 0x1

    invoke-direct {p0, v9, v4, v5}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    .line 312
    .end local v4    # "ifdOffset":J
    :cond_5
    :goto_1
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    if-eqz v9, :cond_e

    .line 313
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    .line 314
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 316
    .local v3, "event":Ljava/lang/Object;
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    instance-of v9, v3, Lcom/lenovo/scg/gallery3d/exif/ExifParser$IfdEvent;

    if-eqz v9, :cond_b

    move-object v9, v3

    .line 323
    check-cast v9, Lcom/lenovo/scg/gallery3d/exif/ExifParser$IfdEvent;

    iget v9, v9, Lcom/lenovo/scg/gallery3d/exif/ExifParser$IfdEvent;->ifd:I

    iput v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mIfdType:I

    .line 324
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v9

    iput v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    .line 325
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    .line 327
    iget v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v9, v9, 0xc

    iget v10, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mApp1End:I

    if-le v9, v10, :cond_9

    .line 328
    const-string v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid size of IFD "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mIfdType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v9, 0x5

    goto/16 :goto_0

    .line 296
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v3    # "event":Ljava/lang/Object;
    :cond_6
    const/4 v7, 0x4

    .line 298
    .local v7, "offsetSize":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 299
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v10

    sub-int v7, v9, v10

    .line 302
    :cond_7
    const/4 v9, 0x4

    if-ge v7, v9, :cond_8

    .line 303
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

    .line 305
    :cond_8
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v4

    .line 306
    .restart local v4    # "ifdOffset":J
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_5

    .line 307
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

    .line 317
    .end local v4    # "ifdOffset":J
    .end local v7    # "offsetSize":I
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v3    # "event":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 318
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

    .line 332
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v9

    iput-boolean v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 333
    check-cast v3, Lcom/lenovo/scg/gallery3d/exif/ExifParser$IfdEvent;

    .end local v3    # "event":Ljava/lang/Object;
    iget-boolean v9, v3, Lcom/lenovo/scg/gallery3d/exif/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v9, :cond_a

    .line 334
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 336
    :cond_a
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto/16 :goto_1

    .line 338
    .restart local v3    # "event":Ljava/lang/Object;
    :cond_b
    instance-of v9, v3, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ImageEvent;

    if-eqz v9, :cond_c

    .line 339
    check-cast v3, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ImageEvent;

    .end local v3    # "event":Ljava/lang/Object;
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mImageEvent:Lcom/lenovo/scg/gallery3d/exif/ExifParser$ImageEvent;

    .line 340
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mImageEvent:Lcom/lenovo/scg/gallery3d/exif/ExifParser$ImageEvent;

    iget v9, v9, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ImageEvent;->type:I

    goto/16 :goto_0

    .restart local v3    # "event":Ljava/lang/Object;
    :cond_c
    move-object v8, v3

    .line 342
    check-cast v8, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ExifTagEvent;

    .line 343
    .local v8, "tagEvent":Lcom/lenovo/scg/gallery3d/exif/ExifParser$ExifTagEvent;
    iget-object v9, v8, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ExifTagEvent;->tag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    .line 344
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getDataType()S

    move-result v9

    const/4 v10, 0x7

    if-eq v9, v10, :cond_d

    .line 345
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)V

    .line 346
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    invoke-direct {p0, v9}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)V

    .line 348
    :cond_d
    iget-boolean v9, v8, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v9, :cond_5

    .line 349
    const/4 v9, 0x2

    goto/16 :goto_0

    .line 353
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v3    # "event":Ljava/lang/Object;
    .end local v8    # "tagEvent":Lcom/lenovo/scg/gallery3d/exif/ExifParser$ExifTagEvent;
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
    .line 812
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->read([B)I

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
    .line 805
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method protected readFullTagValue(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)V
    .locals 11
    .param p1, "tag"    # Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getDataType()S

    move-result v6

    .line 652
    .local v6, "type":S
    const/4 v8, 0x2

    if-eq v6, v8, :cond_0

    const/4 v8, 0x7

    if-eq v6, v8, :cond_0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    .line 654
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v5

    .line 655
    .local v5, "size":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 656
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v9

    add-int/2addr v9, v5

    if-ge v8, v9, :cond_1

    .line 658
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 659
    .local v2, "event":Ljava/lang/Object;
    instance-of v8, v2, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ImageEvent;

    if-eqz v8, :cond_2

    .line 661
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 663
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

    .line 683
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v2    # "event":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getDataType()S

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 738
    :goto_1
    :pswitch_0
    return-void

    .line 666
    .restart local v2    # "event":Ljava/lang/Object;
    .restart local v5    # "size":I
    :cond_2
    instance-of v8, v2, Lcom/lenovo/scg/gallery3d/exif/ExifParser$IfdEvent;

    if-eqz v8, :cond_4

    .line 667
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ifd "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    check-cast v2, Lcom/lenovo/scg/gallery3d/exif/ExifParser$IfdEvent;

    .end local v2    # "event":Ljava/lang/Object;
    iget v10, v2, Lcom/lenovo/scg/gallery3d/exif/ExifParser$IfdEvent;->ifd:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " overlaps value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v9

    sub-int v5, v8, v9

    .line 676
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid size of tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

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

    .line 678
    invoke-virtual {p1, v5}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->forceSetComponentCount(I)V

    goto :goto_0

    .line 669
    .restart local v2    # "event":Ljava/lang/Object;
    :cond_4
    instance-of v8, v2, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ExifTagEvent;

    if-eqz v8, :cond_3

    .line 670
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tag value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    check-cast v2, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ExifTagEvent;

    .end local v2    # "event":Ljava/lang/Object;
    iget-object v10, v2, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ExifTagEvent;->tag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " overlaps value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 686
    .end local v5    # "size":I
    :pswitch_1
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v0, v8, [B

    .line 687
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->read([B)I

    .line 688
    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->setValue([B)Z

    goto/16 :goto_1

    .line 692
    .end local v0    # "buf":[B
    :pswitch_2
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 695
    :pswitch_3
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [J

    .line 696
    .local v7, "value":[J
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v7

    .local v4, "n":I
    :goto_3
    if-ge v3, v4, :cond_5

    .line 697
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v8

    aput-wide v8, v7, v3

    .line 696
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 699
    :cond_5
    invoke-virtual {p1, v7}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->setValue([J)Z

    goto/16 :goto_1

    .line 703
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[J
    :pswitch_4
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [Lcom/lenovo/scg/gallery3d/exif/Rational;

    .line 704
    .local v7, "value":[Lcom/lenovo/scg/gallery3d/exif/Rational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_4
    if-ge v3, v4, :cond_6

    .line 705
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readUnsignedRational()Lcom/lenovo/scg/gallery3d/exif/Rational;

    move-result-object v8

    aput-object v8, v7, v3

    .line 704
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 707
    :cond_6
    invoke-virtual {p1, v7}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->setValue([Lcom/lenovo/scg/gallery3d/exif/Rational;)Z

    goto/16 :goto_1

    .line 711
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[Lcom/lenovo/scg/gallery3d/exif/Rational;
    :pswitch_5
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [I

    .line 712
    .local v7, "value":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_5
    if-ge v3, v4, :cond_7

    .line 713
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readUnsignedShort()I

    move-result v8

    aput v8, v7, v3

    .line 712
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 715
    :cond_7
    invoke-virtual {p1, v7}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->setValue([I)Z

    goto/16 :goto_1

    .line 719
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[I
    :pswitch_6
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [I

    .line 720
    .restart local v7    # "value":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_6
    if-ge v3, v4, :cond_8

    .line 721
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readLong()I

    move-result v8

    aput v8, v7, v3

    .line 720
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 723
    :cond_8
    invoke-virtual {p1, v7}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->setValue([I)Z

    goto/16 :goto_1

    .line 727
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[I
    :pswitch_7
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [Lcom/lenovo/scg/gallery3d/exif/Rational;

    .line 728
    .local v7, "value":[Lcom/lenovo/scg/gallery3d/exif/Rational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_7
    if-ge v3, v4, :cond_9

    .line 729
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readRational()Lcom/lenovo/scg/gallery3d/exif/Rational;

    move-result-object v8

    aput-object v8, v7, v3

    .line 728
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 731
    :cond_9
    invoke-virtual {p1, v7}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->setValue([Lcom/lenovo/scg/gallery3d/exif/Rational;)Z

    goto/16 :goto_1

    .line 683
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
    .line 867
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method protected readRational()Lcom/lenovo/scg/gallery3d/exif/Rational;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readLong()I

    move-result v1

    .line 875
    .local v1, "nomi":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readLong()I

    move-result v0

    .line 876
    .local v0, "denomi":I
    new-instance v2, Lcom/lenovo/scg/gallery3d/exif/Rational;

    int-to-long v4, v1

    int-to-long v6, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/lenovo/scg/gallery3d/exif/Rational;-><init>(JJ)V

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
    .line 821
    sget-object v0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

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
    .line 830
    if-lez p1, :cond_0

    .line 831
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 833
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
    .line 850
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lcom/lenovo/scg/gallery3d/exif/Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 859
    .local v2, "nomi":J
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 860
    .local v0, "denomi":J
    new-instance v4, Lcom/lenovo/scg/gallery3d/exif/Rational;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/lenovo/scg/gallery3d/exif/Rational;-><init>(JJ)V

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
    .line 842
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected registerForTagValue(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)V
    .locals 4
    .param p1, "tag"    # Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    .prologue
    .line 513
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifParser$ExifTagEvent;-><init>(Lcom/lenovo/scg/gallery3d/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/gallery3d/exif/ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 364
    iget v4, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v5, v5, 0xc

    add-int v0, v4, v5

    .line 365
    .local v0, "endOfTags":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTiffStream:Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    .line 366
    .local v1, "offset":I
    if-le v1, v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v4, :cond_3

    .line 370
    :cond_2
    :goto_1
    if-ge v1, v0, :cond_4

    .line 371
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readTag()Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    .line 372
    add-int/lit8 v1, v1, 0xc

    .line 373
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    if-eqz v4, :cond_2

    .line 376
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mTag:Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->checkOffsetOrImageTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)V

    goto :goto_1

    .line 379
    :cond_3
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->skipTo(I)V

    .line 381
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 383
    .local v2, "ifdOffset":J
    iget v4, p0, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->mIfdType:I

    if-nez v4, :cond_0

    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isIfdRequested(I)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->isThumbnailRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 386
    invoke-direct {p0, v6, v2, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_0
.end method
