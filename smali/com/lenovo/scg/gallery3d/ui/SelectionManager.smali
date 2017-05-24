.class public Lcom/lenovo/scg/gallery3d/ui/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;
    }
.end annotation


# static fields
.field public static final ENTER_SELECTION_MODE:I = 0x1

.field public static final LEAVE_SELECTION_MODE:I = 0x2

.field public static final SELECT_ALL_MODE:I = 0x3

.field public static final SELECT_NONE_MODE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SelectionManager"


# instance fields
.field private mAutoLeave:Z

.field private mClickedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

.field private mInMultiSelectionMode:Z

.field private mInSelectionMode:Z

.field private mInverseSelection:Z

.field private mIsAlbumSet:Z

.field private mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

.field private mSelection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mTotal:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryContext;Z)V
    .locals 1
    .param p1, "galleryContext"    # Lcom/lenovo/scg/gallery3d/app/GalleryContext;
    .param p2, "isAlbumSet"    # Z

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    .line 80
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/app/GalleryContext;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    .line 82
    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mTotal:I

    .line 84
    return-void
.end method

.method private static expandMediaSet(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 10
    .param p1, "set"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            ">;",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v7

    .line 275
    .local v7, "subCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_0

    .line 276
    invoke-virtual {p1, v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    .line 279
    .local v8, "total":I
    const/16 v0, 0x32

    .line 280
    .local v0, "batch":I
    const/4 v4, 0x0

    .line 282
    .local v4, "index":I
    :goto_1
    if-ge v4, v8, :cond_3

    .line 283
    add-int v9, v4, v0

    if-ge v9, v8, :cond_1

    move v1, v0

    .line 284
    .local v1, "count":I
    :goto_2
    invoke-virtual {p1, v4, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 285
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 286
    .local v5, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 283
    .end local v1    # "count":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_1
    sub-int v1, v8, v4

    goto :goto_2

    .line 288
    .restart local v1    # "count":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_2
    add-int/2addr v4, v0

    .line 289
    goto :goto_1

    .line 290
    .end local v1    # "count":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_3
    return-void
.end method

.method private isLandscapseSource()Z
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    .line 409
    const/4 v0, 0x0

    .line 411
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/cluster/{/combo/{/local/all}}/landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isLocalTimeSource()Z
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x0

    .line 401
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/local/time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public deSelectAll()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 107
    return-void
.end method

.method public deSelectMultiAll()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    .line 195
    :cond_0
    return-void
.end method

.method public enterMultiSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 153
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInMultiSelectionMode:Z

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInMultiSelectionMode:Z

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public enterSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 130
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public getSelected(Z)Ljava/util/ArrayList;
    .locals 14
    .param p1, "expandSet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x15

    const/16 v10, 0x14

    const/4 v12, 0x0

    .line 293
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v7, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    iget-boolean v11, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v11, :cond_9

    .line 297
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->isLocalTimeSource()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 299
    iget-boolean v11, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v11, :cond_3

    .line 300
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v11

    if-ge v1, v11, :cond_12

    .line 301
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v11, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v8

    .line 302
    .local v8, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v11

    if-le v11, v13, :cond_1

    move v0, v10

    .line 303
    .local v0, "count":I
    :goto_1
    invoke-virtual {v8, v12, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 304
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 307
    .local v5, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v5, :cond_0

    .line 311
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    .line 312
    .local v3, "id":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 302
    .end local v0    # "count":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v5    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_1
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    goto :goto_1

    .line 300
    .restart local v0    # "count":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v8    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_3
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 317
    .restart local v3    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 324
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_4
    iget-boolean v10, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v10, :cond_7

    .line 325
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v9

    .line 326
    .local v9, "total":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v9, :cond_12

    .line 327
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v10, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v8

    .line 328
    .restart local v8    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    .line 329
    .restart local v3    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 330
    if-eqz p1, :cond_6

    .line 331
    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    .line 326
    :cond_5
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 333
    :cond_6
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 338
    .end local v1    # "i":I
    .end local v3    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v8    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v9    # "total":I
    :cond_7
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 339
    .restart local v3    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    if-eqz p1, :cond_8

    .line 340
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    invoke-virtual {v10, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    goto :goto_6

    .line 342
    :cond_8
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 349
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_9
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->isLocalTimeSource()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 351
    iget-boolean v11, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v11, :cond_d

    .line 352
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v11

    if-ge v1, v11, :cond_12

    .line 353
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v11, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v8

    .line 354
    .restart local v8    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v11

    if-le v11, v13, :cond_b

    move v0, v10

    .line 355
    .restart local v0    # "count":I
    :goto_8
    invoke-virtual {v8, v12, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 356
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 357
    .restart local v5    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    .line 358
    .restart local v3    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 354
    .end local v0    # "count":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v5    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_b
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    goto :goto_8

    .line 352
    .restart local v0    # "count":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 362
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v8    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_d
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 363
    .restart local v3    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 369
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_e
    iget-boolean v10, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v10, :cond_11

    .line 370
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v9

    .line 371
    .restart local v9    # "total":I
    const/4 v4, 0x0

    .line 372
    .local v4, "index":I
    :goto_b
    if-ge v4, v9, :cond_12

    .line 373
    sub-int v10, v9, v4

    const/16 v11, 0x1f4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 374
    .restart local v0    # "count":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v10, v4, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 375
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 376
    .restart local v5    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    .line 377
    .restart local v3    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 379
    .end local v3    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v5    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_10
    add-int/2addr v4, v0

    .line 380
    goto :goto_b

    .line 382
    .end local v0    # "count":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "index":I
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v9    # "total":I
    :cond_11
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 383
    .restart local v3    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 387
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_12
    return-object v7
.end method

.method public getSelectedCount()I
    .locals 2

    .prologue
    .line 245
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 246
    .local v0, "count":I
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    sub-int v0, v1, v0

    .line 249
    :cond_0
    return v0
.end method

.method public getTotalCount()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 212
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-nez v3, :cond_0

    const/4 v3, -0x1

    .line 241
    :goto_0
    return v3

    .line 214
    :cond_0
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mTotal:I

    if-gtz v3, :cond_4

    .line 215
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    :goto_1
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mTotal:I

    .line 218
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->isLocalTimeSource()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 219
    iput v5, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mTotal:I

    .line 220
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 221
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v2

    .line 222
    .local v2, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    const/16 v4, 0x15

    if-le v3, v4, :cond_2

    const/16 v0, 0x14

    .line 223
    .local v0, "count":I
    :goto_3
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mTotal:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mTotal:I

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 215
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    goto :goto_1

    .line 222
    .restart local v1    # "i":I
    .restart local v2    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_2
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    goto :goto_3

    .line 230
    .end local v1    # "i":I
    .end local v2    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->isLandscapseSource()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 231
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->isPanoramaView()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 232
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mTotal:I

    .line 241
    :cond_4
    :goto_4
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mTotal:I

    goto :goto_0

    .line 235
    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mTotal:I

    goto :goto_4
.end method

.method public inMultiSelectionMode()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInMultiSelectionMode:Z

    return v0
.end method

.method public inSelectAllMode()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    return v0
.end method

.method public inSelectionMode()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    return v0
.end method

.method public isAllCount()Z
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 116
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 117
    const/4 v1, 0x1

    .line 119
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isItemSelected(Lcom/lenovo/scg/gallery3d/data/Path;)Z
    .locals 2
    .param p1, "itemId"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isMultiAllSelected()Z
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiItemSelected(Lcom/lenovo/scg/gallery3d/data/Path;)Z
    .locals 1
    .param p1, "itemId"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public leaveMultiSelectionMode()V
    .locals 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInMultiSelectionMode:Z

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInMultiSelectionMode:Z

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public leaveSelectionMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    const-string v0, "SelectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leaveSelectionMode, mInSelectionMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    .line 141
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mTotal:I

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public multi(Lcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionChange(Lcom/lenovo/scg/gallery3d/data/Path;Z)V

    .line 180
    :cond_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public restoreSelection()V
    .locals 15

    .prologue
    .line 435
    const-string v12, "SelectionManager"

    const-string/jumbo v13, "restoreSelection"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    if-nez v12, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v11

    .line 441
    .local v11, "total":I
    const-string v12, "SelectionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreSelection, total="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v4, 0x0

    .line 443
    .local v4, "id":Lcom/lenovo/scg/gallery3d/data/Path;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v0, "availablePaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    const-string v12, "SelectionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreSelection, mIsAlbumSet="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->isLocalTimeSource()Z

    move-result v5

    .line 447
    .local v5, "isLocalTime":Z
    if-eqz v5, :cond_5

    .line 448
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v12

    if-ge v2, v12, :cond_9

    .line 450
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v12, v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v10

    .line 451
    .local v10, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v10, :cond_4

    .line 452
    const-string v12, "SelectionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "set size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v12

    const/16 v13, 0x15

    if-le v12, v13, :cond_3

    const/16 v1, 0x14

    .line 455
    .local v1, "count":I
    :goto_2
    const/4 v12, 0x0

    invoke-virtual {v10, v12, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v8

    .line 456
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    const-string v12, "SelectionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "list size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 458
    .local v6, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v6, :cond_2

    .line 461
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    .line 462
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 463
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 453
    .end local v1    # "count":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_3
    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    goto :goto_2

    .line 448
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 469
    .end local v2    # "i":I
    .end local v10    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_5
    const-string v12, "SelectionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "is not LocalTimeSource or isLandscapseSource!!!, mIsAlbumSet="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-boolean v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v12, :cond_7

    .line 471
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v12

    if-ge v2, v12, :cond_9

    .line 472
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v12, v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v10

    .line 473
    .restart local v10    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v10, :cond_6

    .line 474
    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    .line 475
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 476
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 481
    .end local v2    # "i":I
    .end local v10    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_7
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v11}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    .line 482
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_9

    .line 483
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 484
    .restart local v6    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    .line 485
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 486
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 494
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 495
    .local v9, "newCnt":I
    const-string v12, "SelectionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreSelection, newCnt="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", total="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    if-ne v9, v11, :cond_b

    if-eqz v11, :cond_b

    .line 498
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->selectAll()V

    .line 516
    :cond_a
    :goto_6
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 517
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 501
    :cond_b
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 502
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->clear()V

    .line 503
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    if-ge v2, v9, :cond_c

    .line 504
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 509
    :cond_c
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    if-nez v12, :cond_a

    .line 510
    const-string v12, "SelectionManager"

    const-string v13, "mClickedSet size=0!!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_6
.end method

.method public saveSelection()V
    .locals 4

    .prologue
    .line 419
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 423
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    .line 424
    const-string v1, "SelectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSelection size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSelection:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 99
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public selectMultiAll()V
    .locals 6

    .prologue
    .line 183
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-nez v3, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 185
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 186
    .local v2, "mediaItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 187
    .local v1, "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    .end local v1    # "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public setAutoLeaveSelectionMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    .line 90
    return-void
.end method

.method public setSelectionListener(Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    .line 94
    return-void
.end method

.method public setSourceMediaSet(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 1
    .param p1, "set"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 392
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mTotal:I

    .line 393
    return-void
.end method

.method public toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 3
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 253
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 262
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 263
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->selectAll()V

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mListener:Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionChange(Lcom/lenovo/scg/gallery3d/data/Path;Z)V

    .line 268
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    if-eqz v1, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 271
    :cond_2
    return-void

    .line 256
    .end local v0    # "count":I
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 257
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
