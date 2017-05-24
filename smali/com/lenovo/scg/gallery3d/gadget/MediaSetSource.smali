.class public Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;
.super Ljava/lang/Object;
.source "MediaSetSource.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$1;,
        Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$EmptySource;,
        Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSetSource"


# instance fields
.field private mAlbumPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

.field private mListener:Lcom/lenovo/scg/gallery3d/data/ContentListener;

.field private mRootSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mSource:Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/DataManager;Ljava/lang/String;)V
    .locals 3
    .param p1, "manager"    # Lcom/lenovo/scg/gallery3d/data/DataManager;
    .param p2, "albumPath"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1, p2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 50
    .local v0, "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/DataManager;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    .line 57
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mAlbumPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 58
    new-instance v1, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$EmptySource;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$EmptySource;-><init>(Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;

    .line 59
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->monitorRootPath()V

    goto :goto_0
.end method

.method private monitorRootPath()V
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "rootPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mRootSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 104
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mRootSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 105
    return-void
.end method

.method private declared-synchronized resolveAlbumPath()V
    .locals 3

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 109
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mAlbumPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 110
    .local v0, "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v0, :cond_0

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mRootSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 115
    new-instance v1, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$CheckedMediaSetSource;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;

    .line 116
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mListener:Lcom/lenovo/scg/gallery3d/data/ContentListener;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mListener:Lcom/lenovo/scg/gallery3d/data/ContentListener;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/data/ContentListener;->onContentDirty()V

    .line 118
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mListener:Lcom/lenovo/scg/gallery3d/data/ContentListener;

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;->setContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mListener:Lcom/lenovo/scg/gallery3d/data/ContentListener;

    .line 121
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mAlbumPath:Lcom/lenovo/scg/gallery3d/data/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    .end local v0    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;->close()V

    .line 94
    return-void
.end method

.method public getContentUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;->getContentUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->resolveAlbumPath()V

    .line 99
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;->reload()V

    .line 89
    return-void
.end method

.method public declared-synchronized setContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/data/ContentListener;

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mRootSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    .line 80
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mListener:Lcom/lenovo/scg/gallery3d/data/ContentListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;->setContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;->mSource:Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;->size()I

    move-result v0

    return v0
.end method
