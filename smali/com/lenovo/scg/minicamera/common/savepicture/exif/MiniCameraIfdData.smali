.class Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
.super Ljava/lang/Object;
.source "MiniCameraIfdData.java"


# static fields
.field private static final sIfds:[I


# instance fields
.field private final mExifTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private final mIfdId:I

.field private mOffsetToNextIfd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->sIfds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "ifdId"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mExifTags:Ljava/util/Map;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mOffsetToNextIfd:I

    .line 52
    iput p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mIfdId:I

    .line 53
    return-void
.end method

.method protected static getIfds()[I
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->sIfds:[I

    return-object v0
.end method


# virtual methods
.method protected checkCollision(S)Z
    .locals 2
    .param p1, "tagId"    # S

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 133
    if-ne p0, p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v7

    .line 136
    :cond_1
    if-nez p1, :cond_2

    move v7, v8

    .line 137
    goto :goto_0

    .line 139
    :cond_2
    instance-of v9, p1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    if-eqz v9, :cond_5

    move-object v1, p1

    .line 140
    check-cast v1, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;

    .line 141
    .local v1, "data":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getId()I

    move-result v9

    iget v10, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mIfdId:I

    if-ne v9, v10, :cond_5

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getTagCount()I

    move-result v9

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getTagCount()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 142
    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->getAllTags()[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    move-result-object v6

    .line 143
    .local v6, "tags":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    move-object v0, v6

    .local v0, "arr$":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 144
    .local v4, "tag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getTagId()S

    move-result v9

    invoke-static {v9}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifInterface;->isOffsetTag(S)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 143
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    :cond_4
    iget-object v9, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getTagId()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 148
    .local v5, "tag2":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    invoke-virtual {v4, v5}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    move v7, v8

    .line 149
    goto :goto_0

    .end local v0    # "arr$":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .end local v1    # "data":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "tag":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .end local v5    # "tag2":Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .end local v6    # "tags":[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    :cond_5
    move v7, v8

    .line 155
    goto :goto_0
.end method

.method protected getAllTags()[Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    return-object v0
.end method

.method protected getId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mIfdId:I

    return v0
.end method

.method protected getOffsetToNextIfd()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mOffsetToNextIfd:I

    return v0
.end method

.method protected getTag(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .locals 2
    .param p1, "tagId"    # S

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    return-object v0
.end method

.method protected getTagCount()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected removeTag(S)V
    .locals 2
    .param p1, "tagId"    # S

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method protected setOffsetToNextIfd(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mOffsetToNextIfd:I

    .line 118
    return-void
.end method

.method protected setTag(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .locals 2
    .param p1, "tag"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .prologue
    .line 91
    iget v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mIfdId:I

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->setIfd(I)V

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraIfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    return-object v0
.end method
