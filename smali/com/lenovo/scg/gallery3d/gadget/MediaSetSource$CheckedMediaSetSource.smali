.class Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;
.super Ljava/lang/Object;
.source "MediaSetSource.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedMediaSetSource"
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "CheckedMediaSetSource"


# instance fields
.field private mCache:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private mCacheEnd:I

.field private mCacheStart:I

.field private mContentListener:Lcom/lenovo/scg/gallery3d/data/ContentListener;

.field private mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mSourceVersion:J


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 2
    .param p1, "source"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCache:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 141
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSourceVersion:J

    .line 146
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 148
    return-void
.end method

.method private ensureCacheRange(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 156
    iget v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheEnd:I

    if-ge p1, v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 160
    .local v2, "token":J
    :try_start_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    .line 161
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 162
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    iget v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheEnd:I

    .line 163
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCache:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->removeContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 153
    return-void
.end method

.method public declared-synchronized getContentUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->ensureCacheRange(I)V

    .line 172
    iget v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCache:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImage(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->ensureCacheRange(I)V

    .line 179
    iget v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 180
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCache:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetUtils;->createWidgetBitmap(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onContentDirty()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mContentListener:Lcom/lenovo/scg/gallery3d/data/ContentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mContentListener:Lcom/lenovo/scg/gallery3d/data/ContentListener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/data/ContentListener;->onContentDirty()V

    .line 212
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    .line 186
    .local v0, "version":J
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSourceVersion:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 187
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSourceVersion:J

    .line 188
    iput v4, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheStart:I

    .line 189
    iput v4, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCacheEnd:I

    .line 190
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mCache:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    :cond_0
    return-void
.end method

.method public setContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/data/ContentListener;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mContentListener:Lcom/lenovo/scg/gallery3d/data/ContentListener;

    .line 197
    return-void
.end method

.method public size()I
    .locals 3

    .prologue
    .line 201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 203
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 205
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
