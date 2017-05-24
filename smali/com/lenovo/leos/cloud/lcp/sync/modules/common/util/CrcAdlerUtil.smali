.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;
.super Ljava/lang/Object;
.source "CrcAdlerUtil.java"


# static fields
.field private static final BYTE_MASK:I = 0xff


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adler32([B)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B

    .prologue
    .line 24
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 25
    .local v0, "adler":Ljava/util/zip/Adler32;
    invoke-virtual {v0, p0}, Ljava/util/zip/Adler32;->update([B)V

    .line 26
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->int2ByteArray(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->base16([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static base16([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 32
    :cond_0
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    :cond_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static computeAdler32(Ljava/io/InputStream;)J
    .locals 8
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 79
    :try_start_0
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 81
    .local v0, "adler":Ljava/util/zip/Adler32;
    const/16 v2, 0x2800

    .line 82
    .local v2, "bufferSize":I
    new-array v1, v2, [B

    .line 83
    .local v1, "bf":[B
    const/4 v3, -0x1

    .line 84
    .local v3, "len":I
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 89
    new-array v6, v6, [Ljava/io/Closeable;

    .line 90
    aput-object p0, v6, v7

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 88
    return-wide v4

    .line 86
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v4, v3}, Ljava/util/zip/Adler32;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    .end local v0    # "adler":Ljava/util/zip/Adler32;
    .end local v1    # "bf":[B
    .end local v2    # "bufferSize":I
    .end local v3    # "len":I
    :catchall_0
    move-exception v4

    new-array v5, v6, [Ljava/io/Closeable;

    .line 90
    aput-object p0, v5, v7

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 91
    throw v4
.end method

.method public static computeAdler32([B)J
    .locals 4
    .param p0, "inputBytes"    # [B

    .prologue
    .line 95
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 96
    .local v0, "adler":Ljava/util/zip/Adler32;
    invoke-virtual {v0, p0}, Ljava/util/zip/Adler32;->update([B)V

    .line 97
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public static crc32([B)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B

    .prologue
    .line 18
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 19
    .local v0, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v0, p0}, Ljava/util/zip/CRC32;->update([B)V

    .line 20
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->int2ByteArray(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->base16([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getAdlerByFile(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "srcFile"    # Ljava/io/File;

    .prologue
    .line 64
    const-class v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;

    monitor-enter v4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    :cond_0
    const-string v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    monitor-exit v4

    return-object v3

    .line 67
    :cond_1
    const/4 v1, 0x0

    .line 69
    .local v1, "fis2":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .end local v1    # "fis2":Ljava/io/FileInputStream;
    .local v2, "fis2":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->computeAdler32(Ljava/io/InputStream;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 71
    .end local v2    # "fis2":Ljava/io/FileInputStream;
    .restart local v1    # "fis2":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    const-string v3, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fis2":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 71
    .restart local v2    # "fis2":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis2":Ljava/io/FileInputStream;
    .restart local v1    # "fis2":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static declared-synchronized getAdlerByFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->getAdlerByFile(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getAdlerByFile([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 59
    const-class v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 60
    .local v0, "adler":Ljava/util/zip/Adler32;
    invoke-virtual {v0, p0}, Ljava/util/zip/Adler32;->update([B)V

    .line 61
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 59
    .end local v0    # "adler":Ljava/util/zip/Adler32;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static int2ByteArray(I)[B
    .locals 3
    .param p0, "num"    # I

    .prologue
    .line 42
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 43
    .local v0, "b":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 44
    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 45
    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 46
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 47
    return-object v0
.end method
