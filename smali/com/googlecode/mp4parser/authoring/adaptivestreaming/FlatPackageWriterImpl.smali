.class public Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;
.super Ljava/lang/Object;
.source "FlatPackageWriterImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/adaptivestreaming/PackageWriter;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static LOG:Ljava/util/logging/Logger;


# instance fields
.field private debugOutput:Z

.field private ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

.field manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

.field private outputDirectory:Ljava/io/File;

.field timeScale:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->$assertionsDisabled:Z

    .line 37
    const-class v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->LOG:Ljava/util/logging/Logger;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/32 v2, 0x989680

    iput-wide v2, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->timeScale:J

    .line 46
    new-instance v1, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    .line 47
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;-><init>()V

    .line 48
    .local v0, "intersectionFinder":Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->setIntersectionFinder(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    .line 49
    new-instance v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;

    invoke-direct {v1, v0}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "minFragmentDuration"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/32 v2, 0x989680

    iput-wide v2, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->timeScale:J

    .line 59
    new-instance v1, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    .line 60
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;-><init>(I)V

    .line 61
    .local v0, "intersectionFinder":Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->setIntersectionFinder(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    .line 62
    new-instance v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;

    invoke-direct {v1, v0}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    .line 63
    return-void
.end method

.method private removeUnknownTracks(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/googlecode/mp4parser/authoring/Movie;
    .locals 6
    .param p1, "source"    # Lcom/googlecode/mp4parser/authoring/Movie;

    .prologue
    .line 169
    new-instance v1, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 170
    .local v1, "nuMovie":Lcom/googlecode/mp4parser/authoring/Movie;
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 171
    .local v2, "track":Lcom/googlecode/mp4parser/authoring/Track;
    const-string/jumbo v3, "vide"

    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "soun"

    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    :cond_0
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_0

    .line 174
    :cond_1
    sget-object v3, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed track "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v2    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_2
    return-object v1
.end method


# virtual methods
.method public correctTimescale(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/googlecode/mp4parser/authoring/Movie;
    .locals 7
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;

    .prologue
    .line 189
    new-instance v1, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 190
    .local v1, "nuMovie":Lcom/googlecode/mp4parser/authoring/Movie;
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 191
    .local v2, "track":Lcom/googlecode/mp4parser/authoring/Track;
    new-instance v3, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->timeScale:J

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getFragmentIntersectionFinder()Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    move-result-object v6

    invoke-interface {v6, v2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;->sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v6

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;-><init>(Lcom/googlecode/mp4parser/authoring/Track;J[J)V

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_0

    .line 193
    .end local v2    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_0
    return-object v1
.end method

.method public setDebugOutput(Z)V
    .locals 0
    .param p1, "debugOutput"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->debugOutput:Z

    .line 73
    return-void
.end method

.method public setIsmvBuilder(Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;)V
    .locals 2
    .param p1, "ismvBuilder"    # Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    .line 77
    new-instance v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getFragmentIntersectionFinder()Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    .line 78
    return-void
.end method

.method public setManifestWriter(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;)V
    .locals 0
    .param p1, "manifestWriter"    # Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    .line 82
    return-void
.end method

.method public setOutputDirectory(Ljava/io/File;)V
    .locals 1
    .param p1, "outputDirectory"    # Ljava/io/File;

    .prologue
    .line 66
    sget-boolean v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    .line 69
    return-void
.end method

.method public write(Lcom/googlecode/mp4parser/authoring/Movie;)V
    .locals 34
    .param p1, "source"    # Lcom/googlecode/mp4parser/authoring/Movie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->debugOutput:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->mkdirs()Z

    .line 95
    new-instance v13, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v13}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    .line 96
    .local v13, "defaultMp4Builder":Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;

    move-result-object v23

    .line 97
    .local v23, "muxed":Lcom/coremedia/iso/IsoFile;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    move-object/from16 v29, v0

    const-string v32, "debug_1_muxed.mp4"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v24, "muxedFile":Ljava/io/File;
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 99
    .local v25, "muxedFileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 100
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V

    .line 102
    .end local v13    # "defaultMp4Builder":Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
    .end local v23    # "muxed":Lcom/coremedia/iso/IsoFile;
    .end local v24    # "muxedFile":Ljava/io/File;
    .end local v25    # "muxedFileOutputStream":Ljava/io/FileOutputStream;
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->removeUnknownTracks(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v10

    .line 103
    .local v10, "cleanedSource":Lcom/googlecode/mp4parser/authoring/Movie;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->correctTimescale(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v22

    .line 105
    .local v22, "movieWithAdjustedTimescale":Lcom/googlecode/mp4parser/authoring/Movie;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->debugOutput:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1

    .line 106
    new-instance v13, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v13}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    .line 107
    .restart local v13    # "defaultMp4Builder":Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;

    move-result-object v23

    .line 108
    .restart local v23    # "muxed":Lcom/coremedia/iso/IsoFile;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    move-object/from16 v29, v0

    const-string v32, "debug_2_timescale.mp4"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .restart local v24    # "muxedFile":Ljava/io/File;
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 110
    .restart local v25    # "muxedFileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 111
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V

    .line 113
    .end local v13    # "defaultMp4Builder":Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
    .end local v23    # "muxed":Lcom/coremedia/iso/IsoFile;
    .end local v24    # "muxedFile":Ljava/io/File;
    .end local v25    # "muxedFileOutputStream":Ljava/io/FileOutputStream;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;

    move-result-object v19

    .line 114
    .local v19, "isoFile":Lcom/coremedia/iso/IsoFile;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->debugOutput:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    .line 115
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    move-object/from16 v29, v0

    const-string v32, "debug_3_fragmented.mp4"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v5, "allQualities":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 117
    .local v4, "allQualis":Ljava/io/FileOutputStream;
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 118
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 122
    .end local v4    # "allQualis":Ljava/io/FileOutputStream;
    .end local v5    # "allQualities":Ljava/io/File;
    :cond_2
    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/googlecode/mp4parser/authoring/Track;

    .line 123
    .local v28, "track":Lcom/googlecode/mp4parser/authoring/Track;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;->getBitrate(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "bitrate":Ljava/lang/String;
    invoke-interface/range {v28 .. v28}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v30

    .line 125
    .local v30, "trackId":J
    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/IsoFile;->getBoxes()Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 127
    .local v9, "boxIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    invoke-interface/range {v28 .. v28}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 128
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    move-object/from16 v29, v0

    const-string v32, "audio"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    .local v21, "mediaOutDir":Ljava/io/File;
    :goto_1
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v7, "bitRateOutputDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 138
    sget-object v29, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Created : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;->calculateFragmentDurations(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v16

    .line 141
    .local v16, "fragmentTimes":[J
    const-wide/16 v26, 0x0

    .line 142
    .local v26, "startTime":J
    const/4 v11, 0x0

    .line 143
    .local v11, "currentFragment":I
    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_3

    .line 144
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/Box;

    .line 145
    .local v6, "b":Lcom/coremedia/iso/boxes/Box;
    instance-of v0, v6, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    move/from16 v29, v0

    if-eqz v29, :cond_4

    .line 146
    sget-boolean v29, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->$assertionsDisabled:Z

    if-nez v29, :cond_7

    move-object/from16 v29, v6

    check-cast v29, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getTrackCount()I

    move-result v29

    const/16 v32, 0x1

    move/from16 v0, v29

    move/from16 v1, v32

    if-eq v0, v1, :cond_7

    new-instance v29, Ljava/lang/AssertionError;

    invoke-direct/range {v29 .. v29}, Ljava/lang/AssertionError;-><init>()V

    throw v29

    .line 130
    .end local v6    # "b":Lcom/coremedia/iso/boxes/Box;
    .end local v7    # "bitRateOutputDir":Ljava/io/File;
    .end local v11    # "currentFragment":I
    .end local v16    # "fragmentTimes":[J
    .end local v21    # "mediaOutDir":Ljava/io/File;
    .end local v26    # "startTime":J
    :cond_5
    invoke-interface/range {v28 .. v28}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    move/from16 v29, v0

    if-eqz v29, :cond_6

    .line 131
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    move-object/from16 v29, v0

    const-string/jumbo v32, "video"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v21    # "mediaOutDir":Ljava/io/File;
    goto/16 :goto_1

    .line 133
    .end local v21    # "mediaOutDir":Ljava/io/File;
    :cond_6
    sget-object v29, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Skipping Track with handler "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-interface/range {v28 .. v28}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " and "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-interface/range {v28 .. v28}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v6    # "b":Lcom/coremedia/iso/boxes/Box;
    .restart local v7    # "bitRateOutputDir":Ljava/io/File;
    .restart local v11    # "currentFragment":I
    .restart local v16    # "fragmentTimes":[J
    .restart local v21    # "mediaOutDir":Ljava/io/File;
    .restart local v26    # "startTime":J
    :cond_7
    move-object/from16 v29, v6

    .line 147
    check-cast v29, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getTrackNumbers()[J

    move-result-object v29

    const/16 v32, 0x0

    aget-wide v32, v29, v32

    cmp-long v29, v32, v30

    if-nez v29, :cond_4

    .line 148
    new-instance v15, Ljava/io/FileOutputStream;

    new-instance v29, Ljava/io/File;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 149
    .local v15, "fos":Ljava/io/FileOutputStream;
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "currentFragment":I
    .local v12, "currentFragment":I
    aget-wide v32, v16, v11

    add-long v26, v26, v32

    .line 150
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    .line 151
    .local v14, "fc":Ljava/nio/channels/FileChannel;
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/coremedia/iso/boxes/Box;

    .line 152
    .local v20, "mdat":Lcom/coremedia/iso/boxes/Box;
    sget-boolean v29, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->$assertionsDisabled:Z

    if-nez v29, :cond_8

    invoke-interface/range {v20 .. v20}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v32, "mdat"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    new-instance v29, Ljava/lang/AssertionError;

    invoke-direct/range {v29 .. v29}, Ljava/lang/AssertionError;-><init>()V

    throw v29

    .line 153
    :cond_8
    invoke-interface {v6, v14}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 154
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 155
    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v14, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 156
    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->close()V

    move v11, v12

    .end local v12    # "currentFragment":I
    .restart local v11    # "currentFragment":I
    goto/16 :goto_2

    .line 162
    .end local v6    # "b":Lcom/coremedia/iso/boxes/Box;
    .end local v7    # "bitRateOutputDir":Ljava/io/File;
    .end local v8    # "bitrate":Ljava/lang/String;
    .end local v9    # "boxIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v11    # "currentFragment":I
    .end local v14    # "fc":Ljava/nio/channels/FileChannel;
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "fragmentTimes":[J
    .end local v20    # "mdat":Lcom/coremedia/iso/boxes/Box;
    .end local v21    # "mediaOutDir":Ljava/io/File;
    .end local v26    # "startTime":J
    .end local v28    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    .end local v30    # "trackId":J
    :cond_9
    new-instance v17, Ljava/io/FileWriter;

    new-instance v29, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    move-object/from16 v32, v0

    const-string v33, "Manifest"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 163
    .local v17, "fw":Ljava/io/FileWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;->getManifest(Lcom/googlecode/mp4parser/authoring/Movie;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileWriter;->close()V

    .line 166
    return-void
.end method
