.class public abstract Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
.super Lcom/lenovo/scg/gallery3d/data/MediaItem;
.source "LocalMediaItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalMediaItem"


# instance fields
.field public bucketId:I

.field public caption:Ljava/lang/String;

.field public dateAddedInSec:J

.field public dateModifiedInSec:J

.field public dateTakenInMs:J

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public height:I

.field public id:I

.field public latitude:D

.field public longitude:D

.field public mimeType:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "version"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 44
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->latitude:D

    .line 46
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->longitude:D

    .line 64
    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->bucketId:I

    return v0
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    return-wide v0
.end method

.method public getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x1

    .line 96
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 97
    .local v0, "details":Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    const/16 v2, 0xc8

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 98
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v0, v8, v2}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 99
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 102
    .local v1, "formater":Ljava/text/DateFormat;
    const/4 v2, 0x3

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 104
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 105
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 107
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [D

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v6, v3, v4

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v4, v3, v8

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 110
    :cond_0
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->fileSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/16 v2, 0xa

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->fileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 113
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 114
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 116
    return-object v0
.end method

.method public getLatLong([D)V
    .locals 4
    .param p1, "latLong"    # [D

    .prologue
    .line 78
    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v2, p1, v0

    .line 79
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v2, p1, v0

    .line 80
    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->fileSize:J

    return-wide v0
.end method

.method protected updateContent(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->mDataVersion:J

    .line 92
    :cond_0
    return-void
.end method

.method protected abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
