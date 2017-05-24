.class public Lcom/coremedia/iso/boxes/mdat/SampleList;
.super Ljava/util/AbstractList;
.source "SampleList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field isoFile:Lcom/coremedia/iso/IsoFile;

.field mdatEndCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/coremedia/iso/boxes/mdat/MediaDataBox;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mdatStartCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/coremedia/iso/boxes/mdat/MediaDataBox;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mdats:[Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

.field offsets:[J

.field sizes:[J


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/boxes/TrackBox;)V
    .locals 30
    .param p1, "trackBox"    # Lcom/coremedia/iso/boxes/TrackBox;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractList;-><init>()V

    .line 22
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatStartCache:Ljava/util/HashMap;

    .line 23
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatEndCache:Ljava/util/HashMap;

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/coremedia/iso/boxes/mdat/SampleList;->initIsoFile(Lcom/coremedia/iso/IsoFile;)V

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v15

    .line 43
    .local v15, "sampleSizeBox":Lcom/coremedia/iso/boxes/SampleSizeBox;
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getChunkOffsetBox()Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    move-result-object v4

    .line 44
    .local v4, "chunkOffsetBox":Lcom/coremedia/iso/boxes/ChunkOffsetBox;
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleToChunkBox()Lcom/coremedia/iso/boxes/SampleToChunkBox;

    move-result-object v20

    .line 47
    .local v20, "sampleToChunkBox":Lcom/coremedia/iso/boxes/SampleToChunkBox;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/ChunkOffsetBox;->getChunkOffsets()[J

    move-result-object v5

    .line 48
    .local v5, "chunkOffsets":[J
    :goto_0
    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->getEntries()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_3

    array-length v0, v5

    move/from16 v25, v0

    if-lez v25, :cond_3

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleCount()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-lez v25, :cond_3

    .line 50
    array-length v0, v5

    move/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->blowup(I)[J

    move-result-object v12

    .line 52
    .local v12, "numberOfSamplesInChunk":[J
    const/4 v14, 0x0

    .line 54
    .local v14, "sampleIndex":I
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSize()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-lez v25, :cond_1

    .line 55
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleCount()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    move-object/from16 v25, v0

    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSize()J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Ljava/util/Arrays;->fill([JJ)V

    .line 60
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    .line 62
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v0, v12

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v6, v0, :cond_3

    .line 63
    aget-wide v22, v12, v6

    .line 64
    .local v22, "thisChunksNumberOfSamples":J
    aget-wide v16, v5, v6

    .line 65
    .local v16, "sampleOffset":J
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    int-to-long v0, v9

    move-wide/from16 v26, v0

    cmp-long v25, v26, v22

    if-gez v25, :cond_2

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    move-object/from16 v25, v0

    aget-wide v18, v25, v14

    .line 67
    .local v18, "sampleSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    move-object/from16 v25, v0

    aput-wide v16, v25, v14

    .line 68
    add-long v16, v16, v18

    .line 69
    add-int/lit8 v14, v14, 0x1

    .line 65
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 47
    .end local v5    # "chunkOffsets":[J
    .end local v6    # "i":I
    .end local v9    # "j":I
    .end local v12    # "numberOfSamplesInChunk":[J
    .end local v14    # "sampleIndex":I
    .end local v16    # "sampleOffset":J
    .end local v18    # "sampleSize":J
    .end local v22    # "thisChunksNumberOfSamples":J
    :cond_0
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v5, v0, [J

    goto/16 :goto_0

    .line 58
    .restart local v5    # "chunkOffsets":[J
    .restart local v12    # "numberOfSamplesInChunk":[J
    .restart local v14    # "sampleIndex":I
    :cond_1
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizes()[J

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    goto :goto_1

    .line 62
    .restart local v6    # "i":I
    .restart local v9    # "j":I
    .restart local v16    # "sampleOffset":J
    .restart local v22    # "thisChunksNumberOfSamples":J
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 77
    .end local v6    # "i":I
    .end local v9    # "j":I
    .end local v12    # "numberOfSamplesInChunk":[J
    .end local v14    # "sampleIndex":I
    .end local v16    # "sampleOffset":J
    .end local v22    # "thisChunksNumberOfSamples":J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v25

    const-class v26, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-interface/range {v25 .. v26}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    .line 79
    .local v10, "movieExtendsBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_8

    .line 80
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v13, "offsets2Sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    const-class v26, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-virtual/range {v25 .. v26}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v24

    .line 82
    .local v24, "trackExtendsBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    .line 83
    .local v21, "trackExtendsBox":Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    invoke-virtual/range {v21 .. v21}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J

    move-result-wide v26

    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v28

    cmp-long v25, v26, v28

    if-nez v25, :cond_4

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v25

    const-class v26, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual/range {v25 .. v26}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 85
    .local v11, "movieFragmentBox":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-object/from16 v3, v21

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/coremedia/iso/boxes/mdat/SampleList;->getOffsets(Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;JLcom/coremedia/iso/boxes/fragment/TrackExtendsBox;)Ljava/util/Map;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v13, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_4

    .line 90
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "movieFragmentBox":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    .end local v21    # "trackExtendsBox":Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    move-object/from16 v25, v0

    if-nez v25, :cond_7

    .line 91
    :cond_6
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    .line 92
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    .line 95
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/coremedia/iso/boxes/mdat/SampleList;->splitToArrays(Ljava/util/Map;)V

    .line 99
    .end local v13    # "offsets2Sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v24    # "trackExtendsBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;>;"
    :cond_8
    return-void
.end method

.method public constructor <init>(Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V
    .locals 12
    .param p1, "traf"    # Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .prologue
    const/4 v10, 0x0

    .line 117
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 22
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatStartCache:Ljava/util/HashMap;

    .line 23
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatEndCache:Ljava/util/HashMap;

    .line 118
    new-array v7, v10, [J

    iput-object v7, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    .line 119
    new-array v7, v10, [J

    iput-object v7, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    .line 120
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v4, "offsets2Sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/coremedia/iso/boxes/mdat/SampleList;->initIsoFile(Lcom/coremedia/iso/IsoFile;)V

    .line 123
    iget-object v7, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->isoFile:Lcom/coremedia/iso/IsoFile;

    const-class v10, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual {v7, v10}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 125
    .local v3, "movieFragmentBoxList":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;>;"
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v8

    .line 126
    .local v8, "trackId":J
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 127
    .local v2, "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getTrackFragmentHeaderBoxes()Ljava/util/List;

    move-result-object v6

    .line 128
    .local v6, "trackFragmentHeaderBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    .line 129
    .local v5, "tfhd":Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v10

    cmp-long v7, v10, v8

    if-nez v7, :cond_1

    .line 130
    const/4 v7, 0x0

    invoke-virtual {p0, v2, v8, v9, v7}, Lcom/coremedia/iso/boxes/mdat/SampleList;->getOffsets(Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;JLcom/coremedia/iso/boxes/fragment/TrackExtendsBox;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 134
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    .end local v5    # "tfhd":Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    .end local v6    # "trackFragmentHeaderBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;>;"
    :cond_2
    invoke-direct {p0, v4}, Lcom/coremedia/iso/boxes/mdat/SampleList;->splitToArrays(Ljava/util/Map;)V

    .line 135
    return-void
.end method

.method private initIsoFile(Lcom/coremedia/iso/IsoFile;)V
    .locals 14
    .param p1, "isoFile"    # Lcom/coremedia/iso/IsoFile;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->isoFile:Lcom/coremedia/iso/IsoFile;

    .line 140
    const-wide/16 v4, 0x0

    .line 141
    .local v4, "currentOffset":J
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 142
    .local v8, "mdats":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/mdat/MediaDataBox;>;"
    iget-object v9, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->isoFile:Lcom/coremedia/iso/IsoFile;

    invoke-virtual {v9}, Lcom/coremedia/iso/IsoFile;->getBoxes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 143
    .local v0, "b":Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v6

    .line 144
    .local v6, "currentSize":J
    const-string/jumbo v9, "mdat"

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 145
    instance-of v9, v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    if-eqz v9, :cond_1

    move-object v9, v0

    .line 146
    check-cast v9, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    int-to-long v10, v9

    add-long v2, v4, v10

    .line 147
    .local v2, "contentOffset":J
    iget-object v10, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatStartCache:Ljava/util/HashMap;

    move-object v9, v0

    check-cast v9, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v10, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatEndCache:Ljava/util/HashMap;

    move-object v9, v0

    check-cast v9, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    add-long v12, v2, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    check-cast v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    .end local v0    # "b":Lcom/coremedia/iso/boxes/Box;
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v2    # "contentOffset":J
    :cond_0
    add-long/2addr v4, v6

    .line 155
    goto :goto_0

    .line 151
    .restart local v0    # "b":Lcom/coremedia/iso/boxes/Box;
    :cond_1
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Sample need to be in mdats and mdats need to be instanceof MediaDataBox"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 156
    .end local v0    # "b":Lcom/coremedia/iso/boxes/Box;
    .end local v6    # "currentSize":J
    :cond_2
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    iput-object v9, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdats:[Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    .line 157
    return-void
.end method

.method private splitToArrays(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "offsets2Sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 105
    iget-object v4, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    array-length v4, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    new-array v3, v4, [J

    .line 106
    .local v3, "nuSizes":[J
    iget-object v4, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    iget-object v5, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget-object v4, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    array-length v4, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    new-array v2, v4, [J

    .line 108
    .local v2, "nuOffsets":[J
    iget-object v4, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    iget-object v5, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 110
    iget-object v4, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    array-length v4, v4

    add-int v5, v0, v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v2, v5

    .line 111
    iget-object v4, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    array-length v4, v4

    add-int v5, v0, v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v5

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iput-object v3, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    .line 114
    iput-object v2, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    .line 115
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/mdat/SampleList;->get(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/nio/ByteBuffer;
    .locals 14
    .param p1, "index"    # I

    .prologue
    .line 169
    iget-object v9, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    aget-wide v6, v9, p1

    .line 170
    .local v6, "offset":J
    iget-object v9, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    aget-wide v12, v9, p1

    invoke-static {v12, v13}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v8

    .line 172
    .local v8, "sampleSize":I
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdats:[Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    .local v0, "arr$":[Lcom/coremedia/iso/boxes/mdat/MediaDataBox;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 173
    .local v5, "mediaDataBox":Lcom/coremedia/iso/boxes/mdat/MediaDataBox;
    iget-object v9, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatStartCache:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 174
    .local v10, "start":J
    iget-object v9, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatEndCache:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 175
    .local v2, "end":J
    cmp-long v9, v10, v6

    if-gtz v9, :cond_0

    int-to-long v12, v8

    add-long/2addr v12, v6

    cmp-long v9, v12, v2

    if-gtz v9, :cond_0

    .line 176
    sub-long v12, v6, v10

    invoke-virtual {v5, v12, v13, v8}, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->getContent(JI)Ljava/nio/ByteBuffer;

    move-result-object v9

    return-object v9

    .line 172
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "end":J
    .end local v5    # "mediaDataBox":Lcom/coremedia/iso/boxes/mdat/MediaDataBox;
    .end local v10    # "start":J
    :cond_1
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The sample with offset "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " and size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is NOT located within an mdat"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public getOffsetKeys()[J
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    return-object v0
.end method

.method getOffsets(Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;JLcom/coremedia/iso/boxes/fragment/TrackExtendsBox;)Ljava/util/Map;
    .locals 22
    .param p1, "moof"    # Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    .param p2, "trackId"    # J
    .param p4, "trex"    # Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;",
            "J",
            "Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v10, "offsets2Sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-class v19, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v17

    .line 186
    .local v17, "traf":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 187
    .local v16, "trackFragmentBox":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v20

    cmp-long v19, v20, p2

    if-nez v19, :cond_0

    .line 189
    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasBaseDataOffset()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 190
    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getBaseDataOffset()J

    move-result-wide v2

    .line 195
    .local v2, "baseDataOffset":J
    :goto_0
    const-class v19, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 196
    .local v18, "trun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getDataOffset()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v12, v2, v20

    .line 197
    .local v12, "sampleBaseOffset":J
    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v19

    check-cast v19, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v11

    .line 199
    .local v11, "tfhd":Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    const-wide/16 v8, 0x0

    .line 200
    .local v8, "offset":J
    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    .line 202
    .local v4, "entry":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleSizePresent()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 203
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleSize()J

    move-result-wide v14

    .line 204
    .local v14, "sampleSize":J
    add-long v20, v8, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    add-long/2addr v8, v14

    goto :goto_1

    .line 192
    .end local v2    # "baseDataOffset":J
    .end local v4    # "entry":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "offset":J
    .end local v11    # "tfhd":Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    .end local v12    # "sampleBaseOffset":J
    .end local v14    # "sampleSize":J
    .end local v18    # "trun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getOffset()J

    move-result-wide v2

    .restart local v2    # "baseDataOffset":J
    goto :goto_0

    .line 207
    .restart local v4    # "entry":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "offset":J
    .restart local v11    # "tfhd":Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    .restart local v12    # "sampleBaseOffset":J
    .restart local v18    # "trun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    :cond_3
    invoke-virtual {v11}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleSize()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 208
    invoke-virtual {v11}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleSize()J

    move-result-wide v14

    .line 209
    .restart local v14    # "sampleSize":J
    add-long v20, v8, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    add-long/2addr v8, v14

    goto :goto_1

    .line 212
    .end local v14    # "sampleSize":J
    :cond_4
    if-nez p4, :cond_5

    .line 213
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "File doesn\'t contain trex box but track fragments aren\'t fully self contained. Cannot determine sample size."

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 215
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleSize()J

    move-result-wide v14

    .line 216
    .restart local v14    # "sampleSize":J
    add-long v20, v8, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    add-long/2addr v8, v14

    goto :goto_1

    .line 224
    .end local v2    # "baseDataOffset":J
    .end local v4    # "entry":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "offset":J
    .end local v11    # "tfhd":Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    .end local v12    # "sampleBaseOffset":J
    .end local v14    # "sampleSize":J
    .end local v16    # "trackFragmentBox":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    .end local v18    # "trun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    :cond_6
    return-object v10
.end method

.method public size()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    array-length v0, v0

    return v0
.end method
