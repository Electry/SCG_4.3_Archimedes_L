.class public Lcom/lenovo/scg/gallery3d/data/FilterEmptyPromptSet;
.super Lcom/lenovo/scg/gallery3d/data/MediaSet;
.source "FilterEmptyPromptSet.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterEmptyPromptSet"


# instance fields
.field private mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mEmptyItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/MediaSet;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "baseSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .param p3, "emptyItem"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 31
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterEmptyPromptSet;->mEmptyItem:Ljava/util/ArrayList;

    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterEmptyPromptSet;->mEmptyItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 51
    .local v0, "itemCount":I
    if-lez v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    .line 53
    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/FilterEmptyPromptSet;->mEmptyItem:Ljava/util/ArrayList;

    goto :goto_0

    .line 56
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getMediaItemCount()I
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 41
    .local v0, "itemCount":I
    if-lez v0, :cond_0

    .line 44
    .end local v0    # "itemCount":I
    :goto_0
    return v0

    .restart local v0    # "itemCount":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCameraRoll()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/FilterEmptyPromptSet;->notifyContentChanged()V

    .line 63
    return-void
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterEmptyPromptSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    return-wide v0
.end method
