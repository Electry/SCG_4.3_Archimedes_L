.class public Lcom/lenovo/scg/photos/shims/MediaSetLoader;
.super Landroid/content/AsyncTaskLoader;
.source "MediaSetLoader.java"

# interfaces
.implements Lcom/lenovo/scg/photos/shims/LoaderCompatShim;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/lenovo/scg/photos/shims/LoaderCompatShim",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final sNullListener:Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;


# instance fields
.field private mCoverItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

.field private final mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mObserver:Lcom/lenovo/scg/gallery3d/data/ContentListener;

.field private mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/lenovo/scg/photos/shims/MediaSetLoader$1;

    invoke-direct {v0}, Lcom/lenovo/scg/photos/shims/MediaSetLoader$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->sNullListener:Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 57
    new-instance v1, Lcom/lenovo/scg/photos/shims/MediaSetLoader$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/photos/shims/MediaSetLoader$2;-><init>(Lcom/lenovo/scg/photos/shims/MediaSetLoader;)V

    iput-object v1, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mObserver:Lcom/lenovo/scg/gallery3d/data/ContentListener;

    .line 69
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->from(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    .line 70
    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 57
    new-instance v0, Lcom/lenovo/scg/photos/shims/MediaSetLoader$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/photos/shims/MediaSetLoader$2;-><init>(Lcom/lenovo/scg/photos/shims/MediaSetLoader;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mObserver:Lcom/lenovo/scg/gallery3d/data/ContentListener;

    .line 76
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->from(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 78
    return-void
.end method

.method public static getThumbnailSize()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public deleteItemWithPath(Ljava/lang/Object;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/Object;

    .prologue
    .line 182
    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    check-cast p1, Lcom/lenovo/scg/gallery3d/data/Path;

    .end local p1    # "path":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    .line 183
    .local v0, "o":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->delete()V

    .line 186
    :cond_0
    return-void
.end method

.method public drawableForItem(Landroid/database/Cursor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "item"    # Landroid/database/Cursor;
    .param p2, "recycle"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "drawable":Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;
    if-eqz p2, :cond_0

    instance-of v2, p2, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;

    if-nez v2, :cond_1

    .line 142
    :cond_0
    new-instance v0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;

    .end local v0    # "drawable":Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;
    invoke-direct {v0}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;-><init>()V

    .line 146
    .restart local v0    # "drawable":Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;
    :goto_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 147
    .local v1, "index":I
    iget-object v2, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mCoverItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->setMediaItem(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    .line 148
    return-object v0

    .end local v1    # "index":I
    :cond_1
    move-object v0, p2

    .line 144
    check-cast v0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;

    goto :goto_0
.end method

.method public bridge synthetic drawableForItem(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 42
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->drawableForItem(Landroid/database/Cursor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPathForItem(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 3
    .param p1, "item"    # Landroid/database/Cursor;

    .prologue
    .line 190
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 191
    .local v0, "index":I
    iget-object v2, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v1

    .line 192
    .local v1, "ms":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    .line 195
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getPathForItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->getPathForItem(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 113
    iget-object v7, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    .line 114
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/lenovo/scg/photos/data/AlbumSetLoader;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v3, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 115
    .local v3, "cursor":Landroid/database/MatrixCursor;
    sget-object v7, Lcom/lenovo/scg/photos/data/AlbumSetLoader;->PROJECTION:[Ljava/lang/String;

    array-length v7, v7

    new-array v6, v7, [Ljava/lang/Object;

    .line 116
    .local v6, "row":[Ljava/lang/Object;
    iget-object v7, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    .line 117
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .local v2, "coverItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 119
    iget-object v7, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v7, v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v5

    .line 120
    .local v5, "m":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    .line 121
    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 122
    const/4 v7, 0x1

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 123
    const/4 v7, 0x7

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 124
    const/16 v7, 0x8

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 125
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 126
    .local v1, "coverItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 127
    const/4 v7, 0x2

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 129
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v3, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "coverItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v5    # "m":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    monitor-enter v8

    .line 133
    :try_start_0
    iput-object v2, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mCoverItems:Ljava/util/ArrayList;

    .line 134
    monitor-exit v8

    .line 135
    return-object v3

    .line 134
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelLoad()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 94
    :cond_0
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 107
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->onStopLoading()V

    .line 108
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mObserver:Lcom/lenovo/scg/gallery3d/data/ContentListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    sget-object v1, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->sNullListener:Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->requestSync(Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mSyncTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 85
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->forceLoad()V

    .line 86
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 100
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->cancelLoad()Z

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mObserver:Lcom/lenovo/scg/gallery3d/data/ContentListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->removeContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 102
    return-void
.end method

.method public uriForItem(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .param p1, "item"    # Landroid/database/Cursor;

    .prologue
    .line 157
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 158
    .local v0, "index":I
    iget-object v2, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v1

    .line 159
    .local v1, "ms":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic uriForItem(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->uriForItem(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public urisForSubItems(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "item"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 165
    .local v0, "index":I
    iget-object v3, p0, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v1

    .line 166
    .local v1, "ms":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 177
    :goto_0
    return-object v2

    .line 167
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v3, Lcom/lenovo/scg/photos/shims/MediaSetLoader$3;

    invoke-direct {v3, p0, v2}, Lcom/lenovo/scg/photos/shims/MediaSetLoader$3;-><init>(Lcom/lenovo/scg/photos/shims/MediaSetLoader;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->enumerateMediaItems(Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;)V

    goto :goto_0
.end method

.method public bridge synthetic urisForSubItems(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/photos/shims/MediaSetLoader;->urisForSubItems(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
