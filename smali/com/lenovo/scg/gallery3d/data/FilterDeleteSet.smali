.class public Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;
.super Lcom/lenovo/scg/gallery3d/data/MediaSet;
.source "FilterDeleteSet.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;,
        Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;
    }
.end annotation


# static fields
.field private static final REQUEST_ADD:I = 0x1

.field private static final REQUEST_CLEAR:I = 0x3

.field private static final REQUEST_REMOVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FilterDeleteSet"


# instance fields
.field private final mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mCurrent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;",
            ">;"
        }
    .end annotation
.end field

.field private mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "baseSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 78
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    .line 79
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 81
    return-void
.end method

.method private sendRequest(ILcom/lenovo/scg/gallery3d/data/Path;I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p3, "indexHint"    # I

    .prologue
    .line 245
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;

    invoke-direct {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;-><init>(ILcom/lenovo/scg/gallery3d/data/Path;I)V

    .line 246
    .local v0, "r":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    monitor-enter v2

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->notifyContentChanged()V

    .line 250
    return-void

    .line 248
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addDeletion(Lcom/lenovo/scg/gallery3d/data/Path;I)V
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "indexHint"    # I

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->sendRequest(ILcom/lenovo/scg/gallery3d/data/Path;I)V

    .line 259
    return-void
.end method

.method public clearDeletion()V
    .locals 3

    .prologue
    .line 266
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->sendRequest(ILcom/lenovo/scg/gallery3d/data/Path;I)V

    .line 267
    return-void
.end method

.method public getIndexOfItem(Lcom/lenovo/scg/gallery3d/data/Path;I)I
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "hint"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    instance-of v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;

    if-nez v0, :cond_0

    .line 278
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getIndexOfItem(Lcom/lenovo/scg/gallery3d/data/Path;I)I

    move-result v0

    .line 281
    :goto_0
    return v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getIndexOfItem(Lcom/lenovo/scg/gallery3d/data/Path;I)I

    .line 281
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 11
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
    .line 124
    if-gtz p2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    :cond_0
    return-object v0

    .line 126
    :cond_1
    add-int v8, p1, p2

    add-int/lit8 v2, v8, -0x1

    .line 127
    .local v2, "end":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 130
    .local v7, "n":I
    const/4 v3, 0x0

    .line 131
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_2

    .line 132
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;

    .line 133
    .local v1, "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;
    iget v8, v1, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    sub-int/2addr v8, v3

    if-le v8, p1, :cond_4

    .line 136
    .end local v1    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;
    :cond_2
    move v4, v3

    .line 137
    .local v4, "j":I
    :goto_1
    if-ge v4, v7, :cond_3

    .line 138
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;

    .line 139
    .restart local v1    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;
    iget v8, v1, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    sub-int/2addr v8, v4

    if-le v8, v2, :cond_5

    .line 143
    .end local v1    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;
    :cond_3
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    add-int v9, p1, v3

    sub-int v10, v4, v3

    add-int/2addr v10, p2

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    .local v0, "base":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    add-int/lit8 v6, v4, -0x1

    .local v6, "m":I
    :goto_2
    if-lt v6, v3, :cond_0

    .line 147
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;

    .line 148
    .restart local v1    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;
    iget v8, v1, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    add-int v9, p1, v3

    sub-int v5, v8, v9

    .line 149
    .local v5, "k":I
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 146
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 131
    .end local v0    # "base":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "m":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .restart local v4    # "j":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getMediaItemCount()I
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfDeletions()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isCameraRoll()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->notifyContentChanged()V

    .line 255
    return-void
.end method

.method public reload()J
    .locals 23

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 158
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mDataVersion:J

    move-wide/from16 v18, v0

    .line 241
    :goto_0
    return-wide v18

    .line 160
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mDataVersion:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_1

    const/4 v13, 0x1

    .line 161
    .local v13, "newData":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 162
    if-nez v13, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 163
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mDataVersion:J

    move-wide/from16 v18, v0

    monitor-exit v20

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v18

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 160
    .end local v13    # "newData":Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 165
    .restart local v13    # "newData":Z
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;

    .line 167
    .local v15, "r":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;
    iget v0, v15, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;->type:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 165
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 170
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 172
    .local v12, "n":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_4
    if-ge v9, v12, :cond_4

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 175
    :cond_4
    if-ne v9, v12, :cond_3

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;

    iget-object v0, v15, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v21, v0

    iget v0, v15, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;->indexHint:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;I)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 172
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 182
    .end local v9    # "j":I
    .end local v12    # "n":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 183
    .restart local v12    # "n":I
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_5
    if-ge v9, v12, :cond_3

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 183
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 192
    .end local v9    # "j":I
    .end local v12    # "n":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 197
    .end local v15    # "r":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Request;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 198
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_e

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;

    move-object/from16 v0, v18

    iget v11, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    .line 206
    .local v11, "minIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v12

    .line 207
    .restart local v12    # "n":I
    if-le v11, v12, :cond_8

    .line 208
    move v11, v12

    .line 211
    :cond_8
    move v10, v11

    .line 212
    .local v10, "maxIndex":I
    const/4 v6, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_9

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;

    .line 214
    .local v4, "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;
    iget v0, v4, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 215
    iget v0, v4, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 212
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 218
    .end local v4    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;
    :cond_9
    add-int/lit8 v18, v11, -0x5

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 219
    .local v5, "from":I
    add-int/lit8 v18, v10, 0x5

    move/from16 v0, v18

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 220
    .local v17, "to":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v18, v0

    sub-int v19, v17, v5

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v8

    .line 221
    .local v8, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v16, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;>;"
    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_d

    .line 223
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 224
    .local v7, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v7, :cond_b

    .line 222
    :cond_a
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 225
    :cond_b
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v14

    .line 227
    .local v14, "p":Lcom/lenovo/scg/gallery3d/data/Path;
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_a

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;

    .line 229
    .restart local v4    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;
    iget-object v0, v4, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v0, v14, :cond_c

    .line 230
    add-int v18, v5, v6

    move/from16 v0, v18

    iput v0, v4, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;->index:I

    .line 231
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 227
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 237
    .end local v4    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;
    .end local v7    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v9    # "j":I
    .end local v14    # "p":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_d
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mCurrent:Ljava/util/ArrayList;

    .line 240
    .end local v5    # "from":I
    .end local v8    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v10    # "maxIndex":I
    .end local v11    # "minIndex":I
    .end local v12    # "n":I
    .end local v16    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet$Deletion;>;"
    .end local v17    # "to":I
    :cond_e
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->nextVersionNumber()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mDataVersion:J

    .line 241
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->mDataVersion:J

    move-wide/from16 v18, v0

    goto/16 :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeDeletion(Lcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 262
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->sendRequest(ILcom/lenovo/scg/gallery3d/data/Path;I)V

    .line 263
    return-void
.end method
