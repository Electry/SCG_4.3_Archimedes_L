.class public Lcom/baidu/idl/lib/statistics/LogZipUtils;
.super Ljava/lang/Object;
.source "LogZipUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogZipUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetFileList(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 8
    .param p0, "zipFileString"    # Ljava/lang/String;
    .param p1, "bContainFolder"    # Z
    .param p2, "bContainFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v3, Ljava/util/zip/ZipInputStream;

    .line 31
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-direct {v3, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    .local v3, "inZip":Ljava/util/zip/ZipInputStream;
    const-string v4, ""

    .line 35
    .local v4, "szName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    .local v5, "zipEntry":Ljava/util/zip/ZipEntry;
    if-nez v5, :cond_1

    .line 55
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    .line 57
    return-object v1

    .line 36
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 41
    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 42
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, "folder":Ljava/io/File;
    if-eqz p1, :cond_0

    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    .end local v2    # "folder":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "file":Ljava/io/File;
    if-eqz p2, :cond_0

    .line 50
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "zipFileString"    # Ljava/lang/String;
    .param p1, "outPathString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 90
    new-instance v3, Ljava/util/zip/ZipInputStream;

    .line 91
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-direct {v3, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    .local v3, "inZip":Ljava/util/zip/ZipInputStream;
    const-string v6, ""

    .line 95
    .local v6, "szName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    if-nez v7, :cond_0

    .line 126
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    .line 128
    return-void

    .line 96
    :cond_0
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 98
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 101
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 102
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 102
    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 108
    .end local v2    # "folder":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 108
    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 112
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 115
    .local v5, "out":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 117
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_2

    .line 122
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v5, v0, v10, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 120
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_1
.end method

.method public static UpZip(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "zipFileString"    # Ljava/lang/String;
    .param p1, "fileString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 75
    .local v0, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method private static ZipFiles(Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 11
    .param p0, "fileString"    # Ljava/lang/String;
    .param p1, "zipOutputSteam"    # Ljava/util/zip/ZipOutputStream;

    .prologue
    .line 184
    const/4 v5, 0x0

    .line 186
    .local v5, "inputStream":Ljava/io/FileInputStream;
    if-nez p1, :cond_1

    .line 222
    if-eqz v5, :cond_0

    .line 223
    :try_start_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    const/4 v5, 0x0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 188
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 190
    new-instance v8, Ljava/util/zip/ZipEntry;

    invoke-direct {v8, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 191
    .local v8, "zipEntry":Ljava/util/zip/ZipEntry;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .local v6, "inputStream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {p1, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 194
    const/16 v9, 0x1000

    new-array v0, v9, [B

    .line 196
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_3

    .line 199
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v6

    .line 222
    .end local v0    # "buffer":[B
    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .end local v7    # "len":I
    .end local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :cond_2
    if-eqz v5, :cond_0

    .line 223
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 224
    const/4 v5, 0x0

    goto :goto_0

    .line 197
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v7    # "len":I
    .restart local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {p1, v0, v9, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 216
    .end local v0    # "buffer":[B
    .end local v7    # "len":I
    :catch_1
    move-exception v1

    move-object v5, v6

    .line 217
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .end local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 222
    if-eqz v5, :cond_0

    .line 223
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 224
    const/4 v5, 0x0

    goto :goto_0

    .line 202
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "file":Ljava/io/File;
    :cond_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "fileList":[Ljava/lang/String;
    array-length v9, v3

    if-gtz v9, :cond_5

    .line 205
    new-instance v8, Ljava/util/zip/ZipEntry;

    .line 206
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 205
    invoke-direct {v8, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 207
    .restart local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p1, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 208
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 212
    .end local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v9, v3

    if-ge v4, v9, :cond_2

    .line 213
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1}, Lcom/baidu/idl/lib/statistics/LogZipUtils;->ZipFiles(Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 212
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 226
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileList":[Ljava/lang/String;
    .end local v4    # "i":I
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 227
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 218
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 219
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 222
    if-eqz v5, :cond_0

    .line 223
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 224
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 226
    :catch_4
    move-exception v1

    .line 227
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 222
    :goto_5
    if-eqz v5, :cond_6

    .line 223
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 224
    const/4 v5, 0x0

    .line 229
    :cond_6
    :goto_6
    throw v9

    .line 226
    :catch_5
    move-exception v1

    .line 227
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 226
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "file":Ljava/io/File;
    :catch_6
    move-exception v1

    .line 227
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 218
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 216
    .end local v2    # "file":Ljava/io/File;
    .end local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_8
    move-exception v1

    goto/16 :goto_2
.end method

.method public static ZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "srcFileString"    # Ljava/lang/String;
    .param p1, "zipFileString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 143
    .local v0, "outZip":Ljava/util/zip/ZipOutputStream;
    invoke-static {p0, v0}, Lcom/baidu/idl/lib/statistics/LogZipUtils;->ZipFiles(Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 145
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 146
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 147
    return-void
.end method

.method public static zipFileList(Ljava/lang/String;[Ljava/io/File;)Z
    .locals 7
    .param p0, "zipFileString"    # Ljava/lang/String;
    .param p1, "filelist"    # [Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 161
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 162
    .local v2, "outZip":Ljava/util/zip/ZipOutputStream;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-lez v4, :cond_0

    .line 163
    array-length v5, p1

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_1

    .line 168
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 169
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 170
    const/4 v3, 0x1

    .line 174
    .end local v2    # "outZip":Ljava/util/zip/ZipOutputStream;
    :goto_1
    return v3

    .line 163
    .restart local v2    # "outZip":Ljava/util/zip/ZipOutputStream;
    :cond_1
    aget-object v1, p1, v4

    .line 164
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/baidu/idl/lib/statistics/LogZipUtils;->ZipFiles(Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "outZip":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 233
    return-void
.end method
