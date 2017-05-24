.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
.super Ljava/lang/Object;
.source "OutsidePhotoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x313cfe45104033c5L


# instance fields
.field private albumName:Ljava/lang/String;

.field private httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

.field private id:Ljava/lang/String;

.field private outsideSize:J

.field private outsideUrl:Ljava/lang/String;

.field private photoName:Ljava/lang/String;

.field private thubmUrl144:Ljava/lang/String;

.field private thubmUrl200:Ljava/lang/String;

.field private thubmUrl640:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    .line 30
    return-void
.end method

.method private buildBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 186
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "id"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "albumName"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v1, "thubmUrl640"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl640:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v1, "thubmUrl144"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl144:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string/jumbo v1, "thubmUrl200"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl200:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v1, "outsideUrl"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-object v0
.end method

.method private checkFileExists(Ljava/io/File;)V
    .locals 1
    .param p1, "outputFile"    # Ljava/io/File;

    .prologue
    .line 217
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 220
    :cond_0
    return-void
.end method

.method private getThumbUtl(II)Ljava/lang/String;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v2, 0x280

    const/16 v1, 0xc8

    const/16 v0, 0x90

    .line 237
    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl144:Ljava/lang/String;

    .line 244
    :goto_0
    return-object v0

    .line 239
    :cond_0
    if-ne p1, v1, :cond_1

    if-ne p2, v1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl200:Ljava/lang/String;

    goto :goto_0

    .line 241
    :cond_1
    if-ne p1, v2, :cond_2

    if-ne p2, v2, :cond_2

    .line 242
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl640:Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    if-ne p0, p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 114
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 115
    check-cast v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;

    .line 116
    .local v0, "other":Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->albumName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 117
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->albumName:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 118
    goto :goto_0

    .line 119
    :cond_4
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->albumName:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->albumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 120
    goto :goto_0

    .line 121
    :cond_5
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    if-nez v3, :cond_6

    .line 122
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    if-eqz v3, :cond_7

    move v1, v2

    .line 123
    goto :goto_0

    .line 124
    :cond_6
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 125
    goto :goto_0

    .line 126
    :cond_7
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->id:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 127
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->id:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 128
    goto :goto_0

    .line 129
    :cond_8
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 130
    goto :goto_0

    .line 131
    :cond_9
    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideSize:J

    iget-wide v6, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideSize:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_a

    move v1, v2

    .line 132
    goto :goto_0

    .line 133
    :cond_a
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideUrl:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 134
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideUrl:Ljava/lang/String;

    if-eqz v3, :cond_c

    move v1, v2

    .line 135
    goto :goto_0

    .line 136
    :cond_b
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 137
    goto :goto_0

    .line 138
    :cond_c
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->photoName:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 139
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->photoName:Ljava/lang/String;

    if-eqz v3, :cond_e

    move v1, v2

    .line 140
    goto :goto_0

    .line 141
    :cond_d
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->photoName:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->photoName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    move v1, v2

    .line 142
    goto/16 :goto_0

    .line 143
    :cond_e
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl144:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 144
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl144:Ljava/lang/String;

    if-eqz v3, :cond_10

    move v1, v2

    .line 145
    goto/16 :goto_0

    .line 146
    :cond_f
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl144:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl144:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    move v1, v2

    .line 147
    goto/16 :goto_0

    .line 148
    :cond_10
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl200:Ljava/lang/String;

    if-nez v3, :cond_11

    .line 149
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl200:Ljava/lang/String;

    if-eqz v3, :cond_12

    move v1, v2

    .line 150
    goto/16 :goto_0

    .line 151
    :cond_11
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl200:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl200:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    move v1, v2

    .line 152
    goto/16 :goto_0

    .line 153
    :cond_12
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl640:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 154
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl640:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 155
    goto/16 :goto_0

    .line 156
    :cond_13
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl640:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl640:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 157
    goto/16 :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getData(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)[B
    .locals 10
    .param p1, "progressListener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 177
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->buildBundle()Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideUrl:Ljava/lang/String;

    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideSize:J

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->readInputStream(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/io/OutputStream;Landroid/os/Bundle;Ljava/lang/String;J)V

    .line 180
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 181
    new-array v1, v9, [Ljava/io/Closeable;

    .line 182
    aput-object v3, v1, v8

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 180
    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    new-array v1, v9, [Ljava/io/Closeable;

    .line 182
    aput-object v3, v1, v8

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 183
    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOutsideSize()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideSize:J

    return-wide v0
.end method

.method public getOutsideUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->photoName:Ljava/lang/String;

    return-object v0
.end method

.method public getThubmUrl144()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl144:Ljava/lang/String;

    return-object v0
.end method

.method public getThubmUrl200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl200:Ljava/lang/String;

    return-object v0
.end method

.method public getThubmUrl640()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl640:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbData(II)[B
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->getThumbUtl(II)Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "thumbUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "not find this size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 229
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->buildBundle()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v6, -0x1

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->readInputStream(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/io/OutputStream;Landroid/os/Bundle;Ljava/lang/String;J)V

    .line 230
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 231
    new-array v1, v9, [Ljava/io/Closeable;

    .line 232
    aput-object v3, v1, v8

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 230
    return-object v0

    .line 231
    :catchall_0
    move-exception v0

    new-array v1, v9, [Ljava/io/Closeable;

    .line 232
    aput-object v3, v1, v8

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 233
    throw v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 86
    const/16 v0, 0x1f

    .line 87
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 89
    .local v1, "result":I
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->albumName:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    .line 88
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 90
    mul-int/lit8 v4, v1, 0x1f

    .line 91
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    if-nez v2, :cond_1

    move v2, v3

    .line 90
    :goto_1
    add-int v1, v4, v2

    .line 92
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->id:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 93
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideSize:J

    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideSize:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 94
    mul-int/lit8 v4, v1, 0x1f

    .line 95
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideUrl:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    .line 94
    :goto_3
    add-int v1, v4, v2

    .line 96
    mul-int/lit8 v4, v1, 0x1f

    .line 97
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->photoName:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    .line 96
    :goto_4
    add-int v1, v4, v2

    .line 98
    mul-int/lit8 v4, v1, 0x1f

    .line 99
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl144:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    .line 98
    :goto_5
    add-int v1, v4, v2

    .line 100
    mul-int/lit8 v4, v1, 0x1f

    .line 101
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl200:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    .line 100
    :goto_6
    add-int v1, v4, v2

    .line 102
    mul-int/lit8 v2, v1, 0x1f

    .line 103
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl640:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 102
    :goto_7
    add-int v1, v2, v3

    .line 104
    return v1

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->albumName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 95
    :cond_3
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 97
    :cond_4
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->photoName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 99
    :cond_5
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl144:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 101
    :cond_6
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl200:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 103
    :cond_7
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl640:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_7
.end method

.method public save(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 10
    .param p1, "outputFile"    # Ljava/io/File;
    .param p2, "progressListener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 207
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->checkFileExists(Ljava/io/File;)V

    .line 208
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 210
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->buildBundle()Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideUrl:Ljava/lang/String;

    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideSize:J

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;->readInputStream(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/io/OutputStream;Landroid/os/Bundle;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    new-array v0, v9, [Ljava/io/Closeable;

    .line 212
    aput-object v3, v0, v8

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 214
    return-void

    .line 211
    :catchall_0
    move-exception v0

    new-array v1, v9, [Ljava/io/Closeable;

    .line 212
    aput-object v3, v1, v8

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 213
    throw v0
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->albumName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->id:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setOutsideSize(J)V
    .locals 1
    .param p1, "outsideSize"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideSize:J

    .line 80
    return-void
.end method

.method public setOutsideUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "outsideUrl"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideUrl:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPhotoName(Ljava/lang/String;)V
    .locals 0
    .param p1, "photoName"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->photoName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setThubmUrl144(Ljava/lang/String;)V
    .locals 0
    .param p1, "thubmUrl144"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl144:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setThubmUrl200(Ljava/lang/String;)V
    .locals 0
    .param p1, "thubmUrl200"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl200:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setThubmUrl640(Ljava/lang/String;)V
    .locals 0
    .param p1, "thubmUrl640"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl640:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OutsidePhotoInfo [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    const-string v1, ", photoName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->photoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thubmUrl640="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl640:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    const-string v1, ", thubmUrl144="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl144:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thubmUrl200="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->thubmUrl200:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outsideUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outsideSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->outsideSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpMachine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;->httpMachine:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoHttpMachine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
