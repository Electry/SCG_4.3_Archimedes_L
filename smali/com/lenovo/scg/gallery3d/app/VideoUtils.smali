.class public Lcom/lenovo/scg/gallery3d/app/VideoUtils;
.super Ljava/lang/Object;
.source "VideoUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_BUFFER_SIZE:I = 0x100000

.field private static final LOGTAG:Ljava/lang/String; = "VideoUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/lenovo/scg/gallery3d/app/VideoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/app/VideoUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D
    .locals 23
    .param p0, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p1, "cutHere"    # D
    .param p3, "next"    # Z

    .prologue
    .line 290
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [D

    move-object/from16 v16, v0

    .line 291
    .local v16, "timeOfSyncSamples":[D
    const-wide/16 v4, 0x0

    .line 292
    .local v4, "currentSample":J
    const-wide/16 v6, 0x0

    .line 293
    .local v6, "currentTime":D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 294
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 295
    .local v3, "entry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    int-to-long v0, v10

    move-wide/from16 v18, v0

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v20

    cmp-long v17, v18, v20

    if-gez v17, :cond_1

    .line 296
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v17

    const-wide/16 v18, 0x1

    add-long v18, v18, v4

    invoke-static/range {v17 .. v19}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v17

    if-ltz v17, :cond_0

    .line 299
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v17

    const-wide/16 v18, 0x1

    add-long v18, v18, v4

    invoke-static/range {v17 .. v19}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v17

    aput-wide v6, v16, v17

    .line 301
    :cond_0
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    add-double v6, v6, v18

    .line 302
    const-wide/16 v18, 0x1

    add-long v4, v4, v18

    .line 295
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 293
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 305
    .end local v3    # "entry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v10    # "j":I
    :cond_2
    const-wide/16 v12, 0x0

    .line 306
    .local v12, "previous":D
    move-object/from16 v2, v16

    .local v2, "arr$":[D
    array-length v11, v2

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v11, :cond_5

    aget-wide v14, v2, v9

    .line 307
    .local v14, "timeOfSyncSample":D
    cmpl-double v17, v14, p1

    if-lez v17, :cond_4

    .line 308
    if-eqz p3, :cond_3

    .line 316
    .end local v14    # "timeOfSyncSample":D
    :goto_3
    return-wide v14

    .restart local v14    # "timeOfSyncSample":D
    :cond_3
    move-wide v14, v12

    .line 311
    goto :goto_3

    .line 314
    :cond_4
    move-wide v12, v14

    .line 306
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 316
    .end local v14    # "timeOfSyncSample":D
    :cond_5
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-wide v14, v16, v17

    goto :goto_3
.end method

.method private static genVideoUsingMuxer(Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 1
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "startMs"    # I
    .param p3, "endMs"    # I
    .param p4, "useAudio"    # Z
    .param p5, "useVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/app/VideoUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 220
    :cond_0
    return-void
.end method

.method public static startMute(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;)V
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "dstFileInfo"    # Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 61
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_MEDIA_MUXER:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/app/VideoUtils;->genVideoUsingMuxer(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {p0, p1}, Lcom/lenovo/scg/gallery3d/app/VideoUtils;->startMuteUsingMp4Parser(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;)V

    goto :goto_0
.end method

.method private static startMuteUsingMp4Parser(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;)V
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "dstFileInfo"    # Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;->mFile:Ljava/io/File;

    .line 81
    .local v0, "dst":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v4, "src":Ljava/io/File;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "r"

    invoke-direct {v3, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .local v3, "randomAccessFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-static {v7}, Lcom/googlecode/mp4parser/authoring/container/mp4/MovieCreator;->build(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v2

    .line 86
    .local v2, "movie":Lcom/googlecode/mp4parser/authoring/Movie;
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v6

    .line 87
    .local v6, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v2, v7}, Lcom/googlecode/mp4parser/authoring/Movie;->setTracks(Ljava/util/List;)V

    .line 89
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/mp4parser/authoring/Track;

    .line 90
    .local v5, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "vide"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 91
    invoke-virtual {v2, v5}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_0

    .line 94
    .end local v5    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_1
    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/app/VideoUtils;->writeMovieIntoFile(Ljava/io/File;Lcom/googlecode/mp4parser/authoring/Movie;)V

    .line 95
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 96
    return-void
.end method

.method public static startTrim(Ljava/io/File;Ljava/io/File;II)V
    .locals 6
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;
    .param p2, "startMs"    # I
    .param p3, "endMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 72
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_MEDIA_MUXER:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/app/VideoUtils;->genVideoUsingMuxer(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/app/VideoUtils;->trimUsingMp4Parser(Ljava/io/File;Ljava/io/File;II)V

    goto :goto_0
.end method

.method private static trimUsingMp4Parser(Ljava/io/File;Ljava/io/File;II)V
    .locals 28
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;
    .param p2, "startMs"    # I
    .param p3, "endMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    new-instance v19, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    .local v19, "randomAccessFile":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-static {v2}, Lcom/googlecode/mp4parser/authoring/container/mp4/MovieCreator;->build(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v18

    .line 228
    .local v18, "movie":Lcom/googlecode/mp4parser/authoring/Movie;
    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v23

    .line 229
    .local v23, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/authoring/Movie;->setTracks(Ljava/util/List;)V

    .line 231
    move/from16 v0, p2

    div-int/lit16 v2, v0, 0x3e8

    int-to-double v0, v2

    move-wide/from16 v20, v0

    .line 232
    .local v20, "startTime":D
    move/from16 v0, p3

    div-int/lit16 v2, v0, 0x3e8

    int-to-double v12, v2

    .line 234
    .local v12, "endTime":D
    const/16 v22, 0x0

    .line 239
    .local v22, "timeCorrected":Z
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/Track;

    .line 240
    .local v3, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 241
    if-eqz v22, :cond_1

    .line 247
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v24, "The startTime has already been corrected by another track with SyncSample. Not Supported."

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    :cond_1
    const/4 v2, 0x0

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/VideoUtils;->correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D

    move-result-wide v20

    .line 250
    const/4 v2, 0x1

    invoke-static {v3, v12, v13, v2}, Lcom/lenovo/scg/gallery3d/app/VideoUtils;->correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D

    move-result-wide v12

    .line 251
    const/16 v22, 0x1

    goto :goto_0

    .line 255
    .end local v3    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_2
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/Track;

    .line 256
    .restart local v3    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    const-wide/16 v8, 0x0

    .line 257
    .local v8, "currentSample":J
    const-wide/16 v10, 0x0

    .line 258
    .local v10, "currentTime":D
    const-wide/16 v4, -0x1

    .line 259
    .local v4, "startSample":J
    const-wide/16 v6, -0x1

    .line 261
    .local v6, "endSample":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_5

    .line 262
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 263
    .local v14, "entry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_3
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v26

    cmp-long v2, v24, v26

    if-gez v2, :cond_4

    .line 267
    cmpg-double v2, v10, v20

    if-gtz v2, :cond_3

    .line 269
    move-wide v4, v8

    .line 271
    :cond_3
    cmpg-double v2, v10, v12

    if-gtz v2, :cond_4

    .line 274
    move-wide v6, v8

    .line 279
    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    add-double v10, v10, v24

    .line 280
    const-wide/16 v24, 0x1

    add-long v8, v8, v24

    .line 263
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 261
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 283
    .end local v14    # "entry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v17    # "j":I
    :cond_5
    new-instance v2, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;

    invoke-direct/range {v2 .. v7}, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;-><init>(Lcom/googlecode/mp4parser/authoring/Track;JJ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_1

    .line 285
    .end local v3    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    .end local v4    # "startSample":J
    .end local v6    # "endSample":J
    .end local v8    # "currentSample":J
    .end local v10    # "currentTime":D
    .end local v15    # "i":I
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/VideoUtils;->writeMovieIntoFile(Ljava/io/File;Lcom/googlecode/mp4parser/authoring/Movie;)V

    .line 286
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V

    .line 287
    return-void
.end method

.method private static writeMovieIntoFile(Ljava/io/File;Lcom/googlecode/mp4parser/authoring/Movie;)V
    .locals 4
    .param p0, "dst"    # Ljava/io/File;
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 103
    :cond_0
    new-instance v3, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    invoke-virtual {v3, p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;

    move-result-object v2

    .line 104
    .local v2, "out":Lcom/coremedia/iso/IsoFile;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 105
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 106
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2, v0}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 108
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 109
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 110
    return-void
.end method
