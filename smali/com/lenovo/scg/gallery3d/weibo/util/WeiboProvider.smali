.class public Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;
.super Landroid/content/ContentProvider;
.source "WeiboProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$DatabaseHelper;,
        Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;,
        Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$HomeListTime;,
        Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$HomeListPerson;,
        Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$UserInfos;,
        Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$CacheFiles;,
        Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WhiteList;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lenovo.scg.gallery3d.weibo"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final DATABASE_NAME:Ljava/lang/String; = "weibo.db"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final DRAFT_ACTION_COMMENT:I = 0x1

.field public static final DRAFT_ACTION_COMMENT_REPOST:I = 0x65

.field public static final DRAFT_ACTION_REPOST:I = 0x0

.field public static final DRAFT_ACTION_REPOST_COMMENT:I = 0x64

.field public static final DRAFT_ACTION_SHARE:I = 0x2

.field private static final DRAFT_INFO:I = 0x1388

.field private static final HOMELIST_PERSON:I = 0x7d0

.field private static final HOMELIST_TIME:I = 0xbb8

.field private static final IMAGECACHE:I = 0x3e8

.field public static final SHARE_TYPE_ALL:I = 0x2

.field public static final SHARE_TYPE_QQ:I = 0x1

.field public static final SHARE_TYPE_SINA:I = 0x0

.field private static final TAG:Ljava/lang/String; = "panhui4_WeiboProvider"

.field private static final USERINFO:I = 0xfa0

.field private static final WHITELIST:I = 0x1770

.field private static final WHITELIST_NAME_FILTER:I = 0x1771

.field private static final WHITELIST_SHIELD:I = 0x1772

.field private static mUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 45
    const-string v1, "content://com.lenovo.scg.gallery3d.weibo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->AUTHORITY_URI:Landroid/net/Uri;

    .line 49
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 50
    .local v0, "matcher":Landroid/content/UriMatcher;
    const-string v1, "com.lenovo.scg.gallery3d.weibo"

    const-string v2, "imagecache"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    const-string v1, "com.lenovo.scg.gallery3d.weibo"

    const-string v2, "homelist_person"

    const/16 v3, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    const-string v1, "com.lenovo.scg.gallery3d.weibo"

    const-string v2, "homelist_time"

    const/16 v3, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    const-string v1, "com.lenovo.scg.gallery3d.weibo"

    const-string/jumbo v2, "user_info"

    const/16 v3, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    const-string v1, "com.lenovo.scg.gallery3d.weibo"

    const-string/jumbo v2, "wb_draft"

    const/16 v3, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    const-string v1, "com.lenovo.scg.gallery3d.weibo"

    const-string/jumbo v2, "whitelist"

    const/16 v3, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    const-string v1, "com.lenovo.scg.gallery3d.weibo"

    const-string/jumbo v2, "whitelist/name_filter/*"

    const/16 v3, 0x1771

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    const-string v1, "com.lenovo.scg.gallery3d.weibo"

    const-string/jumbo v2, "whitelist/shield/#"

    const/16 v3, 0x1772

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 189
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 432
    .local v0, "count":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->mDbHelper:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 433
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 435
    .local v2, "match":I
    sparse-switch v2, :sswitch_data_0

    .line 457
    :goto_0
    return v0

    .line 437
    :sswitch_0
    const-string v3, "imagecache"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 438
    goto :goto_0

    .line 440
    :sswitch_1
    const-string v3, "homelist_person"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 441
    goto :goto_0

    .line 443
    :sswitch_2
    const-string v3, "homelist_time"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 444
    goto :goto_0

    .line 446
    :sswitch_3
    const-string/jumbo v3, "user_info"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 447
    goto :goto_0

    .line 449
    :sswitch_4
    const-string/jumbo v3, "wb_draft"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 450
    goto :goto_0

    .line 452
    :sswitch_5
    const-string/jumbo v3, "whitelist"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 435
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0xbb8 -> :sswitch_2
        0xfa0 -> :sswitch_3
        0x1388 -> :sswitch_4
        0x1770 -> :sswitch_5
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 306
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 307
    .local v0, "match":I
    sparse-switch v0, :sswitch_data_0

    .line 321
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :sswitch_0
    const-string/jumbo v1, "vnd.android.cursor.dir/cache"

    .line 319
    :goto_0
    return-object v1

    .line 311
    :sswitch_1
    const-string/jumbo v1, "vnd.android.cursor.item/person"

    goto :goto_0

    .line 313
    :sswitch_2
    const-string/jumbo v1, "vnd.android.cursor.item/time"

    goto :goto_0

    .line 315
    :sswitch_3
    const-string/jumbo v1, "vnd.android.cursor.dir/userinfo"

    goto :goto_0

    .line 317
    :sswitch_4
    const-string/jumbo v1, "vnd.android.cursor.item/draft"

    goto :goto_0

    .line 319
    :sswitch_5
    const-string/jumbo v1, "vnd.android.cursor.dir/whitelist"

    goto :goto_0

    .line 307
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0xbb8 -> :sswitch_2
        0xfa0 -> :sswitch_3
        0x1388 -> :sswitch_4
        0x1770 -> :sswitch_5
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v8, 0x0

    .line 327
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->mDbHelper:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 329
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p2, :cond_0

    .line 330
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 335
    .local v4, "values":Landroid/content/ContentValues;
    :goto_0
    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 336
    .local v1, "match":I
    const-wide/16 v2, -0x1

    .line 337
    .local v2, "rowID":J
    sparse-switch v1, :sswitch_data_0

    .line 375
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 332
    .end local v1    # "match":I
    .end local v2    # "rowID":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .restart local v4    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 339
    .restart local v1    # "match":I
    .restart local v2    # "rowID":J
    :sswitch_0
    const-string v5, "imagecache"

    const-string v6, "filename"

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 340
    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    .line 341
    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$CacheFiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 379
    :cond_1
    :goto_1
    return-object p1

    .line 345
    :sswitch_1
    const-string v5, "homelist_person"

    const-string/jumbo v6, "nick"

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 346
    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    .line 347
    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$HomeListPerson;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 351
    :sswitch_2
    const-string v5, "homelist_time"

    const-string/jumbo v6, "nick"

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 352
    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    .line 353
    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$HomeListTime;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 357
    :sswitch_3
    const-string/jumbo v5, "user_info"

    const-string/jumbo v6, "nick"

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 358
    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    .line 359
    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$UserInfos;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 363
    :sswitch_4
    const-string/jumbo v5, "wb_draft"

    const-string/jumbo v6, "nick"

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 364
    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    .line 365
    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 369
    :sswitch_5
    const-string/jumbo v5, "whitelist"

    const-string/jumbo v6, "nick"

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 370
    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    .line 371
    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WhiteList;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 337
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0xbb8 -> :sswitch_2
        0xfa0 -> :sswitch_3
        0x1388 -> :sswitch_4
        0x1770 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    .line 300
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "weibo.db"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->mDbHelper:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$DatabaseHelper;

    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 386
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 387
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 389
    .local v9, "match":I
    sparse-switch v9, :sswitch_data_0

    .line 418
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    :sswitch_0
    const-string v2, "imagecache"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 421
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->mDbHelper:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 422
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 424
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 425
    return-object v8

    .line 394
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :sswitch_1
    const-string v2, "homelist_person"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :sswitch_2
    const-string v2, "homelist_time"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :sswitch_3
    const-string/jumbo v2, "user_info"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :sswitch_4
    const-string/jumbo v2, "wb_draft"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :sswitch_5
    const-string/jumbo v2, "whitelist"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :sswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 410
    .local v10, "query":Ljava/lang/String;
    const-string/jumbo v2, "panhui4_WeiboProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query, WHITELIST_NAME_FILTER, query="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v2, "(nick LIKE \'%"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 412
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 413
    const-string v2, "%\')"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 414
    const-string/jumbo v2, "whitelist"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0xbb8 -> :sswitch_2
        0xfa0 -> :sswitch_3
        0x1388 -> :sswitch_4
        0x1770 -> :sswitch_5
        0x1771 -> :sswitch_6
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 465
    .local v3, "sContentR":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->mDbHelper:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 466
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 467
    .local v2, "match":I
    sparse-switch v2, :sswitch_data_0

    .line 500
    :goto_0
    return v0

    .line 469
    :sswitch_0
    const-string v6, "imagecache"

    invoke-virtual {v1, v6, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 470
    goto :goto_0

    .line 472
    :sswitch_1
    const-string v6, "homelist_person"

    invoke-virtual {v1, v6, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 473
    goto :goto_0

    .line 475
    :sswitch_2
    const-string v6, "homelist_time"

    invoke-virtual {v1, v6, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 476
    goto :goto_0

    .line 478
    :sswitch_3
    const-string/jumbo v6, "user_info"

    invoke-virtual {v1, v6, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 479
    goto :goto_0

    .line 481
    :sswitch_4
    const-string/jumbo v6, "wb_draft"

    invoke-virtual {v1, v6, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 482
    goto :goto_0

    .line 484
    :sswitch_5
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 485
    .local v4, "uuid":J
    if-nez p3, :cond_0

    .line 486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "user_uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 491
    :goto_1
    const-string/jumbo v6, "panhui4_WeiboProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update, WHITELIST_SHIELD, where="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string/jumbo v6, "whitelist"

    invoke-virtual {v1, v6, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 493
    goto :goto_0

    .line 488
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "user_uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 467
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0xbb8 -> :sswitch_2
        0xfa0 -> :sswitch_3
        0x1388 -> :sswitch_4
        0x1772 -> :sswitch_5
    .end sparse-switch
.end method
