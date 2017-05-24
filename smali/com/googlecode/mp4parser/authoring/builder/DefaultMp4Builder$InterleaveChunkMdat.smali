.class Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;
.super Ljava/lang/Object;
.source "DefaultMp4Builder.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterleaveChunkMdat"
.end annotation


# instance fields
.field contentSize:J

.field parent:Lcom/coremedia/iso/boxes/ContainerBox;

.field samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

.field tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;Lcom/googlecode/mp4parser/authoring/Movie;)V
    .locals 16
    .param p2, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;

    .prologue
    .line 393
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->samples:Ljava/util/List;

    .line 380
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->contentSize:J

    .line 395
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->tracks:Ljava/util/List;

    .line 396
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 397
    .local v3, "chunks":Ljava/util/Map;, "Ljava/util/Map<Lcom/googlecode/mp4parser/authoring/Track;[I>;"
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/googlecode/mp4parser/authoring/Track;

    .line 398
    .local v10, "track":Lcom/googlecode/mp4parser/authoring/Track;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->getChunkSizes(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[I

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 401
    .end local v10    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    array-length v11, v11

    if-ge v6, v11, :cond_4

    .line 402
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->tracks:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/googlecode/mp4parser/authoring/Track;

    .line 404
    .restart local v10    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 405
    .local v2, "chunkSizes":[I
    const-wide/16 v4, 0x0

    .line 406
    .local v4, "firstSampleOfChunk":J
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v6, :cond_2

    .line 407
    aget v11, v2, v8

    int-to-long v12, v11

    add-long/2addr v4, v12

    .line 406
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 410
    :cond_2
    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v8

    :goto_3
    int-to-long v12, v8

    aget v11, v2, v6

    int-to-long v14, v11

    add-long/2addr v14, v4

    cmp-long v11, v12, v14

    if-gez v11, :cond_1

    .line 412
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->track2Sample:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 413
    .local v9, "s":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->contentSize:J

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    int-to-long v14, v11

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->contentSize:J

    .line 414
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->samples:Ljava/util/List;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 401
    .end local v2    # "chunkSizes":[I
    .end local v4    # "firstSampleOfChunk":J
    .end local v8    # "j":I
    .end local v9    # "s":Ljava/nio/ByteBuffer;
    .end local v10    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 421
    :cond_4
    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
    .param p2, "x1"    # Lcom/googlecode/mp4parser/authoring/Movie;
    .param p3, "x2"    # Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$1;

    .prologue
    .line 375
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;-><init>(Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;Lcom/googlecode/mp4parser/authoring/Movie;)V

    return-void
.end method

.method private isSmallBox(J)Z
    .locals 5
    .param p1, "contentSize"    # J

    .prologue
    .line 448
    const-wide/16 v0, 0x8

    add-long/2addr v0, p1

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 18
    .param p1, "writableByteChannel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    const/16 v11, 0x10

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 454
    .local v2, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->getSize()J

    move-result-wide v8

    .line 455
    .local v8, "size":J
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->isSmallBox(J)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 456
    invoke-static {v2, v8, v9}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 460
    :goto_0
    const-string/jumbo v11, "mdat"

    invoke-static {v11}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 461
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->isSmallBox(J)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 462
    const/16 v11, 0x8

    new-array v11, v11, [B

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 466
    :goto_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 467
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 468
    move-object/from16 v0, p1

    instance-of v11, v0, Ljava/nio/channels/GatheringByteChannel;

    if-eqz v11, :cond_4

    .line 469
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->samples:Ljava/util/List;

    invoke-virtual {v11, v12}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->unifyAdjacentBuffers(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 472
    .local v5, "nuSamples":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    int-to-double v12, v3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    int-to-double v14, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    iget v11, v11, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->STEPSIZE:I

    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    cmpg-double v11, v12, v14

    if-gez v11, :cond_5

    .line 473
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    iget v11, v11, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->STEPSIZE:I

    mul-int v12, v3, v11

    add-int/lit8 v11, v3, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    iget v13, v13, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->STEPSIZE:I

    mul-int/2addr v11, v13

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_3

    add-int/lit8 v11, v3, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    iget v13, v13, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->STEPSIZE:I

    mul-int/2addr v11, v13

    :goto_3
    invoke-interface {v5, v12, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    .line 476
    .local v10, "sublist":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/nio/ByteBuffer;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/nio/ByteBuffer;

    .local v7, "sampleArray":[Ljava/nio/ByteBuffer;
    :cond_0
    move-object/from16 v11, p1

    .line 478
    check-cast v11, Ljava/nio/channels/GatheringByteChannel;

    invoke-interface {v11, v7}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    .line 479
    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gtz v11, :cond_0

    .line 472
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 458
    .end local v3    # "i":I
    .end local v5    # "nuSamples":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v7    # "sampleArray":[Ljava/nio/ByteBuffer;
    .end local v10    # "sublist":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    :cond_1
    const-wide/16 v12, 0x1

    invoke-static {v2, v12, v13}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_0

    .line 464
    :cond_2
    invoke-static {v2, v8, v9}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_1

    .line 473
    .restart local v3    # "i":I
    .restart local v5    # "nuSamples":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_3

    .line 483
    .end local v3    # "i":I
    .end local v5    # "nuSamples":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->samples:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 484
    .local v6, "sample":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 485
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_4

    .line 488
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "sample":Ljava/nio/ByteBuffer;
    :cond_5
    return-void
.end method

.method public getDataOffset()J
    .locals 8

    .prologue
    .line 424
    move-object v0, p0

    .line 425
    .local v0, "b":Lcom/coremedia/iso/boxes/Box;
    const-wide/16 v4, 0x10

    .line 426
    .local v4, "offset":J
    :goto_0
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 427
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v3

    invoke-interface {v3}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 428
    .local v1, "box":Lcom/coremedia/iso/boxes/Box;
    if-ne v0, v1, :cond_1

    .line 433
    .end local v1    # "box":Lcom/coremedia/iso/boxes/Box;
    :cond_0
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v0

    goto :goto_0

    .line 431
    .restart local v1    # "box":Lcom/coremedia/iso/boxes/Box;
    :cond_1
    invoke-interface {v1}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_1

    .line 435
    .end local v1    # "box":Lcom/coremedia/iso/boxes/Box;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-wide v4
.end method

.method public getParent()Lcom/coremedia/iso/boxes/ContainerBox;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-object v0
.end method

.method public getSize()J
    .locals 4

    .prologue
    .line 444
    const-wide/16 v0, 0x10

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->contentSize:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    const-string/jumbo v0, "mdat"

    return-object v0
.end method

.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 0
    .param p1, "readableByteChannel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "contentSize"    # J
    .param p5, "boxParser"    # Lcom/coremedia/iso/BoxParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    return-void
.end method

.method public setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
    .locals 0
    .param p1, "parent"    # Lcom/coremedia/iso/boxes/ContainerBox;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    .line 388
    return-void
.end method
