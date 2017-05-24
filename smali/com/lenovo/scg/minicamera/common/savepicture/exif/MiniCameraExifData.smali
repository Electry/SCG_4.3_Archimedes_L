.class Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;
.super Ljava/lang/Object;
.source "MiniCameraExifData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifData"

.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

.field private mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 43
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->USER_COMMENT_ASCII:[B

    .line 45
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->USER_COMMENT_JIS:[B

    .line 47
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->USER_COMMENT_UNICODE:[B

    return-void

    .line 43
    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 45
    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 47
    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mIfdDatas:[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 59
    return-void
.end method


# virtual methods
.method protected addIfdData(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;)V
    .locals 2
    .param p1, "data"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mIfdDatas:[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    .line 146
    return-void
.end method

.method protected addTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .locals 2
    .param p1, "tag"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getIfd()I

    move-result v0

    .line 177
    .local v0, "ifd":I
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->addTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v1

    .line 179
    .end local v0    # "ifd":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected addTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .locals 2
    .param p1, "tag"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .param p2, "ifdId"    # I

    .prologue
    .line 187
    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->isValidIfd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getOrCreateIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v0

    .line 189
    .local v0, "ifdData":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v1

    .line 191
    .end local v0    # "ifdData":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mThumbnail:[B

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 324
    if-ne p0, p1, :cond_0

    move v4, v6

    .line 349
    :goto_0
    return v4

    .line 327
    :cond_0
    if-nez p1, :cond_1

    move v4, v7

    .line 328
    goto :goto_0

    .line 330
    :cond_1
    instance-of v4, p1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    if-eqz v4, :cond_8

    move-object v0, p1

    .line 331
    check-cast v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;

    .line 332
    .local v0, "data":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;
    iget-object v4, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mThumbnail:[B

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mThumbnail:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v4, v7

    .line 333
    goto :goto_0

    .line 335
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 336
    iget-object v4, v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v7

    .line 337
    goto :goto_0

    .line 335
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 340
    :cond_5
    const/4 v1, 0x0

    :goto_2
    const/4 v4, 0x5

    if-ge v1, v4, :cond_7

    .line 341
    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v2

    .line 342
    .local v2, "ifd1":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    move-result-object v3

    .line 343
    .local v3, "ifd2":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v7

    .line 344
    goto :goto_0

    .line 340
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v2    # "ifd1":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    .end local v3    # "ifd2":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    :cond_7
    move v4, v6

    .line 347
    goto :goto_0

    .end local v0    # "data":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;
    .end local v1    # "i":I
    :cond_8
    move v4, v7

    .line 349
    goto :goto_0
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v7, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;>;"
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mIfdDatas:[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    .local v0, "arr$":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 264
    .local v2, "d":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getAllTags()[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v9

    .line 266
    .local v9, "tags":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-eqz v9, :cond_0

    .line 267
    move-object v1, v9

    .local v1, "arr$":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v8, v1, v3

    .line 268
    .local v8, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 263
    .end local v1    # "arr$":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .end local v9    # "tags":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 273
    .end local v2    # "d":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_2

    .line 274
    const/4 v7, 0x0

    .line 276
    .end local v7    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;>;"
    :cond_2
    return-object v7
.end method

.method protected getAllTagsForIfd(I)Ljava/util/List;
    .locals 9
    .param p1, "ifd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 284
    iget-object v8, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mIfdDatas:[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    aget-object v1, v8, p1

    .line 285
    .local v1, "d":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-nez v1, :cond_1

    move-object v4, v7

    .line 299
    :cond_0
    :goto_0
    return-object v4

    .line 288
    :cond_1
    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getAllTags()[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v6

    .line 289
    .local v6, "tags":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-nez v6, :cond_2

    move-object v4, v7

    .line 290
    goto :goto_0

    .line 292
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    array-length v8, v6

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;>;"
    move-object v0, v6

    .local v0, "arr$":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 294
    .local v5, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 296
    .end local v5    # "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    move-object v4, v7

    .line 297
    goto :goto_0
.end method

.method protected getAllTagsForTagId(S)Ljava/util/List;
    .locals 7
    .param p1, "tag"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;>;"
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mIfdDatas:[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    .local v0, "arr$":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 309
    .local v1, "d":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getTag(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v5

    .line 311
    .local v5, "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-eqz v5, :cond_0

    .line 312
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v5    # "t":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    .end local v1    # "d":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 317
    const/4 v4, 0x0

    .line 319
    .end local v4    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;>;"
    :cond_2
    return-object v4
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mThumbnail:[B

    return-object v0
.end method

.method protected getIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    .locals 1
    .param p1, "ifdId"    # I

    .prologue
    .line 134
    invoke-static {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mIfdDatas:[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    aget-object v0, v0, p1

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOrCreateIfdData(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    .locals 2
    .param p1, "ifdId"    # I

    .prologue
    .line 153
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mIfdDatas:[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    aget-object v0, v1, p1

    .line 154
    .local v0, "ifdData":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    .end local v0    # "ifdData":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    invoke-direct {v0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;-><init>(I)V

    .line 156
    .restart local v0    # "ifdData":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mIfdDatas:[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    aput-object v0, v1, p1

    .line 158
    :cond_0
    return-object v0
.end method

.method protected getStrip(I)[B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected getStripCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTag(SI)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .locals 2
    .param p1, "tag"    # S
    .param p2, "ifd"    # I

    .prologue
    .line 166
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mIfdDatas:[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    aget-object v0, v1, p2

    .line 167
    .local v0, "ifdData":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getTag(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v1

    goto :goto_0
.end method

.method protected getUserComment()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x8

    .line 223
    iget-object v6, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mIfdDatas:[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    aget-object v3, v6, v8

    .line 224
    .local v3, "ifdData":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-nez v3, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-object v5

    .line 227
    :cond_1
    sget v6, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->getTrueTagKey(I)S

    move-result v6

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getTag(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v4

    .line 228
    .local v4, "tag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    if-eqz v4, :cond_0

    .line 231
    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v6

    if-lt v6, v7, :cond_0

    .line 235
    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getComponentCount()I

    move-result v6

    new-array v0, v6, [B

    .line 236
    .local v0, "buf":[B
    invoke-virtual {v4, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getBytes([B)V

    .line 238
    new-array v1, v7, [B

    .line 239
    .local v1, "code":[B
    invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    :try_start_0
    sget-object v6, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->USER_COMMENT_ASCII:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 243
    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x8

    array-length v8, v0

    add-int/lit8 v8, v8, -0x8

    const-string v9, "US-ASCII"

    invoke-direct {v6, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v5, v6

    goto :goto_0

    .line 244
    :cond_2
    sget-object v6, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->USER_COMMENT_JIS:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 245
    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x8

    array-length v8, v0

    add-int/lit8 v8, v8, -0x8

    const-string v9, "EUC-JP"

    invoke-direct {v6, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v5, v6

    goto :goto_0

    .line 246
    :cond_3
    sget-object v6, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->USER_COMMENT_UNICODE:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 247
    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x8

    array-length v8, v0

    add-int/lit8 v8, v8, -0x8

    const-string v9, "UTF-16"

    invoke-direct {v6, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 251
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "ExifData"

    const-string v7, "Failed to decode the user comment"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected hasCompressedThumbnail()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mThumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasUncompressedStrip()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeTag(SI)V
    .locals 2
    .param p1, "tagId"    # S
    .param p2, "ifdId"    # I

    .prologue
    .line 211
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mIfdDatas:[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    aget-object v0, v1, p2

    .line 212
    .local v0, "ifdData":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->removeTag(S)V

    goto :goto_0
.end method

.method protected removeThumbnailData()V
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->clearThumbnailAndStrips()V

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mIfdDatas:[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 205
    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0
    .param p1, "thumbnail"    # [B

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mThumbnail:[B

    .line 76
    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "strip"    # [B

    .prologue
    .line 89
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
