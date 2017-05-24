.class public Lcom/lenovo/scg/common/utils/file/CacheUtils;
.super Ljava/lang/Object;
.source "CacheUtils.java"


# static fields
.field protected static final PROJECTION_WB_FILENAME:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "panhui4_CacheUtils"

.field private static final WB_CACHE_PATH:Ljava/lang/String; = "weibocache/"

.field private static final WB_FILENAME_COLUMN:I = 0x0

.field private static final WB_LOG_PATH:Ljava/lang/String; = "/WeiboLog/"

.field private static mFileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "filename"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/common/utils/file/CacheUtils;->PROJECTION_WB_FILENAME:[Ljava/lang/String;

    .line 50
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lenovo/scg/common/utils/file/CacheUtils;->mFileSize:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanCacheData()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->destory()V

    .line 54
    return-void
.end method

.method public static cleanCacheData2()V
    .locals 22

    .prologue
    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "mounted"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 61
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v17

    .line 62
    .local v17, "targetDirectory":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v10, "parentFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_2

    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v18

    if-nez v18, :cond_2

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "weibocache/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 68
    .local v11, "sPortraitDir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "fPortraitDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 72
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 73
    .local v5, "files":[Ljava/io/File;
    array-length v8, v5

    .line 74
    .local v8, "length":I
    const-string/jumbo v18, "panhui4_CacheUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "files length111="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    int-to-long v0, v8

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x64

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    .line 76
    const-string/jumbo v18, "panhui4_CacheUtils"

    const-string v19, "SCG list count>100start delete SCG small directory!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_4

    .line 78
    aget-object v4, v5, v7

    .line 79
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "childNames":[Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v0, v2

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    .line 82
    invoke-static {v4}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->deleteFiles(Ljava/io/File;)V

    .line 77
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 87
    .end local v2    # "childNames":[Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "i":I
    :cond_4
    const-wide/16 v18, 0x0

    sput-wide v18, Lcom/lenovo/scg/common/utils/file/CacheUtils;->mFileSize:J

    .line 88
    invoke-static {v3}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v14

    .line 89
    .local v14, "sizeP":J
    const-string/jumbo v18, "panhui4_CacheUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SCG size="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v14, v15}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->transferSize(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-wide/32 v18, 0x9600000

    cmp-long v18, v14, v18

    if-ltz v18, :cond_1

    .line 95
    const-string/jumbo v18, "panhui4_CacheUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SCG size>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-wide/32 v20, 0x9600000

    invoke-static/range {v20 .. v21}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->transferSize(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", start delete SCG big directory!!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 98
    .local v6, "files2":[Ljava/io/File;
    array-length v9, v6

    .line 99
    .local v9, "length2":I
    const-string/jumbo v18, "panhui4_CacheUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "files length222="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v9, :cond_6

    .line 101
    const-wide/16 v18, 0x0

    sput-wide v18, Lcom/lenovo/scg/common/utils/file/CacheUtils;->mFileSize:J

    .line 102
    aget-object v4, v6, v7

    .line 103
    .restart local v4    # "file":Ljava/io/File;
    invoke-static {v4}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v12

    .line 104
    .local v12, "size":J
    invoke-static {v12, v13}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->transferSize(J)Ljava/lang/String;

    move-result-object v16

    .line 106
    .local v16, "size_str":Ljava/lang/String;
    const-wide/32 v18, 0x300000

    cmp-long v18, v12, v18

    if-lez v18, :cond_5

    .line 107
    const-string/jumbo v18, "panhui4_CacheUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v20, v7, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".name="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " size>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-wide/32 v20, 0x300000

    invoke-static/range {v20 .. v21}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->transferSize(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", delete!!!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {v4}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->deleteFiles(Ljava/io/File;)V

    .line 100
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 112
    .end local v4    # "file":Ljava/io/File;
    .end local v12    # "size":J
    .end local v16    # "size_str":Ljava/lang/String;
    :cond_6
    const-string/jumbo v18, "panhui4_CacheUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "after clean, SCG size="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->transferSize(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postdata"    # Ljava/lang/String;

    .prologue
    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 496
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$CacheFiles;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 497
    return-void
.end method

.method public static deleteFiles(Ljava/io/File;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 117
    if-nez p0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "childNames":[Ljava/lang/String;
    array-length v2, v0

    .line 121
    .local v2, "length":I
    if-lez v2, :cond_2

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 124
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->deleteFiles(Ljava/io/File;)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    .end local v0    # "childNames":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    sget-wide v2, Lcom/lenovo/scg/common/utils/file/CacheUtils;->mFileSize:J

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    sput-wide v2, Lcom/lenovo/scg/common/utils/file/CacheUtils;->mFileSize:J

    .line 146
    :cond_0
    sget-wide v2, Lcom/lenovo/scg/common/utils/file/CacheUtils;->mFileSize:J

    return-wide v2

    .line 139
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 141
    .local v0, "files2":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 142
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->getFileSize(Ljava/io/File;)J

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/lang/String;
    .param p4, "post"    # Ljava/lang/String;

    .prologue
    .line 474
    const/4 v2, 0x0

    .line 476
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 477
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v4, "filename"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v4, "lastaccesstime"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string/jumbo v4, "postdata"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 483
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v4, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$CacheFiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 488
    :goto_0
    return-object v2

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "panhui4_CacheUtils"

    const-string v5, "Has exception when insert values to cache db "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static query(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 519
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 520
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$CacheFiles;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static query(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "project"    # [Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "postdata"    # Ljava/lang/String;

    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 515
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$CacheFiles;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "url=?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v4, v2

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static readCacheData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "fileName":Ljava/lang/String;
    sget-object v4, Lcom/lenovo/scg/common/utils/file/CacheUtils;->PROJECTION_WB_FILENAME:[Ljava/lang/String;

    invoke-static {p0, v4, p1, v6}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->query(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 184
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 195
    :goto_0
    if-eqz v1, :cond_1

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 197
    .local v2, "time":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, p1, v6}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v2    # "time":J
    :cond_1
    return-object v1

    .line 192
    :cond_2
    const-string/jumbo v4, "panhui4_CacheUtils"

    const-string/jumbo v5, "readcachedata, cursor==null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readCacheData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "post"    # Ljava/lang/String;

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "fileName":Ljava/lang/String;
    sget-object v4, Lcom/lenovo/scg/common/utils/file/CacheUtils;->PROJECTION_WB_FILENAME:[Ljava/lang/String;

    invoke-static {p0, v4, p1, p2}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->query(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 206
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 207
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_1
    if-eqz v1, :cond_2

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 215
    .local v2, "time":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, p1, p2}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v2    # "time":J
    :cond_2
    return-object v1
.end method

.method private static transferSize(J)Ljava/lang/String;
    .locals 8
    .param p0, "lSize"    # J

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 152
    const-wide/16 v2, 0x400

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    :goto_0
    return-object v1

    .line 154
    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 155
    long-to-double v2, p0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "size":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 157
    .local v0, "iPoint":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 158
    .end local v0    # "iPoint":I
    .end local v1    # "size":Ljava/lang/String;
    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v2, p0, v2

    if-gez v2, :cond_2

    .line 159
    long-to-double v2, p0

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 160
    .restart local v1    # "size":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 161
    .restart local v0    # "iPoint":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 162
    .end local v0    # "iPoint":I
    .end local v1    # "size":Ljava/lang/String;
    :cond_2
    const-wide v2, 0x10000000000L

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    .line 164
    long-to-double v2, p0

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 165
    .restart local v1    # "size":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 166
    .restart local v0    # "iPoint":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 167
    .end local v0    # "iPoint":I
    .end local v1    # "size":Ljava/lang/String;
    :cond_3
    const-wide/high16 v2, 0x4000000000000L

    cmp-long v2, p0, v2

    if-gez v2, :cond_4

    .line 169
    long-to-double v2, p0

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 170
    .restart local v1    # "size":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 171
    .restart local v0    # "iPoint":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 175
    .end local v0    # "iPoint":I
    .end local v1    # "size":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "postdata"    # Ljava/lang/String;

    .prologue
    .line 500
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 501
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "lastaccesstime"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 506
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$CacheFiles;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 507
    return-void
.end method

.method public static writeCacheData(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 340
    if-nez p2, :cond_0

    .line 341
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 392
    :goto_0
    return-object v20

    .line 344
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "mounted"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 349
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v12

    .line 350
    .local v12, "sParentDir":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v16, "targetDirectory":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_2

    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    move-result v20

    if-nez v20, :cond_2

    .line 353
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    goto :goto_0

    .line 356
    :cond_2
    new-instance v14, Landroid/os/StatFs;

    invoke-direct {v14, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 357
    .local v14, "sf":Landroid/os/StatFs;
    invoke-virtual {v14}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual {v14}, Landroid/os/StatFs;->getBlockSize()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    const-wide/32 v22, 0x200000

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    .line 358
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    goto :goto_0

    .line 360
    :cond_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "weibocache/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 361
    .local v13, "sPortraitDir":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v9, "fPortraitDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_4

    .line 365
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    move-result v6

    .line 367
    .local v6, "bSucc":Z
    if-nez v6, :cond_4

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    goto/16 :goto_0

    .line 369
    .end local v6    # "bSucc":Z
    :cond_4
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 370
    .local v15, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v21, 0x4b

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 372
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 374
    .local v11, "sFileName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .local v8, "f":Ljava/io/File;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 377
    .local v10, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 378
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 381
    .local v18, "time":J
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 383
    .local v17, "uri":Landroid/net/Uri;
    if-eqz v17, :cond_5

    const/16 v20, 0x1

    :goto_1
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v20

    goto/16 :goto_0

    :cond_5
    const/16 v20, 0x0

    goto :goto_1

    .line 385
    .end local v8    # "f":Ljava/io/File;
    .end local v9    # "fPortraitDir":Ljava/io/File;
    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .end local v11    # "sFileName":Ljava/lang/String;
    .end local v12    # "sParentDir":Ljava/lang/String;
    .end local v13    # "sPortraitDir":Ljava/lang/String;
    .end local v14    # "sf":Landroid/os/StatFs;
    .end local v15    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "targetDirectory":Ljava/io/File;
    .end local v17    # "uri":Landroid/net/Uri;
    .end local v18    # "time":J
    :catch_0
    move-exception v7

    .line 386
    .local v7, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 392
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :cond_6
    :goto_2
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    goto/16 :goto_0

    .line 388
    :catch_1
    move-exception v7

    .line 389
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static writeCacheData(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;
    .param p3, "childname"    # Ljava/lang/String;

    .prologue
    .line 247
    if-nez p2, :cond_1

    .line 248
    const-string/jumbo v21, "panhui4_CacheUtils"

    const-string v22, "bmp==null!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 335
    :cond_0
    :goto_0
    return-object v21

    .line 252
    :cond_1
    const/4 v11, 0x0

    .line 254
    .local v11, "os":Ljava/io/OutputStream;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "mounted"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 260
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v17

    .line 262
    .local v17, "targetDirectory":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v13, "parentFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_3

    :cond_2
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-result v21

    if-nez v21, :cond_3

    .line 264
    const-string/jumbo v21, "panhui4_CacheUtils"

    const-string/jumbo v22, "parentFile==null!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    .line 327
    if-eqz v11, :cond_0

    .line 328
    :try_start_1
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v7

    .line 331
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 268
    .end local v7    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    new-instance v16, Landroid/os/StatFs;

    invoke-direct/range {v16 .. v17}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 269
    .local v16, "sf":Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    const-wide/32 v24, 0x200000

    cmp-long v21, v22, v24

    if-gez v21, :cond_4

    .line 270
    const-string/jumbo v21, "panhui4_CacheUtils"

    const-string/jumbo v22, "space is not enough!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v21

    .line 327
    if-eqz v11, :cond_0

    .line 328
    :try_start_3
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 330
    :catch_1
    move-exception v7

    .line 331
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 275
    .end local v7    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "weibocache/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 276
    .local v15, "sPortraitDir":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v10, "fPortraitDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_5

    .line 278
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    move-result v6

    .line 279
    .local v6, "bSucc":Z
    if-nez v6, :cond_5

    .line 280
    const-string/jumbo v21, "panhui4_CacheUtils"

    const-string v22, "create weibocache file failed!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v21

    .line 327
    if-eqz v11, :cond_0

    .line 328
    :try_start_5
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 330
    :catch_2
    move-exception v7

    .line 331
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 286
    .end local v6    # "bSucc":Z
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5
    if-eqz p3, :cond_6

    .line 288
    :try_start_6
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 289
    const-string/jumbo v21, "panhui4_CacheUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "sChildDir="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v9, "fChildDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_6

    .line 292
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    move-result v6

    .line 293
    .restart local v6    # "bSucc":Z
    if-nez v6, :cond_6

    .line 294
    const-string/jumbo v21, "panhui4_CacheUtils"

    const-string v22, "create child childname failed="

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v21

    .line 327
    if-eqz v11, :cond_0

    .line 328
    :try_start_7
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 330
    :catch_3
    move-exception v7

    .line 331
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 300
    .end local v6    # "bSucc":Z
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "fChildDir":Ljava/io/File;
    :cond_6
    :try_start_8
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p1 .. p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 301
    .local v14, "sFileName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v8, "f":Ljava/io/File;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 311
    .end local v11    # "os":Ljava/io/OutputStream;
    .local v12, "os":Ljava/io/OutputStream;
    :try_start_9
    sget-object v21, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v22, 0x5a

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 314
    .local v18, "time":J
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 315
    .local v20, "uri":Landroid/net/Uri;
    if-nez v20, :cond_7

    .line 316
    const-string/jumbo v21, "panhui4_CacheUtils"

    const-string v22, "insert uri failed!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_7
    if-eqz v20, :cond_8

    const/16 v21, 0x1

    :goto_1
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v21

    .line 327
    if-eqz v12, :cond_0

    .line 328
    :try_start_a
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 330
    :catch_4
    move-exception v7

    .line 331
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 318
    .end local v7    # "e":Ljava/io/IOException;
    :cond_8
    const/16 v21, 0x0

    goto :goto_1

    .line 320
    .end local v8    # "f":Ljava/io/File;
    .end local v10    # "fPortraitDir":Ljava/io/File;
    .end local v12    # "os":Ljava/io/OutputStream;
    .end local v13    # "parentFile":Ljava/io/File;
    .end local v14    # "sFileName":Ljava/lang/String;
    .end local v15    # "sPortraitDir":Ljava/lang/String;
    .end local v16    # "sf":Landroid/os/StatFs;
    .end local v17    # "targetDirectory":Ljava/lang/String;
    .end local v18    # "time":J
    .end local v20    # "uri":Landroid/net/Uri;
    .restart local v11    # "os":Ljava/io/OutputStream;
    :catch_5
    move-exception v7

    .line 321
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 327
    if-eqz v11, :cond_9

    .line 328
    :try_start_c
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 335
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :cond_9
    :goto_3
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    goto/16 :goto_0

    .line 330
    .restart local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v7

    .line 331
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 323
    .end local v7    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v7

    .line 324
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_d
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 327
    if-eqz v11, :cond_9

    .line 328
    :try_start_e
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_3

    .line 330
    :catch_8
    move-exception v7

    .line 331
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 326
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    .line 327
    :goto_5
    if-eqz v11, :cond_a

    .line 328
    :try_start_f
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 332
    :cond_a
    :goto_6
    throw v21

    .line 330
    :catch_9
    move-exception v7

    .line 331
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 326
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "os":Ljava/io/OutputStream;
    .restart local v8    # "f":Ljava/io/File;
    .restart local v10    # "fPortraitDir":Ljava/io/File;
    .restart local v12    # "os":Ljava/io/OutputStream;
    .restart local v13    # "parentFile":Ljava/io/File;
    .restart local v14    # "sFileName":Ljava/lang/String;
    .restart local v15    # "sPortraitDir":Ljava/lang/String;
    .restart local v16    # "sf":Landroid/os/StatFs;
    .restart local v17    # "targetDirectory":Ljava/lang/String;
    :catchall_1
    move-exception v21

    move-object v11, v12

    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local v11    # "os":Ljava/io/OutputStream;
    goto :goto_5

    .line 323
    .end local v11    # "os":Ljava/io/OutputStream;
    .restart local v12    # "os":Ljava/io/OutputStream;
    :catch_a
    move-exception v7

    move-object v11, v12

    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local v11    # "os":Ljava/io/OutputStream;
    goto :goto_4

    .line 320
    .end local v11    # "os":Ljava/io/OutputStream;
    .restart local v12    # "os":Ljava/io/OutputStream;
    :catch_b
    move-exception v7

    move-object v11, v12

    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local v11    # "os":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static writeCacheData(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/Boolean;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 221
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 223
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/WeiboLog/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/WeiboLog/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "cacheFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 227
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 229
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 231
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 232
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 233
    .local v5, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v5, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 234
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 235
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 242
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v1    # "cacheFileName":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-object v6

    .line 236
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 242
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 238
    :catch_1
    move-exception v2

    .line 239
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static writeCacheData(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/Boolean;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "childname"    # Ljava/lang/String;

    .prologue
    .line 397
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    if-gtz v20, :cond_1

    .line 398
    :cond_0
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 470
    :goto_0
    return-object v20

    .line 401
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "mounted"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 407
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v16

    .line 409
    .local v16, "targetDirectory":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    .local v12, "parentFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_3

    :cond_2
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    move-result v20

    if-nez v20, :cond_3

    .line 411
    const-string/jumbo v20, "panhui4_CacheUtils"

    const-string/jumbo v21, "parentFile==null!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    goto :goto_0

    .line 415
    :cond_3
    new-instance v15, Landroid/os/StatFs;

    invoke-direct/range {v15 .. v16}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 416
    .local v15, "sf":Landroid/os/StatFs;
    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSize()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    const-wide/32 v22, 0x200000

    cmp-long v20, v20, v22

    if-gez v20, :cond_4

    .line 417
    const-string/jumbo v20, "panhui4_CacheUtils"

    const-string/jumbo v21, "space is not enough!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    goto :goto_0

    .line 422
    :cond_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "weibocache/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 423
    .local v14, "sPortraitDir":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v10, "fPortraitDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_5

    .line 425
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    move-result v6

    .line 426
    .local v6, "bSucc":Z
    if-nez v6, :cond_5

    .line 427
    const-string/jumbo v20, "panhui4_CacheUtils"

    const-string v21, "create weibocache file failed!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    goto/16 :goto_0

    .line 433
    .end local v6    # "bSucc":Z
    :cond_5
    if-eqz p3, :cond_6

    .line 435
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 437
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    .local v9, "fChildDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_6

    .line 439
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    move-result v6

    .line 440
    .restart local v6    # "bSucc":Z
    if-nez v6, :cond_6

    .line 441
    const-string/jumbo v20, "panhui4_CacheUtils"

    const-string v21, "create child childname failed="

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    goto/16 :goto_0

    .line 448
    .end local v6    # "bSucc":Z
    .end local v9    # "fChildDir":Ljava/io/File;
    :cond_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 450
    .local v13, "sFileName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .local v8, "f":Ljava/io/File;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 453
    .local v11, "fout":Ljava/io/FileOutputStream;
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 454
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 457
    .local v18, "time":J
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 458
    .local v17, "uri":Landroid/net/Uri;
    if-nez v17, :cond_7

    .line 459
    const-string/jumbo v20, "panhui4_CacheUtils"

    const-string v21, "insert uri failed!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_7
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v20

    goto/16 :goto_0

    .line 463
    .end local v8    # "f":Ljava/io/File;
    .end local v10    # "fPortraitDir":Ljava/io/File;
    .end local v11    # "fout":Ljava/io/FileOutputStream;
    .end local v12    # "parentFile":Ljava/io/File;
    .end local v13    # "sFileName":Ljava/lang/String;
    .end local v14    # "sPortraitDir":Ljava/lang/String;
    .end local v15    # "sf":Landroid/os/StatFs;
    .end local v16    # "targetDirectory":Ljava/lang/String;
    .end local v17    # "uri":Landroid/net/Uri;
    .end local v18    # "time":J
    :catch_0
    move-exception v7

    .line 464
    .local v7, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 470
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :cond_8
    :goto_1
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    goto/16 :goto_0

    .line 466
    :catch_1
    move-exception v7

    .line 467
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
