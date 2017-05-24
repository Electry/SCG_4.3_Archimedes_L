.class Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;
.super Ljava/lang/Object;
.source "MiniCameraExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier$TagOffset;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ExifModifier"


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

.field private mOffsetBase:I

.field private final mTagOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier$TagOffset;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagToModified:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;)V
    .locals 5
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "iRef"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mTagOffsets:Ljava/util/List;

    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mOffsetBase:I

    .line 67
    iput-object p2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraByteBufferInputStream;

    invoke-direct {v1, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    invoke-static {v1, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->parse(Ljava/io/InputStream;Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;

    move-result-object v2

    .line 73
    .local v2, "parser":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
    new-instance v3, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mTagToModified:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    .line 74
    iget v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mOffsetBase:I

    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->getTiffStartPosition()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mOffsetBase:I

    .line 75
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 79
    return-void

    .line 77
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "parser":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
    .restart local v0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    :goto_0
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private modify()V
    .locals 4

    .prologue
    .line 152
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 153
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mTagOffsets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier$TagOffset;

    .line 154
    .local v1, "tagOffset":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier$TagOffset;
    iget-object v2, v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier$TagOffset;->mTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    iget v3, v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier$TagOffset;->mOffset:I

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->writeTagValue(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;I)V

    goto :goto_0

    .line 156
    .end local v1    # "tagOffset":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier$TagOffset;
    :cond_0
    return-void
.end method

.method private writeTagValue(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;I)V
    .locals 8
    .param p1, "tag"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .param p2, "offset"    # I

    .prologue
    const/4 v6, 0x0

    .line 163
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mOffsetBase:I

    add-int/2addr v5, p2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataType()S

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 166
    :pswitch_1
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getStringByte()[B

    move-result-object v0

    .line 167
    .local v0, "buf":[B
    array-length v4, v0

    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 168
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aput-byte v6, v0, v4

    .line 169
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 171
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 172
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 177
    .end local v0    # "buf":[B
    :pswitch_2
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 178
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAt(I)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    .end local v1    # "i":I
    .end local v2    # "n":I
    :pswitch_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 184
    invoke-virtual {p1, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getRational(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;

    move-result-object v3

    .line 185
    .local v3, "v":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->getNumerator()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 186
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->getDenominator()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 191
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "v":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    :pswitch_4
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v4

    new-array v0, v4, [B

    .line 192
    .restart local v0    # "buf":[B
    invoke-virtual {p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getBytes([B)V

    .line 193
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 196
    .end local v0    # "buf":[B
    :pswitch_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_3
    if-ge v1, v2, :cond_0

    .line 197
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getValueAt(I)J

    move-result-wide v6

    long-to-int v5, v6

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 164
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


# virtual methods
.method protected commit()Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v8, 0x0

    .line 88
    .local v8, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraByteBufferInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v9, v14}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    .end local v8    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 90
    .local v4, "flag":I
    const/4 v14, 0x5

    :try_start_1
    new-array v7, v14, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mTagToModified:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mTagToModified:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mTagToModified:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mTagToModified:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mTagToModified:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v15

    aput-object v15, v7, v14

    .line 94
    .local v7, "ifdDatas":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    const/4 v14, 0x0

    aget-object v14, v7, v14

    if-eqz v14, :cond_0

    .line 95
    or-int/lit8 v4, v4, 0x1

    .line 97
    :cond_0
    const/4 v14, 0x1

    aget-object v14, v7, v14

    if-eqz v14, :cond_1

    .line 98
    or-int/lit8 v4, v4, 0x2

    .line 100
    :cond_1
    const/4 v14, 0x2

    aget-object v14, v7, v14

    if-eqz v14, :cond_2

    .line 101
    or-int/lit8 v4, v4, 0x4

    .line 103
    :cond_2
    const/4 v14, 0x4

    aget-object v14, v7, v14

    if-eqz v14, :cond_3

    .line 104
    or-int/lit8 v4, v4, 0x8

    .line 106
    :cond_3
    const/4 v14, 0x3

    aget-object v14, v7, v14

    if-eqz v14, :cond_4

    .line 107
    or-int/lit8 v4, v4, 0x10

    .line 110
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mInterface:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;

    invoke-static {v9, v4, v14}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->parse(Ljava/io/InputStream;ILcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;

    move-result-object v13

    .line 111
    .local v13, "parser":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
    invoke-virtual {v13}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->next()I

    move-result v3

    .line 112
    .local v3, "event":I
    const/4 v2, 0x0

    .line 113
    .local v2, "currIfd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    :goto_0
    const/4 v14, 0x5

    if-eq v3, v14, :cond_8

    .line 114
    packed-switch v3, :pswitch_data_0

    .line 137
    :cond_5
    :goto_1
    invoke-virtual {v13}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->next()I

    move-result v3

    goto :goto_0

    .line 116
    :pswitch_0
    invoke-virtual {v13}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->getCurrentIfd()I

    move-result v14

    aget-object v2, v7, v14

    .line 117
    if-nez v2, :cond_5

    .line 118
    invoke-virtual {v13}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->skipRemainingTagsInCurrentIfd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 146
    .end local v2    # "currIfd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    .end local v3    # "event":I
    .end local v7    # "ifdDatas":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    .end local v13    # "parser":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
    :catchall_0
    move-exception v14

    move-object v8, v9

    .end local v4    # "flag":I
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :goto_2
    invoke-static {v8}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v14

    .line 122
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v2    # "currIfd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    .restart local v3    # "event":I
    .restart local v4    # "flag":I
    .restart local v7    # "ifdDatas":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v13    # "parser":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
    :pswitch_1
    :try_start_2
    invoke-virtual {v13}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->getTag()Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v12

    .line 123
    .local v12, "oldTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    invoke-virtual {v12}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getTagId()S

    move-result v14

    invoke-virtual {v2, v14}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getTag(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v11

    .line 124
    .local v11, "newTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-eqz v11, :cond_5

    .line 125
    invoke-virtual {v11}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v14

    invoke-virtual {v12}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v15

    if-ne v14, v15, :cond_6

    invoke-virtual {v11}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataType()S

    move-result v14

    invoke-virtual {v12}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getDataType()S
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v15

    if-eq v14, v15, :cond_7

    .line 126
    :cond_6
    const/4 v14, 0x0

    .line 146
    invoke-static {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 148
    .end local v11    # "newTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .end local v12    # "oldTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :goto_3
    return v14

    .line 128
    .restart local v11    # "newTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .restart local v12    # "oldTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mTagOffsets:Ljava/util/List;

    new-instance v15, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier$TagOffset;

    invoke-virtual {v12}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getOffset()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v15, v11, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier$TagOffset;-><init>(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;I)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v12}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getTagId()S

    move-result v14

    invoke-virtual {v2, v14}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->removeTag(S)V

    .line 130
    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getTagCount()I

    move-result v14

    if-nez v14, :cond_5

    .line 131
    invoke-virtual {v13}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    .line 139
    .end local v11    # "newTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .end local v12    # "oldTag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_8
    move-object v1, v7

    .local v1, "arr$":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_4
    if-ge v5, v10, :cond_a

    aget-object v6, v1, v5

    .line 140
    .local v6, "ifd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getTagCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v14

    if-lez v14, :cond_9

    .line 141
    const/4 v14, 0x0

    .line 146
    invoke-static {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    .line 139
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 144
    .end local v6    # "ifd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    :cond_a
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->modify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    invoke-static {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 148
    const/4 v14, 0x1

    goto :goto_3

    .line 146
    .end local v1    # "arr$":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    .end local v2    # "currIfd":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    .end local v3    # "event":I
    .end local v4    # "flag":I
    .end local v5    # "i$":I
    .end local v7    # "ifdDatas":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "len$":I
    .end local v13    # "parser":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v14

    goto :goto_2

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mTagToModified:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public modifyTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)V
    .locals 1
    .param p1, "tag"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;->mTagToModified:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->addTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 205
    return-void
.end method
