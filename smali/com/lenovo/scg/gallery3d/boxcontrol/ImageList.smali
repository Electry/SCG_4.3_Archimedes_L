.class public Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;
.super Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;
.source "ImageList.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;


# static fields
.field static final IMAGE_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_DATA_PATH:I = 0x1

.field private static final INDEX_DATE_MODIFIED:I = 0x6

.field private static final INDEX_DATE_TAKEN:I = 0x2

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_MIME_TYPE:I = 0x5

.field private static final INDEX_ORIENTATION:I = 0x3

.field private static final INDEX_TITLE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ImageList"

.field private static final WHERE_CLAUSE_WITH_BUCKET_ID:Ljava/lang/String; = "bucket_id = ?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "sort"    # I
    .param p4, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected createCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->IMAGE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 83
    .local v6, "c":Landroid/database/Cursor;
    return-object v6
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "distinct"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 67
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "bucket_display_name"

    aput-object v3, v2, v4

    const-string v3, "bucket_id"

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 70
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v7, "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    .end local v7    # "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7    # "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v7
.end method

.method protected getImageId(Landroid/database/Cursor;)J
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected loadImageFromCursor(Landroid/database/Cursor;)Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 94
    .local v4, "id":J
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "dataPath":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 96
    .local v10, "dateTaken":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v10, v0, v2

    .line 99
    :cond_0
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 100
    .local v13, "orientation":I
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 101
    .local v12, "title":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, "mimeType":Ljava/lang/String;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 103
    :cond_1
    move-object v12, v8

    .line 105
    :cond_2
    new-instance v1, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v13}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    return-object v1
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->mBucketId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "bucket_id = ?"

    goto :goto_0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;->mBucketId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
