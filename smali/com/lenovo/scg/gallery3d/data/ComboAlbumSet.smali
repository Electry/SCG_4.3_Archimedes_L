.class public Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;
.super Lcom/lenovo/scg/gallery3d/data/MediaSet;
.source "ComboAlbumSet.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ComboAlbumSet"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;[Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 6
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .param p3, "mediaSets"    # [Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 36
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 37
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 39
    .local v3, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v3    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_0
    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f06a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->mName:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 47
    .local v3, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    .line 48
    .local v4, "size":I
    if-ge p1, v4, :cond_0

    .line 49
    invoke-virtual {v3, p1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v5

    .line 53
    .end local v3    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v4    # "size":I
    :goto_1
    return-object v5

    .line 51
    .restart local v3    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .restart local v4    # "size":I
    :cond_0
    sub-int/2addr p1, v4

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v3    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v4    # "size":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getSubMediaSetCount()I
    .locals 6

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "count":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 60
    .local v4, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v4    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_0
    return v1
.end method

.method public isLoading()Z
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 73
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 75
    :goto_1
    return v2

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onContentDirty()V
    .locals 1

    .prologue
    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->notifyContentChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reload()J
    .locals 8

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v2, v3

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 82
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    .line 83
    .local v4, "version":J
    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->mDataVersion:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 81
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v4    # "version":J
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->mDataVersion:J

    .line 86
    :cond_2
    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->mDataVersion:J

    return-wide v6
.end method

.method public requestSync(Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;)Lcom/lenovo/scg/gallery3d/util/Future;
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;",
            ")",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;->requestSyncOnMultipleSets([Lcom/lenovo/scg/gallery3d/data/MediaSet;Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method
