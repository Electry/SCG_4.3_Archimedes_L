.class public Lcom/lenovo/scg/photos/data/PhotoProvider;
.super Lcom/lenovo/scg/photos/data/SQLiteContentProvider;
.source "PhotoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/photos/data/PhotoProvider$Metadata;,
        Lcom/lenovo/scg/photos/data/PhotoProvider$Albums;,
        Lcom/lenovo/scg/photos/data/PhotoProvider$Photos;,
        Lcom/lenovo/scg/photos/data/PhotoProvider$Accounts;,
        Lcom/lenovo/scg/photos/data/PhotoProvider$ChangeNotification;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lenovo.scg.gallery3d.photoprovider"

.field protected static final BASE_COLUMNS_ID:[Ljava/lang/String;

.field static final BASE_CONTENT_URI:Landroid/net/Uri;

.field protected static final DB_NAME:Ljava/lang/String; = "photo.db"

.field protected static final DELETE_METADATA:Ljava/lang/String; = "DELETE FROM metadata"

.field protected static final DELETE_PHOTOS:Ljava/lang/String; = "DELETE FROM photos"

.field protected static final IN:Ljava/lang/String; = " IN "

.field protected static final MATCH_ACCOUNT:I = 0x7

.field protected static final MATCH_ACCOUNT_ID:I = 0x8

.field protected static final MATCH_ALBUM:I = 0x3

.field protected static final MATCH_ALBUM_ID:I = 0x4

.field protected static final MATCH_METADATA:I = 0x5

.field protected static final MATCH_METADATA_ID:I = 0x6

.field protected static final MATCH_PHOTO:I = 0x1

.field protected static final MATCH_PHOTO_ID:I = 0x2

.field protected static final NESTED_SELECT_END:Ljava/lang/String; = ")"

.field protected static final NESTED_SELECT_START:Ljava/lang/String; = "("

.field protected static final PROJECTION_COUNT:[Ljava/lang/String;

.field private static final PROJECTION_MIME_TYPE:[Ljava/lang/String;

.field protected static final SELECT_ALBUM_ID:Ljava/lang/String; = "SELECT _id FROM albums"

.field protected static final SELECT_METADATA_COUNT:Ljava/lang/String; = "SELECT COUNT(*) FROM metadata"

.field protected static final SELECT_PHOTO_COUNT:Ljava/lang/String; = "SELECT COUNT(*) FROM photos"

.field protected static final SELECT_PHOTO_ID:Ljava/lang/String; = "SELECT _id FROM photos"

.field private static final TAG:Ljava/lang/String;

.field protected static final WHERE:Ljava/lang/String; = " WHERE "

.field protected static final WHERE_ID:Ljava/lang/String; = "_id = ?"

.field protected static final WHERE_METADATA_ID:Ljava/lang/String; = "photo_id = ? AND key = ?"

.field protected static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field protected mNotifier:Lcom/lenovo/scg/photos/data/PhotoProvider$ChangeNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 56
    const-class v0, Lcom/lenovo/scg/photos/data/PhotoProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.lenovo.scg.gallery3d.photoprovider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->BASE_CONTENT_URI:Landroid/net/Uri;

    .line 292
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "COUNT(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->PROJECTION_COUNT:[Ljava/lang/String;

    .line 297
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v2

    sput-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->PROJECTION_MIME_TYPE:[Ljava/lang/String;

    .line 299
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->BASE_COLUMNS_ID:[Ljava/lang/String;

    .line 303
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 322
    sget-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.scg.gallery3d.photoprovider"

    const-string/jumbo v2, "photos"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 324
    sget-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.scg.gallery3d.photoprovider"

    const-string/jumbo v2, "photos/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 325
    sget-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.scg.gallery3d.photoprovider"

    const-string v2, "albums"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 327
    sget-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.scg.gallery3d.photoprovider"

    const-string v2, "albums/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 328
    sget-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.scg.gallery3d.photoprovider"

    const-string/jumbo v2, "metadata"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    sget-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.scg.gallery3d.photoprovider"

    const-string/jumbo v2, "metadata/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 331
    sget-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.scg.gallery3d.photoprovider"

    const-string v2, "accounts"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 333
    sget-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.scg.gallery3d.photoprovider"

    const-string v2, "accounts/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 334
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/photos/data/SQLiteContentProvider;-><init>()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/PhotoProvider;->mNotifier:Lcom/lenovo/scg/photos/data/PhotoProvider$ChangeNotification;

    return-void
.end method

.method protected static addIdToSelection(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "match"    # I
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 413
    packed-switch p0, :pswitch_data_0

    .line 422
    .end local p1    # "selection":Ljava/lang/String;
    :goto_0
    :pswitch_0
    return-object p1

    .line 417
    .restart local p1    # "selection":Ljava/lang/String;
    :pswitch_1
    const-string v0, "_id = ?"

    .line 422
    .local v0, "where":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static addIdToSelectionArgs(ILandroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "match"    # I
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 427
    packed-switch p0, :pswitch_data_0

    .line 436
    .end local p2    # "selectionArgs":[Ljava/lang/String;
    :goto_0
    :pswitch_0
    return-object p2

    .line 431
    .restart local p2    # "selectionArgs":[Ljava/lang/String;
    :pswitch_1
    new-array v0, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v2

    .line 436
    .local v0, "whereArgs":[Ljava/lang/String;
    invoke-static {p2, v0}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static addMetadataKeysToSelectionArgs([Ljava/lang/String;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 6
    .param p0, "selectionArgs"    # [Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 440
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 441
    .local v1, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v0, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v4

    .line 443
    .local v0, "additionalArgs":[Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static albumSelectionFromAccounts(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "where"    # Ljava/lang/String;

    .prologue
    .line 527
    const-string v0, "account_id"

    const-string v1, "accounts"

    invoke-static {v0, v1, p0}, Lcom/lenovo/scg/photos/data/PhotoProvider;->nestWhere(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getTableFromMatch(ILandroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "match"    # I
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 448
    packed-switch p0, :pswitch_data_0

    .line 466
    invoke-static {p1}, Lcom/lenovo/scg/photos/data/PhotoProvider;->unknownUri(Landroid/net/Uri;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 451
    :pswitch_0
    const-string/jumbo v0, "photos"

    .line 468
    .local v0, "table":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 455
    .end local v0    # "table":Ljava/lang/String;
    :pswitch_1
    const-string v0, "albums"

    .line 456
    .restart local v0    # "table":Ljava/lang/String;
    goto :goto_0

    .line 459
    .end local v0    # "table":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "metadata"

    .line 460
    .restart local v0    # "table":Ljava/lang/String;
    goto :goto_0

    .line 463
    .end local v0    # "table":Ljava/lang/String;
    :pswitch_3
    const-string v0, "accounts"

    .line 464
    .restart local v0    # "table":Ljava/lang/String;
    goto :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private matchUri(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 489
    sget-object v1, Lcom/lenovo/scg/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 490
    .local v0, "match":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 491
    invoke-static {p1}, Lcom/lenovo/scg/photos/data/PhotoProvider;->unknownUri(Landroid/net/Uri;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 493
    :cond_0
    return v0
.end method

.method protected static metadataSelectionFromPhotos(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "where"    # Ljava/lang/String;

    .prologue
    .line 515
    const-string/jumbo v0, "photo_id"

    const-string/jumbo v1, "photos"

    invoke-static {v0, v1, p0}, Lcom/lenovo/scg/photos/data/PhotoProvider;->nestWhere(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private modifyMetadata(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 478
    const-string/jumbo v5, "value"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 479
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v5, "photo_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    const-string v5, "key"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 480
    .local v1, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, "metadata"

    const-string/jumbo v5, "photo_id = ? AND key = ?"

    invoke-virtual {p1, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 485
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    .local v0, "rowCount":I
    :goto_0
    return v0

    .line 482
    .end local v0    # "rowCount":I
    :cond_0
    const-string/jumbo v5, "metadata"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 483
    .local v2, "rowId":J
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .restart local v0    # "rowCount":I
    :goto_1
    goto :goto_0

    .end local v0    # "rowCount":I
    :cond_1
    move v0, v4

    goto :goto_1
.end method

.method protected static nestWhere(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "matchColumn"    # Ljava/lang/String;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nestedWhere"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 510
    const/4 v0, 0x0

    sget-object v2, Lcom/lenovo/scg/photos/data/PhotoProvider;->BASE_COLUMNS_ID:[Ljava/lang/String;

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 511
    .local v8, "query":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static photoSelectionFromAccounts(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "where"    # Ljava/lang/String;

    .prologue
    .line 523
    const-string v0, "account_id"

    const-string v1, "accounts"

    invoke-static {v0, v1, p0}, Lcom/lenovo/scg/photos/data/PhotoProvider;->nestWhere(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static photoSelectionFromAlbums(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "where"    # Ljava/lang/String;

    .prologue
    .line 519
    const-string v0, "album_id"

    const-string v1, "albums"

    invoke-static {v0, v1, p0}, Lcom/lenovo/scg/photos/data/PhotoProvider;->nestWhere(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static replaceCount([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "projection"    # [Ljava/lang/String;

    .prologue
    .line 577
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "_count"

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    sget-object p0, Lcom/lenovo/scg/photos/data/PhotoProvider;->PROJECTION_COUNT:[Ljava/lang/String;

    .line 580
    .end local p0    # "projection":[Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method protected static unknownUri(Landroid/net/Uri;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Uri format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static validateMatchTable(I)V
    .locals 2
    .param p0, "match"    # I

    .prologue
    .line 556
    packed-switch p0, :pswitch_data_0

    .line 563
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Operation not allowed on an existing row."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :pswitch_1
    return-void

    .line 556
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "match"    # I
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 531
    packed-switch p2, :pswitch_data_0

    .line 546
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/data/PhotoProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 547
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p2, p1}, Lcom/lenovo/scg/photos/data/PhotoProvider;->getTableFromMatch(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "table":Ljava/lang/String;
    invoke-virtual {v0, v2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 549
    .local v1, "deleted":I
    if-lez v1, :cond_0

    .line 550
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/photos/data/PhotoProvider;->postNotifyUri(Landroid/net/Uri;)V

    .line 552
    :cond_0
    return v1

    .line 534
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "deleted":I
    .end local v2    # "table":Ljava/lang/String;
    :pswitch_1
    sget-object v3, Lcom/lenovo/scg/photos/data/PhotoProvider$Metadata;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x5

    invoke-static {p3}, Lcom/lenovo/scg/photos/data/PhotoProvider;->metadataSelectionFromPhotos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5, p4}, Lcom/lenovo/scg/photos/data/PhotoProvider;->deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 538
    :pswitch_2
    sget-object v3, Lcom/lenovo/scg/photos/data/PhotoProvider$Photos;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3}, Lcom/lenovo/scg/photos/data/PhotoProvider;->photoSelectionFromAlbums(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v5, v4, p4}, Lcom/lenovo/scg/photos/data/PhotoProvider;->deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :pswitch_3
    sget-object v3, Lcom/lenovo/scg/photos/data/PhotoProvider$Photos;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3}, Lcom/lenovo/scg/photos/data/PhotoProvider;->photoSelectionFromAccounts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v5, v4, p4}, Lcom/lenovo/scg/photos/data/PhotoProvider;->deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I

    .line 543
    sget-object v3, Lcom/lenovo/scg/photos/data/PhotoProvider$Albums;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    invoke-static {p3}, Lcom/lenovo/scg/photos/data/PhotoProvider;->albumSelectionFromAccounts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5, p4}, Lcom/lenovo/scg/photos/data/PhotoProvider;->deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "callerIsSyncAdapter"    # Z

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/data/PhotoProvider;->matchUri(Landroid/net/Uri;)I

    move-result v0

    .line 339
    .local v0, "match":I
    invoke-static {v0, p2}, Lcom/lenovo/scg/photos/data/PhotoProvider;->addIdToSelection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 340
    invoke-static {v0, p1, p3}, Lcom/lenovo/scg/photos/data/PhotoProvider;->addIdToSelectionArgs(ILandroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 341
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/lenovo/scg/photos/data/PhotoProvider;->deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 473
    new-instance v0, Lcom/lenovo/scg/photos/data/PhotoDatabase;

    const-string/jumbo v1, "photo.db"

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/photos/data/PhotoDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 346
    sget-object v2, Lcom/lenovo/scg/photos/data/PhotoProvider;->PROJECTION_MIME_TYPE:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/photos/data/PhotoProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 347
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 348
    .local v7, "mimeType":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 351
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 352
    return-object v7
.end method

.method public insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "callerIsSyncAdapter"    # Z

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/data/PhotoProvider;->matchUri(Landroid/net/Uri;)I

    move-result v4

    .line 358
    .local v4, "match":I
    invoke-static {v4}, Lcom/lenovo/scg/photos/data/PhotoProvider;->validateMatchTable(I)V

    .line 359
    invoke-static {v4, p1}, Lcom/lenovo/scg/photos/data/PhotoProvider;->getTableFromMatch(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "table":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/data/PhotoProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 361
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 362
    .local v1, "insertedUri":Landroid/net/Uri;
    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 363
    .local v2, "id":J
    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 365
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 366
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/photos/data/PhotoProvider;->postNotifyUri(Landroid/net/Uri;)V

    .line 368
    :cond_0
    return-object v1
.end method

.method protected notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "syncToNetwork"    # Z

    .prologue
    .line 498
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/PhotoProvider;->mNotifier:Lcom/lenovo/scg/photos/data/PhotoProvider$ChangeNotification;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/PhotoProvider;->mNotifier:Lcom/lenovo/scg/photos/data/PhotoProvider$ChangeNotification;

    invoke-interface {v0, p2, p3}, Lcom/lenovo/scg/photos/data/PhotoProvider$ChangeNotification;->notifyChange(Landroid/net/Uri;Z)V

    .line 503
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/photos/data/SQLiteContentProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 373
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/photos/data/PhotoProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 378
    invoke-static {p2}, Lcom/lenovo/scg/photos/data/PhotoProvider;->replaceCount([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 379
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/data/PhotoProvider;->matchUri(Landroid/net/Uri;)I

    move-result v8

    .line 380
    .local v8, "match":I
    invoke-static {v8, p3}, Lcom/lenovo/scg/photos/data/PhotoProvider;->addIdToSelection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 381
    invoke-static {v8, p1, p4}, Lcom/lenovo/scg/photos/data/PhotoProvider;->addIdToSelectionArgs(ILandroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 382
    invoke-static {v8, p1}, Lcom/lenovo/scg/photos/data/PhotoProvider;->getTableFromMatch(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .local v1, "table":Ljava/lang/String;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 383
    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/photos/data/PhotoProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 384
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/data/PhotoProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v7, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 387
    :cond_0
    return-object v7
.end method

.method protected query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/data/PhotoProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 569
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_CANCELLATION_SIGNAL:Z

    if-eqz v1, :cond_0

    .line 570
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 572
    :goto_0
    return-object v1

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method public setMockNotification(Lcom/lenovo/scg/photos/data/PhotoProvider$ChangeNotification;)V
    .locals 0
    .param p1, "notification"    # Lcom/lenovo/scg/photos/data/PhotoProvider$ChangeNotification;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/lenovo/scg/photos/data/PhotoProvider;->mNotifier:Lcom/lenovo/scg/photos/data/PhotoProvider$ChangeNotification;

    .line 409
    return-void
.end method

.method public updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/data/PhotoProvider;->matchUri(Landroid/net/Uri;)I

    move-result v1

    .line 393
    .local v1, "match":I
    const/4 v2, 0x0

    .line 394
    .local v2, "rowsUpdated":I
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/data/PhotoProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 395
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    .line 396
    invoke-direct {p0, v0, p2}, Lcom/lenovo/scg/photos/data/PhotoProvider;->modifyMetadata(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v2

    .line 403
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/photos/data/PhotoProvider;->postNotifyUri(Landroid/net/Uri;)V

    .line 404
    return v2

    .line 398
    :cond_0
    invoke-static {v1, p3}, Lcom/lenovo/scg/photos/data/PhotoProvider;->addIdToSelection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 399
    invoke-static {v1, p1, p4}, Lcom/lenovo/scg/photos/data/PhotoProvider;->addIdToSelectionArgs(ILandroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 400
    invoke-static {v1, p1}, Lcom/lenovo/scg/photos/data/PhotoProvider;->getTableFromMatch(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, "table":Ljava/lang/String;
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method
