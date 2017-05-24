.class public Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;
.super Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;
.source "FlatManifestWriterImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->$assertionsDisabled:Z

    .line 51
    const-class v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->LOG:Ljava/util/logging/Logger;

    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V
    .locals 0
    .param p1, "intersectionFinder"    # Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    .line 55
    return-void
.end method

.method private getAacAudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;
    .locals 6
    .param p1, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p2, "ase"    # Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    .prologue
    const/4 v5, 0x1

    .line 209
    new-instance v2, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;-><init>()V

    .line 210
    .local v2, "l":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;
    const-class v3, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    invoke-virtual {p2, v3}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    .line 211
    .local v1, "esDescriptorBox":Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->getEsDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    move-result-object v0

    .line 212
    .local v0, "audioSpecificConfig":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getSbrPresentFlag()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 213
    const-string v3, "AACH"

    iput-object v3, v2, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->fourCC:Ljava/lang/String;

    .line 219
    :goto_0
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getBitrate(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitrate:J

    .line 220
    const/16 v3, 0xff

    iput v3, v2, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->audioTag:I

    .line 221
    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->samplingRate:J

    .line 222
    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v3

    iput v3, v2, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->channels:I

    .line 223
    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I

    move-result v3

    iput v3, v2, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitPerSample:I

    .line 224
    const/4 v3, 0x4

    iput v3, v2, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->packetSize:I

    .line 225
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getAudioCodecPrivateData(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->codecPrivateData:Ljava/lang/String;

    .line 227
    return-object v2

    .line 214
    :cond_0
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getPsPresentFlag()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 215
    const-string v3, "AACP"

    iput-object v3, v2, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->fourCC:Ljava/lang/String;

    goto :goto_0

    .line 217
    :cond_1
    const-string v3, "AACL"

    iput-object v3, v2, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->fourCC:Ljava/lang/String;

    goto :goto_0
.end method

.method private getAudioCodecPrivateData(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;)Ljava/lang/String;
    .locals 2
    .param p1, "audioSpecificConfig"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    .prologue
    .line 559
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getConfigBytes()[B

    move-result-object v0

    .line 560
    .local v0, "configByteArray":[B
    invoke-static {v0}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;
    .locals 3
    .param p1, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p2, "ase"    # Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    .prologue
    .line 196
    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mp4a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getAacAudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 198
    :cond_0
    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ec-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getEc3AudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getDtsAudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_2
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I don\'t know what to do with audio of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAvcCodecPrivateData(Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;)[B
    .locals 9
    .param p1, "avcConfigurationBox"    # Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;

    .prologue
    .line 581
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->getSequenceParameterSets()Ljava/util/List;

    move-result-object v6

    .line 582
    .local v6, "sps":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->getPictureParameterSets()Ljava/util/List;

    move-result-object v4

    .line 583
    .local v4, "pps":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 585
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x4

    :try_start_0
    new-array v7, v7, [B

    fill-array-data v7, :array_0

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 587
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 588
    .local v5, "sp":[B
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "sp":[B
    :catch_0
    move-exception v1

    .line 595
    .local v1, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "ByteArrayOutputStream do not throw IOException ?!?!?"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 590
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v7, 0x4

    :try_start_1
    new-array v7, v7, [B

    fill-array-data v7, :array_1

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 591
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 592
    .local v3, "pp":[B
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 597
    .end local v3    # "pp":[B
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 585
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 590
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private getDtsAudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;
    .locals 12
    .param p1, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p2, "ase"    # Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    .prologue
    .line 371
    const-class v9, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    invoke-virtual {p2, v9}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    .line 372
    .local v3, "dtsSpecificBox":Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;
    if-nez v3, :cond_0

    .line 373
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "DTS track misses DTSSpecificBox!"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 376
    :cond_0
    const/16 v9, 0x16

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 377
    .local v8, "waveformatex":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getFrameDuration()I

    move-result v5

    .line 378
    .local v5, "frameDuration":I
    const/4 v7, 0x0

    .line 379
    .local v7, "samplesPerBlock":S
    packed-switch v5, :pswitch_data_0

    .line 393
    :goto_0
    and-int/lit16 v9, v7, 0xff

    int-to-byte v9, v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 394
    ushr-int/lit8 v9, v7, 0x8

    int-to-byte v9, v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 395
    invoke-direct {p0, v3}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getNumChannelsAndMask(Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;)[I

    move-result-object v9

    const/4 v10, 0x1

    aget v4, v9, v10

    .line 396
    .local v4, "dwChannelMask":I
    and-int/lit16 v9, v4, 0xff

    int-to-byte v9, v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 397
    ushr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 398
    ushr-int/lit8 v9, v4, 0x10

    int-to-byte v9, v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 399
    ushr-int/lit8 v9, v4, 0x18

    int-to-byte v9, v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 400
    const/16 v9, 0x10

    new-array v9, v9, [B

    fill-array-data v9, :array_0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 402
    const/16 v9, 0x8

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 403
    .local v1, "dtsCodecPrivateData":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getStreamConstruction()I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 405
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getChannelLayout()I

    move-result v0

    .line 406
    .local v0, "channelLayout":I
    and-int/lit16 v9, v0, 0xff

    int-to-byte v9, v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 407
    ushr-int/lit8 v9, v0, 0x8

    int-to-byte v9, v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 408
    ushr-int/lit8 v9, v0, 0x10

    int-to-byte v9, v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 409
    ushr-int/lit8 v9, v0, 0x18

    int-to-byte v9, v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 411
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getMultiAssetFlag()I

    move-result v9

    shl-int/lit8 v9, v9, 0x1

    int-to-byte v2, v9

    .line 412
    .local v2, "dtsFlags":B
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getLBRDurationMod()I

    move-result v9

    or-int/2addr v9, v2

    int-to-byte v2, v9

    .line 413
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 414
    const/4 v9, 0x2

    new-array v9, v9, [B

    fill-array-data v9, :array_1

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 416
    new-instance v6, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    invoke-direct {v6}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;-><init>()V

    .line 417
    .local v6, "l":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;
    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->fourCC:Ljava/lang/String;

    .line 418
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getAvgBitRate()J

    move-result-wide v10

    iput-wide v10, v6, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitrate:J

    .line 419
    const v9, 0xfffe

    iput v9, v6, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->audioTag:I

    .line 420
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getDTSSamplingFrequency()J

    move-result-wide v10

    iput-wide v10, v6, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->samplingRate:J

    .line 421
    invoke-direct {p0, v3}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getNumChannelsAndMask(Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;)[I

    move-result-object v9

    const/4 v10, 0x0

    aget v9, v9, v10

    iput v9, v6, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->channels:I

    .line 422
    const/16 v9, 0x10

    iput v9, v6, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitPerSample:I

    .line 423
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    iput v9, v6, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->packetSize:I

    .line 424
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-static {v10}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-static {v10}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->codecPrivateData:Ljava/lang/String;

    .line 425
    return-object v6

    .line 381
    .end local v0    # "channelLayout":I
    .end local v1    # "dtsCodecPrivateData":Ljava/nio/ByteBuffer;
    .end local v2    # "dtsFlags":B
    .end local v4    # "dwChannelMask":I
    .end local v6    # "l":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;
    :pswitch_0
    const/16 v7, 0x200

    .line 382
    goto/16 :goto_0

    .line 384
    :pswitch_1
    const/16 v7, 0x400

    .line 385
    goto/16 :goto_0

    .line 387
    :pswitch_2
    const/16 v7, 0x800

    .line 388
    goto/16 :goto_0

    .line 390
    :pswitch_3
    const/16 v7, 0x1000

    goto/16 :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 400
    :array_0
    .array-data 1
        -0x52t
        -0x1ct
        -0x41t
        0x5et
        0x61t
        0x5et
        0x41t
        -0x79t
        -0x6et
        -0x4t
        -0x5ct
        -0x7ft
        0x26t
        -0x67t
        0x2t
        0x11t
    .end array-data

    .line 414
    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private getEc3AudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;
    .locals 16
    .param p1, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p2, "ase"    # Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    .prologue
    .line 231
    const-class v13, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;

    .line 232
    .local v6, "ec3SpecificBox":Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;
    if-nez v6, :cond_0

    .line 233
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "EC-3 track misses EC3SpecificBox!"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 236
    :cond_0
    const/4 v11, 0x0

    .line 237
    .local v11, "nfchans":S
    const/4 v10, 0x0

    .line 238
    .local v10, "lfechans":S
    const/4 v2, 0x0

    .line 239
    .local v2, "dWChannelMaskFirstByte":B
    const/4 v3, 0x0

    .line 240
    .local v3, "dWChannelMaskSecondByte":B
    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->getEntries()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;

    .line 265
    .local v7, "entry":Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;
    iget v13, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    packed-switch v13, :pswitch_data_0

    .line 342
    :goto_1
    iget v13, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->lfeon:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 343
    add-int/lit8 v13, v10, 0x1

    int-to-short v10, v13

    .line 344
    or-int/lit8 v13, v2, 0x10

    int-to-byte v2, v13

    goto :goto_0

    .line 267
    :pswitch_0
    add-int/lit8 v13, v11, 0x2

    int-to-short v11, v13

    .line 268
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Smooth Streaming doesn\'t support DDP 1+1 mode"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 270
    :pswitch_1
    add-int/lit8 v13, v11, 0x1

    int-to-short v11, v13

    .line 271
    iget v13, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v13, :cond_2

    .line 272
    new-instance v13, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2, v3, v7}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;-><init>(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;BBLcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    invoke-virtual {v13}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->process()Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-result-object v5

    .line 273
    .local v5, "dependentSubstreamMask":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskFirstByte()B

    move-result v13

    or-int/2addr v13, v2

    int-to-byte v2, v13

    .line 274
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskSecondByte()B

    move-result v13

    or-int/2addr v13, v3

    int-to-byte v3, v13

    .line 275
    goto :goto_1

    .line 276
    .end local v5    # "dependentSubstreamMask":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    :cond_2
    or-int/lit8 v13, v2, 0x20

    int-to-byte v2, v13

    .line 278
    goto :goto_1

    .line 280
    :pswitch_2
    add-int/lit8 v13, v11, 0x2

    int-to-short v11, v13

    .line 281
    iget v13, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v13, :cond_3

    .line 282
    new-instance v13, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2, v3, v7}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;-><init>(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;BBLcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    invoke-virtual {v13}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->process()Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-result-object v5

    .line 283
    .restart local v5    # "dependentSubstreamMask":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskFirstByte()B

    move-result v13

    or-int/2addr v13, v2

    int-to-byte v2, v13

    .line 284
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskSecondByte()B

    move-result v13

    or-int/2addr v13, v3

    int-to-byte v3, v13

    .line 285
    goto :goto_1

    .line 286
    .end local v5    # "dependentSubstreamMask":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    :cond_3
    or-int/lit16 v13, v2, 0xc0

    int-to-byte v2, v13

    .line 288
    goto :goto_1

    .line 290
    :pswitch_3
    add-int/lit8 v13, v11, 0x3

    int-to-short v11, v13

    .line 291
    iget v13, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v13, :cond_4

    .line 292
    new-instance v13, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2, v3, v7}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;-><init>(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;BBLcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    invoke-virtual {v13}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->process()Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-result-object v5

    .line 293
    .restart local v5    # "dependentSubstreamMask":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskFirstByte()B

    move-result v13

    or-int/2addr v13, v2

    int-to-byte v2, v13

    .line 294
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskSecondByte()B

    move-result v13

    or-int/2addr v13, v3

    int-to-byte v3, v13

    .line 295
    goto :goto_1

    .line 296
    .end local v5    # "dependentSubstreamMask":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    :cond_4
    or-int/lit16 v13, v2, 0xe0

    int-to-byte v2, v13

    .line 298
    goto :goto_1

    .line 300
    :pswitch_4
    add-int/lit8 v13, v11, 0x3

    int-to-short v11, v13

    .line 301
    iget v13, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v13, :cond_5

    .line 302
    new-instance v13, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2, v3, v7}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;-><init>(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;BBLcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    invoke-virtual {v13}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->process()Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-result-object v5

    .line 303
    .restart local v5    # "dependentSubstreamMask":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskFirstByte()B

    move-result v13

    or-int/2addr v13, v2

    int-to-byte v2, v13

    .line 304
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskSecondByte()B

    move-result v13

    or-int/2addr v13, v3

    int-to-byte v3, v13

    .line 305
    goto/16 :goto_1

    .line 306
    .end local v5    # "dependentSubstreamMask":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    :cond_5
    or-int/lit16 v13, v2, 0xc0

    int-to-byte v2, v13

    .line 307
    or-int/lit16 v13, v3, 0x80

    int-to-byte v3, v13

    .line 309
    goto/16 :goto_1

    .line 311
    :pswitch_5
    add-int/lit8 v13, v11, 0x4

    int-to-short v11, v13

    .line 312
    iget v13, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v13, :cond_6

    .line 313
    new-instance v13, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2, v3, v7}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;-><init>(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;BBLcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    invoke-virtual {v13}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->process()Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-result-object v5

    .line 314
    .restart local v5    # "dependentSubstreamMask":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskFirstByte()B

    move-result v13

    or-int/2addr v13, v2

    int-to-byte v2, v13

    .line 315
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskSecondByte()B

    move-result v13

    or-int/2addr v13, v3

    int-to-byte v3, v13

    .line 316
    goto/16 :goto_1

    .line 317
    .end local v5    # "dependentSubstreamMask":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    :cond_6
    or-int/lit16 v13, v2, 0xe0

    int-to-byte v2, v13

    .line 318
    or-int/lit16 v13, v3, 0x80

    int-to-byte v3, v13

    .line 320
    goto/16 :goto_1

    .line 322
    :pswitch_6
    add-int/lit8 v13, v11, 0x4

    int-to-short v11, v13

    .line 323
    iget v13, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v13, :cond_7

    .line 324
    new-instance v13, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2, v3, v7}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;-><init>(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;BBLcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    invoke-virtual {v13}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->process()Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-result-object v5

    .line 325
    .restart local v5    # "dependentSubstreamMask":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskFirstByte()B

    move-result v13

    or-int/2addr v13, v2

    int-to-byte v2, v13

    .line 326
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskSecondByte()B

    move-result v13

    or-int/2addr v13, v3

    int-to-byte v3, v13

    .line 327
    goto/16 :goto_1

    .line 328
    .end local v5    # "dependentSubstreamMask":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    :cond_7
    or-int/lit16 v13, v2, 0xcc

    int-to-byte v2, v13

    .line 330
    goto/16 :goto_1

    .line 332
    :pswitch_7
    add-int/lit8 v13, v11, 0x5

    int-to-short v11, v13

    .line 333
    iget v13, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v13, :cond_8

    .line 334
    new-instance v13, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2, v3, v7}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;-><init>(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;BBLcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    invoke-virtual {v13}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->process()Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-result-object v5

    .line 335
    .restart local v5    # "dependentSubstreamMask":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskFirstByte()B

    move-result v13

    or-int/2addr v13, v2

    int-to-byte v2, v13

    .line 336
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskSecondByte()B

    move-result v13

    or-int/2addr v13, v3

    int-to-byte v3, v13

    .line 337
    goto/16 :goto_1

    .line 338
    .end local v5    # "dependentSubstreamMask":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    :cond_8
    or-int/lit16 v13, v2, 0xec

    int-to-byte v2, v13

    goto/16 :goto_1

    .line 348
    .end local v7    # "entry":Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;
    :cond_9
    const/16 v13, 0x16

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 349
    .local v12, "waveformatex":Ljava/nio/ByteBuffer;
    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_0

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 350
    invoke-virtual {v12, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 351
    invoke-virtual {v12, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 352
    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_1

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 353
    const/16 v13, 0x10

    new-array v13, v13, [B

    fill-array-data v13, :array_2

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 355
    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->getContentSize()J

    move-result-wide v14

    long-to-int v13, v14

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 356
    .local v4, "dec3Content":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v4}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->getContent(Ljava/nio/ByteBuffer;)V

    .line 358
    new-instance v9, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    invoke-direct {v9}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;-><init>()V

    .line 359
    .local v9, "l":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;
    const-string v13, "EC-3"

    iput-object v13, v9, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->fourCC:Ljava/lang/String;

    .line 360
    invoke-virtual/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getBitrate(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v14

    iput-wide v14, v9, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitrate:J

    .line 361
    const v13, 0xfffe

    iput v13, v9, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->audioTag:I

    .line 362
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v14

    iput-wide v14, v9, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->samplingRate:J

    .line 363
    add-int v13, v11, v10

    iput v13, v9, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->channels:I

    .line 364
    const/16 v13, 0x10

    iput v13, v9, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitPerSample:I

    .line 365
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->limit()I

    move-result v13

    iput v13, v9, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->packetSize:I

    .line 366
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    invoke-static {v14}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    invoke-static {v14}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->codecPrivateData:Ljava/lang/String;

    .line 367
    return-object v9

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 349
    :array_0
    .array-data 1
        0x0t
        0x6t
    .end array-data

    .line 352
    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 353
    nop

    :array_2
    .array-data 1
        -0x51t
        -0x79t
        -0x5t
        -0x59t
        0x2t
        0x2dt
        -0x5t
        0x42t
        -0x5ct
        -0x2ct
        0x5t
        -0x33t
        -0x6dt
        -0x7ct
        0x3bt
        -0x23t
    .end array-data
.end method

.method private getNumChannelsAndMask(Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;)[I
    .locals 10
    .param p1, "dtsSpecificBox"    # Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x20000

    const/high16 v6, 0x10000

    const v5, 0x8000

    .line 453
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getChannelLayout()I

    move-result v0

    .line 454
    .local v0, "channelLayout":I
    const/4 v2, 0x0

    .line 455
    .local v2, "numChannels":I
    const/4 v1, 0x0

    .line 456
    .local v1, "dwChannelMask":I
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v8, :cond_0

    .line 458
    add-int/lit8 v2, v2, 0x1

    .line 459
    or-int/lit8 v1, v1, 0x4

    .line 461
    :cond_0
    and-int/lit8 v3, v0, 0x2

    if-ne v3, v9, :cond_1

    .line 463
    add-int/lit8 v2, v2, 0x2

    .line 464
    or-int/lit8 v1, v1, 0x1

    .line 465
    or-int/lit8 v1, v1, 0x2

    .line 467
    :cond_1
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 469
    add-int/lit8 v2, v2, 0x2

    .line 471
    or-int/lit8 v1, v1, 0x10

    .line 472
    or-int/lit8 v1, v1, 0x20

    .line 474
    :cond_2
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 476
    add-int/lit8 v2, v2, 0x1

    .line 477
    or-int/lit8 v1, v1, 0x8

    .line 479
    :cond_3
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 481
    add-int/lit8 v2, v2, 0x1

    .line 482
    or-int/lit16 v1, v1, 0x100

    .line 484
    :cond_4
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 486
    add-int/lit8 v2, v2, 0x2

    .line 487
    or-int/lit16 v1, v1, 0x1000

    .line 488
    or-int/lit16 v1, v1, 0x4000

    .line 490
    :cond_5
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 492
    add-int/lit8 v2, v2, 0x2

    .line 493
    or-int/lit8 v1, v1, 0x10

    .line 494
    or-int/lit8 v1, v1, 0x20

    .line 496
    :cond_6
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 498
    add-int/lit8 v2, v2, 0x1

    .line 499
    or-int/lit16 v1, v1, 0x2000

    .line 501
    :cond_7
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 503
    add-int/lit8 v2, v2, 0x1

    .line 504
    or-int/lit16 v1, v1, 0x800

    .line 506
    :cond_8
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 508
    add-int/lit8 v2, v2, 0x2

    .line 509
    or-int/lit8 v1, v1, 0x40

    .line 510
    or-int/lit16 v1, v1, 0x80

    .line 512
    :cond_9
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 514
    add-int/lit8 v2, v2, 0x2

    .line 515
    or-int/lit16 v1, v1, 0x200

    .line 516
    or-int/lit16 v1, v1, 0x400

    .line 518
    :cond_a
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 520
    add-int/lit8 v2, v2, 0x2

    .line 522
    or-int/lit8 v1, v1, 0x10

    .line 523
    or-int/lit8 v1, v1, 0x20

    .line 525
    :cond_b
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 527
    add-int/lit8 v2, v2, 0x1

    .line 528
    or-int/lit8 v1, v1, 0x8

    .line 530
    :cond_c
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 532
    add-int/lit8 v2, v2, 0x2

    .line 533
    or-int/lit8 v1, v1, 0x10

    .line 534
    or-int/lit8 v1, v1, 0x20

    .line 536
    :cond_d
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 538
    add-int/lit8 v2, v2, 0x1

    .line 539
    or-int/2addr v1, v6

    .line 541
    :cond_e
    and-int v3, v0, v5

    if-ne v3, v5, :cond_f

    .line 543
    add-int/lit8 v2, v2, 0x2

    .line 544
    or-int/2addr v1, v5

    .line 545
    or-int/2addr v1, v7

    .line 547
    :cond_f
    and-int v3, v0, v6

    if-ne v3, v6, :cond_10

    .line 549
    add-int/lit8 v2, v2, 0x1

    .line 551
    :cond_10
    and-int v3, v0, v7

    if-ne v3, v7, :cond_11

    .line 553
    add-int/lit8 v2, v2, 0x2

    .line 555
    :cond_11
    new-array v3, v9, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v1, v3, v8

    return-object v3
.end method

.method private getVideoQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;
    .locals 5
    .param p1, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p2, "vse"    # Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    .prologue
    .line 565
    const-string v2, "avc1"

    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    const-class v2, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;

    invoke-virtual {p2, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;

    .line 567
    .local v0, "avcConfigurationBox":Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;
    new-instance v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;-><init>()V

    .line 568
    .local v1, "l":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getBitrate(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->bitrate:J

    .line 569
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getAvcCodecPrivateData(Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->codecPrivateData:Ljava/lang/String;

    .line 570
    const-string v2, "AVC1"

    iput-object v2, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->fourCC:Ljava/lang/String;

    .line 571
    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->width:I

    .line 572
    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->height:I

    .line 573
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->getLengthSizeMinusOne()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->nalLength:I

    .line 577
    return-object v1

    .line 575
    .end local v0    # "avcConfigurationBox":Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;
    .end local v1    # "l":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;
    :cond_0
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I don\'t know how to handle video of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected customizeManifest(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Document;
    .locals 0
    .param p1, "manifest"    # Lorg/w3c/dom/Document;

    .prologue
    .line 64
    return-object p1
.end method

.method public getManifest(Lcom/googlecode/mp4parser/authoring/Movie;)Ljava/lang/String;
    .locals 34
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v25, Ljava/util/LinkedList;

    invoke-direct/range {v25 .. v25}, Ljava/util/LinkedList;-><init>()V

    .line 70
    .local v25, "videoQualities":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;>;"
    const-wide/16 v28, -0x1

    .line 72
    .local v28, "videoTimescale":J
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 73
    .local v5, "audioQualities":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;>;"
    const-wide/16 v8, -0x1

    .line 75
    .local v8, "audioTimescale":J
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/googlecode/mp4parser/authoring/Track;

    .line 76
    .local v23, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface/range {v23 .. v23}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    move/from16 v30, v0

    if-eqz v30, :cond_1

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->videoFragmentsDurations:[J

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->calculateFragmentDurations(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->checkFragmentsAlign([J[J)[J

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->videoFragmentsDurations:[J

    .line 78
    invoke-interface/range {v23 .. v23}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v22

    .line 79
    .local v22, "stsd":Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    invoke-virtual/range {v22 .. v22}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    move-result-object v30

    check-cast v30, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getVideoQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    const-wide/16 v30, -0x1

    cmp-long v30, v28, v30

    if-nez v30, :cond_2

    .line 81
    invoke-interface/range {v23 .. v23}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v28

    .line 86
    .end local v22    # "stsd":Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    :cond_1
    invoke-interface/range {v23 .. v23}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    move/from16 v30, v0

    if-eqz v30, :cond_0

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->audioFragmentsDurations:[J

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->calculateFragmentDurations(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->checkFragmentsAlign([J[J)[J

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->audioFragmentsDurations:[J

    .line 88
    invoke-interface/range {v23 .. v23}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v22

    .line 89
    .restart local v22    # "stsd":Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    invoke-virtual/range {v22 .. v22}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    move-result-object v30

    check-cast v30, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getAudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    const-wide/16 v30, -0x1

    cmp-long v30, v8, v30

    if-nez v30, :cond_3

    .line 91
    invoke-interface/range {v23 .. v23}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v8

    goto/16 :goto_0

    .line 83
    :cond_2
    sget-boolean v30, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->$assertionsDisabled:Z

    if-nez v30, :cond_1

    invoke-interface/range {v23 .. v23}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v30

    cmp-long v30, v28, v30

    if-eqz v30, :cond_1

    new-instance v30, Ljava/lang/AssertionError;

    invoke-direct/range {v30 .. v30}, Ljava/lang/AssertionError;-><init>()V

    throw v30

    .line 93
    :cond_3
    sget-boolean v30, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->$assertionsDisabled:Z

    if-nez v30, :cond_0

    invoke-interface/range {v23 .. v23}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v30

    cmp-long v30, v8, v30

    if-eqz v30, :cond_0

    new-instance v30, Ljava/lang/AssertionError;

    invoke-direct/range {v30 .. v30}, Ljava/lang/AssertionError;-><init>()V

    throw v30

    .line 98
    .end local v22    # "stsd":Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .end local v23    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_4
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 101
    .local v12, "documentBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 105
    .local v11, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v10

    .line 108
    .local v10, "document":Lorg/w3c/dom/Document;
    const-string v30, "SmoothStreamingMedia"

    move-object/from16 v0, v30

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 109
    .local v19, "smoothStreamingMedia":Lorg/w3c/dom/Element;
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 110
    const-string v30, "MajorVersion"

    const-string v31, "2"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v30, "MinorVersion"

    const-string v31, "1"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v30, "Duration"

    const-string v31, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v30, Lcom/googlecode/mp4parser/Version;->VERSION:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 116
    const-string v30, "StreamIndex"

    move-object/from16 v0, v30

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v26

    .line 117
    .local v26, "videoStreamIndex":Lorg/w3c/dom/Element;
    const-string v30, "Type"

    const-string/jumbo v31, "video"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v30, "TimeScale"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v30, "Chunks"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->videoFragmentsDurations:[J

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v30, "Url"

    const-string/jumbo v31, "video/{bitrate}/{start time}"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v30, "QualityLevels"

    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedList;->size()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 124
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v15, v0, :cond_5

    .line 125
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;

    .line 126
    .local v27, "vq":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;
    const-string v30, "QualityLevel"

    move-object/from16 v0, v30

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 127
    .local v17, "qualityLevel":Lorg/w3c/dom/Element;
    const-string v30, "Index"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v30, "Bitrate"

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->bitrate:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v30, "FourCC"

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->fourCC:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v30, "MaxWidth"

    move-object/from16 v0, v27

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->width:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v30, "MaxHeight"

    move-object/from16 v0, v27

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->height:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v30, "CodecPrivateData"

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->codecPrivateData:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v30, "NALUnitLengthField"

    move-object/from16 v0, v27

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->nalLength:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 124
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 102
    .end local v10    # "document":Lorg/w3c/dom/Document;
    .end local v11    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v15    # "i":I
    .end local v17    # "qualityLevel":Lorg/w3c/dom/Element;
    .end local v19    # "smoothStreamingMedia":Lorg/w3c/dom/Element;
    .end local v26    # "videoStreamIndex":Lorg/w3c/dom/Element;
    .end local v27    # "vq":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;
    :catch_0
    move-exception v13

    .line 103
    .local v13, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v30, Ljava/io/IOException;

    move-object/from16 v0, v30

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v30

    .line 137
    .end local v13    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v10    # "document":Lorg/w3c/dom/Document;
    .restart local v11    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v15    # "i":I
    .restart local v19    # "smoothStreamingMedia":Lorg/w3c/dom/Element;
    .restart local v26    # "videoStreamIndex":Lorg/w3c/dom/Element;
    :cond_5
    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->videoFragmentsDurations:[J

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v15, v0, :cond_6

    .line 138
    const-string v30, "c"

    move-object/from16 v0, v30

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 139
    .local v7, "c":Lorg/w3c/dom/Element;
    const-string/jumbo v30, "n"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v7, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v30, "d"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->videoFragmentsDurations:[J

    move-object/from16 v31, v0

    aget-wide v32, v31, v15

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v7, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, v26

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 137
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 144
    .end local v7    # "c":Lorg/w3c/dom/Element;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->audioFragmentsDurations:[J

    move-object/from16 v30, v0

    if-eqz v30, :cond_8

    .line 145
    const-string v30, "StreamIndex"

    move-object/from16 v0, v30

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 146
    .local v6, "audioStreamIndex":Lorg/w3c/dom/Element;
    const-string v30, "Type"

    const-string v31, "audio"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v6, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v30, "TimeScale"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v6, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v30, "Chunks"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->audioFragmentsDurations:[J

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v6, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v30, "Url"

    const-string v31, "audio/{bitrate}/{start time}"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v6, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v30, "QualityLevels"

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v6, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 153
    const/4 v15, 0x0

    :goto_3
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v15, v0, :cond_7

    .line 154
    invoke-virtual {v5, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    .line 155
    .local v4, "aq":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;
    const-string v30, "QualityLevel"

    move-object/from16 v0, v30

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 156
    .restart local v17    # "qualityLevel":Lorg/w3c/dom/Element;
    const-string v30, "Index"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v30, "FourCC"

    iget-object v0, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->fourCC:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v30, "Bitrate"

    iget-wide v0, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitrate:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v30, "AudioTag"

    iget v0, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->audioTag:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v30, "SamplingRate"

    iget-wide v0, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->samplingRate:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v30, "Channels"

    iget v0, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->channels:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v30, "BitsPerSample"

    iget v0, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitPerSample:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v30, "PacketSize"

    iget v0, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->packetSize:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v30, "CodecPrivateData"

    iget-object v0, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->codecPrivateData:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 153
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 167
    .end local v4    # "aq":Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;
    .end local v17    # "qualityLevel":Lorg/w3c/dom/Element;
    :cond_7
    const/4 v15, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->audioFragmentsDurations:[J

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v15, v0, :cond_8

    .line 168
    const-string v30, "c"

    move-object/from16 v0, v30

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 169
    .restart local v7    # "c":Lorg/w3c/dom/Element;
    const-string/jumbo v30, "n"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v7, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v30, "d"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->audioFragmentsDurations:[J

    move-object/from16 v31, v0

    aget-wide v32, v31, v15

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v7, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 167
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 175
    .end local v6    # "audioStreamIndex":Lorg/w3c/dom/Element;
    .end local v7    # "c":Lorg/w3c/dom/Element;
    :cond_8
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->setXmlStandalone(Z)V

    .line 176
    new-instance v20, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 177
    .local v20, "source":Ljavax/xml/transform/Source;
    new-instance v21, Ljava/io/StringWriter;

    invoke-direct/range {v21 .. v21}, Ljava/io/StringWriter;-><init>()V

    .line 178
    .local v21, "stringWriter":Ljava/io/StringWriter;
    new-instance v18, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 179
    .local v18, "result":Ljavax/xml/transform/Result;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v14

    .line 182
    .local v14, "factory":Ljavax/xml/transform/TransformerFactory;
    :try_start_1
    invoke-virtual {v14}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v24

    .line 183
    .local v24, "transformer":Ljavax/xml/transform/Transformer;
    const-string v30, "indent"

    const-string/jumbo v31, "yes"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 190
    invoke-virtual/range {v21 .. v21}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    return-object v30

    .line 185
    .end local v24    # "transformer":Ljavax/xml/transform/Transformer;
    :catch_1
    move-exception v13

    .line 186
    .local v13, "e":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v30, Ljava/io/IOException;

    move-object/from16 v0, v30

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v30

    .line 187
    .end local v13    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v13

    .line 188
    .local v13, "e":Ljavax/xml/transform/TransformerException;
    new-instance v30, Ljava/io/IOException;

    move-object/from16 v0, v30

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v30
.end method
