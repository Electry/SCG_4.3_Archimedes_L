.class public Lcom/lenovo/scg/gallery3d/data/DownloadCache;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;,
        Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;,
        Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;,
        Lcom/lenovo/scg/gallery3d/data/DownloadCache$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final FREESPACE_IDNEX_DATA:I = 0x1

.field private static final FREESPACE_IDNEX_ID:I = 0x0

.field private static final FREESPACE_INDEX_CONTENT_SIZE:I = 0x3

.field private static final FREESPACE_INDEX_CONTENT_URL:I = 0x2

.field private static final FREESPACE_ORDER_BY:Ljava/lang/String;

.field private static final FREESPACE_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id = ?"

.field private static final LRU_CAPACITY:I = 0x4

.field private static final MAX_DELETE_COUNT:I = 0x10

.field private static final QUERY_INDEX_DATA:I = 0x1

.field private static final QUERY_INDEX_ID:I = 0x0

.field private static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final SUM_INDEX_SUM:I = 0x0

.field private static final SUM_PROJECTION:[Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DownloadCache"

.field private static final THREAD_POOL_NAME_DOWNLOADCACHE_DOWNLOADTASK:Ljava/lang/String; = "pool_downloadcache_downloadtask"

.field private static final WHERE_HASH_AND_URL:Ljava/lang/String;


# instance fields
.field private final mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private final mCapacity:J

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mEntryMap:Lcom/lenovo/scg/gallery3d/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/common/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mRoot:Ljava/io/File;

.field private final mTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 51
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/DownloadEntry;->SCHEMA:Lcom/lenovo/scg/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 55
    const-string v0, "%s = ? AND %s = ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "hash_code"

    aput-object v2, v1, v4

    const-string v2, "content_url"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->WHERE_HASH_AND_URL:Ljava/lang/String;

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "content_url"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    .line 63
    const-string v0, "%s ASC"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "last_access"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    .line 75
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "sum(%s)"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "_size"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->SUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;Ljava/io/File;J)V
    .locals 3
    .param p1, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .param p2, "root"    # Ljava/io/File;
    .param p3, "capacity"    # J

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/lenovo/scg/gallery3d/common/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mEntryMap:Lcom/lenovo/scg/gallery3d/common/LruCache;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTotalBytes:J

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mInitialized:Z

    .line 100
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    .line 101
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 102
    iput-wide p3, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mCapacity:J

    .line 103
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DatabaseHelper;

    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DatabaseHelper;-><init>(Lcom/lenovo/scg/gallery3d/data/DownloadCache;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/data/DownloadCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/data/DownloadCache;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/data/DownloadCache;Ljava/lang/String;Ljava/io/File;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/DownloadCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->insertEntry(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/data/DownloadCache;)Lcom/lenovo/scg/gallery3d/common/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mEntryMap:Lcom/lenovo/scg/gallery3d/common/LruCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/data/DownloadCache;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/DownloadCache;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->freeSomeSpaceIfNeed(I)V

    return-void
.end method

.method private findEntryInDatabase(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .locals 20
    .param p1, "stringUrl"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v16

    .line 108
    .local v16, "hash":J
    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x1

    aput-object p1, v8, v4

    .line 109
    .local v8, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v6, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->QUERY_PROJECTION:[Ljava/lang/String;

    sget-object v7, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->WHERE_HASH_AND_URL:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 111
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    new-instance v15, Ljava/io/File;

    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v15, "file":Ljava/io/File;
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v18, v0

    .line 114
    .local v18, "id":J
    const/4 v13, 0x0

    .line 115
    .local v13, "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mEntryMap:Lcom/lenovo/scg/gallery3d/common/LruCache;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mEntryMap:Lcom/lenovo/scg/gallery3d/common/LruCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;

    move-object v13, v0

    .line 117
    if-nez v13, :cond_0

    .line 118
    new-instance v14, Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v14, v0, v1, v2, v15}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;-><init>(Lcom/lenovo/scg/gallery3d/data/DownloadCache;JLjava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v13    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .local v14, "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mEntryMap:Lcom/lenovo/scg/gallery3d/common/LruCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v14}, Lcom/lenovo/scg/gallery3d/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v13, v14

    .line 121
    .end local v14    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .restart local v13    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 127
    .end local v13    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .end local v15    # "file":Ljava/io/File;
    .end local v18    # "id":J
    :goto_0
    return-object v13

    .line 121
    .restart local v13    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v18    # "id":J
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    .end local v13    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .end local v15    # "file":Ljava/io/File;
    .end local v18    # "id":J
    :catchall_1
    move-exception v4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 127
    const/4 v13, 0x0

    goto :goto_0

    .line 121
    .restart local v14    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v18    # "id":J
    :catchall_2
    move-exception v4

    move-object v13, v14

    .end local v14    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .restart local v13    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    goto :goto_1
.end method

.method private declared-synchronized freeSomeSpaceIfNeed(I)V
    .locals 18
    .param p1, "maxDeleteFileCount"    # I

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTotalBytes:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mCapacity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 198
    :goto_0
    monitor-exit p0

    return-void

    .line 175
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    .line 177
    .local v11, "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    if-lez p1, :cond_2

    :try_start_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTotalBytes:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mCapacity:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 179
    .local v12, "id":J
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 180
    .local v15, "url":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 181
    .local v16, "size":J
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 183
    .local v14, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mEntryMap:Lcom/lenovo/scg/gallery3d/common/LruCache;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mEntryMap:Lcom/lenovo/scg/gallery3d/common/LruCache;

    invoke-virtual {v2, v15}, Lcom/lenovo/scg/gallery3d/common/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 185
    .local v10, "containsKey":Z
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 186
    if-nez v10, :cond_1

    .line 187
    add-int/lit8 p1, p1, -0x1

    .line 188
    :try_start_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTotalBytes:J

    sub-long v2, v2, v16

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTotalBytes:J

    .line 189
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 196
    .end local v10    # "containsKey":Z
    .end local v12    # "id":J
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "url":Ljava/lang/String;
    .end local v16    # "size":J
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 174
    .end local v11    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 185
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "id":J
    .restart local v14    # "path":Ljava/lang/String;
    .restart local v15    # "url":Ljava/lang/String;
    .restart local v16    # "size":J
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 196
    .end local v12    # "id":J
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "url":Ljava/lang/String;
    .end local v16    # "size":J
    :cond_2
    :try_start_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0
.end method

.method private declared-synchronized initialize()V
    .locals 9

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 216
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mInitialized:Z

    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 219
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 222
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->SUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 223
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTotalBytes:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTotalBytes:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 229
    :cond_4
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 231
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTotalBytes:J

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mCapacity:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->freeSomeSpaceIfNeed(I)V

    goto :goto_0

    .line 229
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private declared-synchronized insertEntry(Ljava/lang/String;Ljava/io/File;)J
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 202
    .local v2, "size":J
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTotalBytes:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTotalBytes:J

    .line 204
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "hashCode":Ljava/lang/String;
    const-string v4, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v4, "hash_code"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v4, "content_url"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v4, "_size"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 210
    const-string v4, "last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    monitor-exit p0

    return-wide v4

    .line 201
    .end local v0    # "hashCode":Ljava/lang/String;
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "size":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private updateLastAccess(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 168
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "last_access"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    return-void
.end method


# virtual methods
.method public download(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .locals 8
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p2, "url"    # Ljava/net/URL;

    .prologue
    .line 131
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mInitialized:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->initialize()V

    .line 133
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "stringUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mEntryMap:Lcom/lenovo/scg/gallery3d/common/LruCache;

    monitor-enter v5

    .line 137
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mEntryMap:Lcom/lenovo/scg/gallery3d/common/LruCache;

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/gallery3d/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;

    .line 138
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    if-eqz v0, :cond_1

    .line 139
    iget-wide v6, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, v6, v7}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->updateLastAccess(J)V

    .line 140
    monitor-exit v5

    .line 164
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    :goto_0
    return-object v0

    .line 142
    .restart local v0    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;-><init>()V

    .line 146
    .local v1, "proxy":Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 147
    :try_start_1
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->findEntryInDatabase(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_2

    .line 149
    iget-wide v6, v0, Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, v6, v7}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->updateLastAccess(J)V

    .line 150
    monitor-exit v5

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 142
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .end local v1    # "proxy":Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 155
    .restart local v0    # "entry":Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;
    .restart local v1    # "proxy":Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;

    .line 156
    .local v3, "task":Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;
    if-nez v3, :cond_3

    .line 157
    new-instance v3, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;

    .end local v3    # "task":Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;
    invoke-direct {v3, p0, v2}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;-><init>(Lcom/lenovo/scg/gallery3d/data/DownloadCache;Ljava/lang/String;)V

    .line 158
    .restart local v3    # "task":Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v4

    # setter for: Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->mFuture:Lcom/lenovo/scg/gallery3d/util/Future;
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->access$002(Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;Lcom/lenovo/scg/gallery3d/util/Future;)Lcom/lenovo/scg/gallery3d/util/Future;

    .line 161
    :cond_3
    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$DownloadTask;->addProxy(Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;)V

    .line 162
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/data/DownloadCache$TaskProxy;->get(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;

    move-result-object v0

    goto :goto_0
.end method
