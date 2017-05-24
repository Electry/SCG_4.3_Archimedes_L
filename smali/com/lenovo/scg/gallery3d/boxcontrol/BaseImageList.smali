.class public abstract Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;
.super Ljava/lang/Object;
.source "BaseImageList.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;


# static fields
.field private static final CACHE_CAPACITY:I = 0x200

.field private static final TAG:Ljava/lang/String; = "BaseImageList"

.field private static final sPathWithId:Ljava/util/regex/Pattern;


# instance fields
.field protected mBaseUri:Landroid/net/Uri;

.field protected mBucketId:Ljava/lang/String;

.field private final mCache:Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorDeactivated:Z

.field protected mSort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "(.*)/\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->sPathWithId:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "sort"    # I
    .param p4, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCache:Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCursorDeactivated:Z

    .line 65
    iput p3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mSort:I

    .line 66
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 67
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mBucketId:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 69
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "BaseImageList"

    const-string v1, "createCursor returns null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCache:Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->clear()V

    .line 79
    return-void
.end method

.method private getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    .line 200
    :goto_0
    return-object v0

    .line 196
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCursorDeactivated:Z

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCursorDeactivated:Z

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-exit p0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getPathWithoutId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "path":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->sPathWithId:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 47
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private isChildImageUri(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 210
    .local v0, "base":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->getPathWithoutId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->invalidateCursor()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 90
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 92
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 94
    :cond_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "BaseImageList"

    const-string v2, "Caught exception while deactivating cursor."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public contentUri(J)Landroid/net/Uri;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 103
    .local v2, "existingId":J
    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    const-string v1, "BaseImageList"

    const-string v4, "id mismatch"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mBaseUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v2    # "existingId":J
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract createCursor()Landroid/database/Cursor;
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 114
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 116
    :goto_0
    return v1

    .line 115
    :cond_0
    monitor-enter p0

    .line 116
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    monitor-exit p0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    .locals 5
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCache:Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;

    .line 123
    .local v1, "result":Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;
    if-nez v1, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 125
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 131
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v2

    .line 126
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    monitor-enter p0

    .line 127
    :try_start_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->loadImageFromCursor(Landroid/database/Cursor;)Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;

    move-result-object v1

    .line 128
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCache:Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    monitor-exit p0

    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    move-object v2, v1

    .line 131
    goto :goto_0

    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    move-object v1, v2

    .line 127
    goto :goto_1

    .line 129
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->isChildImageUri(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-object v3

    .line 140
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 146
    .local v4, "matchId":J
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 147
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 148
    monitor-enter p0

    .line 149
    const/4 v6, -0x1

    :try_start_1
    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 150
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 151
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->getImageId(Landroid/database/Cursor;)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_3

    .line 152
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCache:Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;

    .line 153
    .local v3, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;
    if-nez v3, :cond_2

    .line 154
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->loadImageFromCursor(Landroid/database/Cursor;)Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;

    move-result-object v3

    .line 155
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCache:Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 161
    .end local v2    # "i":I
    .end local v3    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 141
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v4    # "matchId":J
    :catch_0
    move-exception v1

    .line 142
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-string v6, "BaseImageList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to get id in: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 150
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "i":I
    .restart local v4    # "matchId":J
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    :cond_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected abstract getImageId(Landroid/database/Cursor;)J
.end method

.method public getImageIndex(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)I
    .locals 1
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    .prologue
    .line 166
    check-cast p1, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;

    .end local p1    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    iget v0, p1, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mIndex:I

    return v0
.end method

.method protected invalidateCache()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCache:Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/LruCache;->clear()V

    .line 220
    return-void
.end method

.method protected invalidateCursor()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mCursorDeactivated:Z

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract loadImageFromCursor(Landroid/database/Cursor;)Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;
.end method

.method public removeImage(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)Z
    .locals 3
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 178
    check-cast p1, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;

    .end local p1    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->onRemove()V

    .line 179
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->invalidateCursor()V

    .line 180
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->invalidateCache()V

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    .restart local p1    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeImageAt(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->removeImage(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)Z

    move-result v0

    return v0
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 4

    .prologue
    .line 236
    iget v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->mSort:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v0, " ASC"

    .line 240
    .local v0, "ascending":Ljava/lang/String;
    :goto_0
    const-string v1, "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end"

    .line 244
    .local v1, "dateExpr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", _id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 236
    .end local v0    # "ascending":Ljava/lang/String;
    .end local v1    # "dateExpr":Ljava/lang/String;
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method
