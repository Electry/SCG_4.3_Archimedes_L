.class public Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessUtil;
.super Ljava/lang/Object;
.source "PicPostProcessUtil.java"


# instance fields
.field private final FILE_MAX_SIZE:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const v0, 0xc800

    iput v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessUtil;->FILE_MAX_SIZE:I

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessUtil;->mContext:Landroid/content/Context;

    .line 17
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessUtil;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private streamToBytes(Ljava/io/InputStream;)[B
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .local v1, "bytestream":Ljava/io/ByteArrayOutputStream;
    const v4, 0xc800

    new-array v0, v4, [B

    .line 46
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 47
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 50
    .local v2, "imgdata":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 51
    return-object v2
.end method


# virtual methods
.method public getInitData(Ljava/lang/String;)[B
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v2, 0x0

    .line 22
    .local v2, "initData":[B
    const/4 v1, 0x0

    .line 25
    .local v1, "inStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 26
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessUtil;->streamToBytes(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 31
    if-eqz v1, :cond_0

    .line 33
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v3, v2

    .line 39
    .end local v2    # "initData":[B
    .local v3, "initData":[B
    :goto_1
    return-object v3

    .line 34
    .end local v3    # "initData":[B
    .restart local v2    # "initData":[B
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 28
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 29
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    if-eqz v1, :cond_1

    .line 33
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    move-object v3, v2

    .line 39
    .end local v2    # "initData":[B
    .restart local v3    # "initData":[B
    goto :goto_1

    .line 34
    .end local v3    # "initData":[B
    .restart local v2    # "initData":[B
    :catch_2
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 31
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 33
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 36
    :cond_2
    :goto_3
    throw v4

    .line 34
    :catch_3
    move-exception v0

    .line 35
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
