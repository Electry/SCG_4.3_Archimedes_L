.class Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifReader;
.super Ljava/lang/Object;
.source "MiniCameraExifReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifReader"


# instance fields
.field private final mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;)V
    .locals 0
    .param p1, "iRef"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifReader;->mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    .line 41
    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifReader;->mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    invoke-static {p1, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->parse(Ljava/io/InputStream;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;

    move-result-object v3

    .line 52
    .local v3, "parser":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
    new-instance v2, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 53
    .local v2, "exifData":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;
    const/4 v4, 0x0

    .line 55
    .local v4, "tag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->next()I

    move-result v1

    .line 56
    .local v1, "event":I
    :goto_0
    const/4 v5, 0x5

    if-eq v1, v5, :cond_4

    .line 57
    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_1
    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->next()I

    move-result v1

    goto :goto_0

    .line 59
    :pswitch_0
    new-instance v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->getCurrentIfd()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;-><init>(I)V

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->addIfdData(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;)V

    goto :goto_1

    .line 62
    :pswitch_1
    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->getTag()Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v4

    .line 63
    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->hasValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 64
    invoke-virtual {v3, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->registerForTagValue(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)V

    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getIfd()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    goto :goto_1

    .line 70
    :pswitch_2
    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->getTag()Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataType()S

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    .line 72
    invoke-virtual {v3, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->readFullTagValue(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)V

    .line 74
    :cond_1
    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getIfd()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    goto :goto_1

    .line 77
    :pswitch_3
    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->getCompressedImageSize()I

    move-result v5

    new-array v0, v5, [B

    .line 78
    .local v0, "buf":[B
    array-length v5, v0

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->read([B)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 79
    invoke-virtual {v2, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    .line 81
    :cond_2
    const-string v5, "ExifReader"

    const-string v6, "Failed to read the compressed thumbnail"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    .end local v0    # "buf":[B
    :pswitch_4
    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->getStripSize()I

    move-result v5

    new-array v0, v5, [B

    .line 86
    .restart local v0    # "buf":[B
    array-length v5, v0

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->read([B)I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 87
    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->getStripIndex()I

    move-result v5

    invoke-virtual {v2, v5, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->setStripBytes(I[B)V

    goto :goto_1

    .line 89
    :cond_3
    const-string v5, "ExifReader"

    const-string v6, "Failed to read the strip bytes"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 95
    .end local v0    # "buf":[B
    :cond_4
    return-object v2

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
