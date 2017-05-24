.class public Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static final FILE_BUFFER_SIZE:I = 0xc800

.field private static final log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/LogFactory;->createLog()Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "destUri"    # Ljava/lang/String;

    .prologue
    .line 231
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 232
    :cond_0
    sget-object v15, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "copyFile Invalid param. cr="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", fromPath="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", destUri="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 233
    const/4 v15, 0x0

    .line 320
    :cond_1
    :goto_0
    return v15

    .line 236
    :cond_2
    const/4 v6, 0x0

    .line 237
    .local v6, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 239
    .local v9, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local v6    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    if-nez v7, :cond_4

    .line 241
    :try_start_1
    sget-object v15, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to open inputStream: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "->"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 242
    const/4 v15, 0x0

    .line 309
    if-eqz v7, :cond_3

    .line 311
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 314
    :cond_3
    :goto_1
    if-eqz v9, :cond_1

    .line 316
    :try_start_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v16

    goto :goto_0

    .line 246
    :cond_4
    const/4 v11, 0x0

    .line 247
    .local v11, "path":Ljava/lang/String;
    const/4 v14, 0x0

    .line 249
    .local v14, "uri":Landroid/net/Uri;
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "lwUri":Ljava/lang/String;
    const-string v15, "content://"

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 251
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 260
    :goto_2
    if-eqz v11, :cond_d

    .line 261
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v4, "fl":Ljava/io/File;
    const/4 v15, 0x0

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 263
    .local v13, "pth":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v12, "pf":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_5

    .line 266
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 269
    :cond_5
    new-instance v12, Ljava/io/File;

    .end local v12    # "pf":Ljava/io/File;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .restart local v12    # "pf":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_6

    .line 272
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    move-result v15

    if-nez v15, :cond_6

    .line 273
    sget-object v15, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Can\'t make dirs, path="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 277
    :cond_6
    new-instance v12, Ljava/io/File;

    .end local v12    # "pf":Ljava/io/File;
    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v12    # "pf":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 279
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->deleteDirectory(Ljava/lang/String;)Z

    .line 283
    :cond_7
    :goto_3
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 284
    .end local v9    # "os":Ljava/io/OutputStream;
    .local v10, "os":Ljava/io/OutputStream;
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setLastModified(J)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v9, v10

    .line 290
    .end local v4    # "fl":Ljava/io/File;
    .end local v10    # "os":Ljava/io/OutputStream;
    .end local v12    # "pf":Ljava/io/File;
    .end local v13    # "pth":Ljava/lang/String;
    .restart local v9    # "os":Ljava/io/OutputStream;
    :goto_4
    const/16 v15, 0x400

    :try_start_6
    new-array v2, v15, [B

    .line 291
    .local v2, "dat":[B
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 292
    .local v5, "i":I
    :goto_5
    const/4 v15, -0x1

    if-eq v15, v5, :cond_e

    .line 293
    const/4 v15, 0x0

    invoke-virtual {v9, v2, v15, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 294
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    goto :goto_5

    .line 252
    .end local v2    # "dat":[B
    .end local v5    # "i":I
    :cond_8
    const-string v15, "file://"

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 253
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 254
    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 256
    :cond_9
    move-object/from16 v11, p2

    goto/16 :goto_2

    .line 280
    .restart local v4    # "fl":Ljava/io/File;
    .restart local v12    # "pf":Ljava/io/File;
    .restart local v13    # "pth":Ljava/lang/String;
    :cond_a
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 306
    .end local v4    # "fl":Ljava/io/File;
    .end local v8    # "lwUri":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "pf":Ljava/io/File;
    .end local v13    # "pth":Ljava/lang/String;
    .end local v14    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v3

    move-object v6, v7

    .line 307
    .end local v7    # "is":Ljava/io/InputStream;
    .local v3, "ex":Ljava/lang/Exception;
    .restart local v6    # "is":Ljava/io/InputStream;
    :goto_6
    :try_start_7
    sget-object v15, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception, ex: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 309
    if-eqz v6, :cond_b

    .line 311
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 314
    :cond_b
    :goto_7
    if-eqz v9, :cond_c

    .line 316
    :try_start_9
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 320
    :cond_c
    :goto_8
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 286
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "lwUri":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v14    # "uri":Landroid/net/Uri;
    :cond_d
    :try_start_a
    new-instance v10, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    const-string/jumbo v15, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    invoke-direct {v10, v15}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .end local v9    # "os":Ljava/io/OutputStream;
    .restart local v10    # "os":Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10    # "os":Ljava/io/OutputStream;
    .restart local v9    # "os":Ljava/io/OutputStream;
    goto :goto_4

    .line 297
    .restart local v2    # "dat":[B
    .restart local v5    # "i":I
    :cond_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 298
    const/4 v6, 0x0

    .line 300
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :try_start_b
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 301
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 302
    const/4 v9, 0x0

    .line 304
    const/4 v15, 0x1

    .line 309
    if-eqz v6, :cond_f

    .line 311
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 314
    :cond_f
    :goto_9
    if-eqz v9, :cond_1

    .line 316
    :try_start_d
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_0

    .line 317
    :catch_2
    move-exception v16

    goto/16 :goto_0

    .line 309
    .end local v2    # "dat":[B
    .end local v5    # "i":I
    .end local v8    # "lwUri":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v14    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v15

    :goto_a
    if-eqz v6, :cond_10

    .line 311
    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 314
    :cond_10
    :goto_b
    if-eqz v9, :cond_11

    .line 316
    :try_start_f
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 317
    :cond_11
    :goto_c
    throw v15

    .line 312
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v16

    goto/16 :goto_1

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v2    # "dat":[B
    .restart local v5    # "i":I
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v8    # "lwUri":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v14    # "uri":Landroid/net/Uri;
    :catch_4
    move-exception v16

    goto :goto_9

    .end local v2    # "dat":[B
    .end local v5    # "i":I
    .end local v8    # "lwUri":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v14    # "uri":Landroid/net/Uri;
    .restart local v3    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v15

    goto :goto_7

    .line 317
    :catch_6
    move-exception v15

    goto :goto_8

    .line 312
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_7
    move-exception v16

    goto :goto_b

    .line 317
    :catch_8
    move-exception v16

    goto :goto_c

    .line 309
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v15

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_a

    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "os":Ljava/io/OutputStream;
    .restart local v4    # "fl":Ljava/io/File;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "lwUri":Ljava/lang/String;
    .restart local v10    # "os":Ljava/io/OutputStream;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "pf":Ljava/io/File;
    .restart local v13    # "pth":Ljava/lang/String;
    .restart local v14    # "uri":Landroid/net/Uri;
    :catchall_2
    move-exception v15

    move-object v9, v10

    .end local v10    # "os":Ljava/io/OutputStream;
    .restart local v9    # "os":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_a

    .line 306
    .end local v4    # "fl":Ljava/io/File;
    .end local v8    # "lwUri":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "pf":Ljava/io/File;
    .end local v13    # "pth":Ljava/lang/String;
    .end local v14    # "uri":Landroid/net/Uri;
    :catch_9
    move-exception v3

    goto :goto_6

    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "os":Ljava/io/OutputStream;
    .restart local v4    # "fl":Ljava/io/File;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "lwUri":Ljava/lang/String;
    .restart local v10    # "os":Ljava/io/OutputStream;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "pf":Ljava/io/File;
    .restart local v13    # "pth":Ljava/lang/String;
    .restart local v14    # "uri":Landroid/net/Uri;
    :catch_a
    move-exception v3

    move-object v9, v10

    .end local v10    # "os":Ljava/io/OutputStream;
    .restart local v9    # "os":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_6
.end method

.method public static createDirectory(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 78
    :goto_0
    return v1

    .line 72
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const/4 v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_0
.end method

.method public static deleteDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 83
    if-nez p0, :cond_1

    .line 84
    sget-object v4, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid param. filePath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 109
    :cond_0
    :goto_0
    return v3

    .line 88
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 97
    .local v2, "list":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 98
    sget-object v3, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete filePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->d(Ljava/lang/Object;)V

    .line 99
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->deleteDirectory(Ljava/lang/String;)Z

    .line 97
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    :cond_2
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 107
    .end local v1    # "i":I
    .end local v2    # "list":[Ljava/io/File;
    :cond_3
    sget-object v3, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete filePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->d(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 109
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static dirToZip(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z
    .locals 7
    .param p0, "baseDirPath"    # Ljava/lang/String;
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "out"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 571
    const/4 v4, 0x0

    .line 593
    :goto_0
    return v4

    .line 574
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 575
    .local v2, "files":[Ljava/io/File;
    array-length v4, v2

    if-nez v4, :cond_1

    .line 576
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-static {p0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->getEntryName(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 579
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 580
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 587
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 588
    aget-object v4, v2, v3

    invoke-static {p0, v4, p2}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->fileToZip(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z

    .line 586
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 581
    .end local v3    # "i":I
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception, ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 590
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "i":I
    :cond_2
    aget-object v4, v2, v3

    invoke-static {p0, v4, p2}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->dirToZip(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z

    goto :goto_3

    .line 593
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static fileIsExist(Ljava/lang/String;)Z
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_2

    .line 34
    :cond_0
    sget-object v2, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "param invalid, filePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 42
    :cond_1
    :goto_0
    return v1

    .line 38
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 42
    goto :goto_0
.end method

.method private static fileToZip(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z
    .locals 11
    .param p0, "baseDirPath"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "out"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 539
    const/4 v5, 0x0

    .line 540
    .local v5, "in":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 542
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    const v8, 0xc800

    new-array v0, v8, [B

    .line 545
    .local v0, "buffer":[B
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v6, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-static {p0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->getEntryName(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 547
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    :try_start_2
    invoke-virtual {p2, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 549
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "bytes_read":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    .line 550
    const/4 v8, 0x0

    invoke-virtual {p2, v0, v8, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 554
    .end local v1    # "bytes_read":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    move-object v5, v6

    .line 555
    .end local v6    # "in":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    sget-object v8, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception, ex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 558
    if-eqz p2, :cond_0

    .line 559
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 562
    :cond_0
    if-eqz v5, :cond_1

    .line 563
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 566
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return v7

    .line 552
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "bytes_read":I
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :cond_2
    :try_start_4
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 553
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 558
    if-eqz p2, :cond_3

    .line 559
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 562
    :cond_3
    if-eqz v6, :cond_4

    .line 563
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 566
    :cond_4
    const/4 v7, 0x1

    move-object v3, v4

    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    move-object v5, v6

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 558
    .end local v1    # "bytes_read":I
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz p2, :cond_5

    .line 559
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 562
    :cond_5
    if-eqz v5, :cond_6

    .line 563
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_6
    throw v7

    .line 558
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    move-object v5, v6

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 554
    :catch_1
    move-exception v2

    goto :goto_1

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static getEntryName(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "baseDirPath"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 597
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 601
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 607
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFileModifyTime(Ljava/lang/String;)J
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 203
    if-nez p0, :cond_1

    .line 204
    sget-object v1, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid param. filePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 213
    :cond_0
    :goto_0
    return-wide v2

    .line 208
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 189
    if-nez p0, :cond_1

    .line 190
    sget-object v1, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid param. filePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 199
    :cond_0
    :goto_0
    return-wide v2

    .line 194
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0
.end method

.method public static readAll(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v3, 0x400

    .line 324
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 325
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-array v1, v3, [B

    .line 326
    .local v1, "buf":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 327
    .local v2, "c":I
    :goto_0
    const/4 v3, -0x1

    if-eq v3, v2, :cond_0

    .line 328
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 329
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 332
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 333
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static readFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 46
    if-nez p0, :cond_0

    .line 47
    sget-object v4, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid param. filePath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    move-object v2, v3

    .line 64
    :goto_0
    return-object v2

    .line 51
    :cond_0
    const/4 v2, 0x0

    .line 54
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->fileIsExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "f":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2    # "is":Ljava/io/InputStream;
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_0

    .end local v1    # "f":Ljava/io/File;
    :cond_1
    move-object v2, v3

    .line 58
    goto :goto_0

    .line 60
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception, ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    move-object v2, v3

    .line 62
    goto :goto_0
.end method

.method public static readFile(Landroid/content/Context;Landroid/net/Uri;)[B
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 337
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 338
    :cond_0
    sget-object v6, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid param. ctx: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    move-object v0, v5

    .line 370
    :cond_1
    :goto_0
    return-object v0

    .line 342
    :cond_2
    const/4 v3, 0x0

    .line 343
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "scheme":Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 345
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 349
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 350
    if-nez v3, :cond_5

    .line 364
    if-eqz v3, :cond_4

    .line 366
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_4
    :goto_1
    move-object v0, v5

    .line 367
    goto :goto_0

    .line 354
    :cond_5
    :try_start_2
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 355
    .local v0, "bret":[B
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    const/4 v3, 0x0

    .line 364
    if-eqz v3, :cond_1

    .line 366
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v5

    goto :goto_0

    .line 359
    .end local v0    # "bret":[B
    :catch_1
    move-exception v2

    .line 360
    .local v2, "fne":Ljava/io/FileNotFoundException;
    :try_start_4
    sget-object v6, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FilNotFoundException, ex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 364
    if-eqz v3, :cond_6

    .line 366
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .end local v2    # "fne":Ljava/io/FileNotFoundException;
    :cond_6
    :goto_2
    move-object v0, v5

    .line 370
    goto :goto_0

    .line 361
    :catch_2
    move-exception v1

    .line 362
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_6
    sget-object v6, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception, ex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 364
    if-eqz v3, :cond_6

    .line 366
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 367
    :catch_3
    move-exception v6

    goto :goto_2

    .line 364
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_7

    .line 366
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 367
    :cond_7
    :goto_3
    throw v5

    :catch_4
    move-exception v6

    goto :goto_1

    .restart local v2    # "fne":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v6

    goto :goto_2

    .end local v2    # "fne":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v6

    goto :goto_3
.end method

.method public static readGZipFile(Ljava/lang/String;)[B
    .locals 8
    .param p0, "zipFileName"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->fileIsExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 440
    sget-object v5, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "zipFileName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 442
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 444
    .local v3, "fin":Ljava/io/FileInputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 445
    .local v1, "buffer":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 446
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    const/4 v5, 0x0

    array-length v6, v1

    invoke-virtual {v3, v1, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .local v4, "size":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 447
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "size":I
    :catch_0
    move-exception v2

    .line 451
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v5, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    const-string/jumbo v6, "read zipRecorder file error"

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 454
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 449
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "size":I
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method

.method public static readZipFile(Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 8
    .param p0, "zipFileName"    # Ljava/lang/String;
    .param p1, "crc"    # Ljava/lang/StringBuffer;

    .prologue
    .line 424
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 426
    .local v4, "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    .line 428
    .local v2, "size":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "size":J
    .end local v4    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v1

    .line 432
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v5, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 433
    const/4 v5, 0x0

    .line 435
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return v5

    .line 430
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 435
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static setFileModifyTime(Ljava/lang/String;J)Z
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "modifyTime"    # J

    .prologue
    const/4 v1, 0x0

    .line 217
    if-nez p0, :cond_1

    .line 218
    sget-object v2, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid param. filePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 222
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    move-result v1

    goto :goto_0
.end method

.method public static unZipFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "unZipDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 482
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 485
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 488
    :cond_0
    const/4 v11, 0x0

    .line 490
    .local v11, "is":Ljava/io/BufferedInputStream;
    new-instance v14, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 491
    .local v14, "zipfile":Ljava/util/zip/ZipFile;
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 492
    .local v6, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    const v15, 0xc800

    new-array v4, v15, [B

    .line 493
    .local v4, "data":[B
    sget-object v15, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "unZipDir: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 495
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 496
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 498
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 499
    new-instance v9, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .local v9, "f1":Ljava/io/File;
    sget-object v15, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "entry.isDirectory XXX "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 501
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1

    .line 502
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 505
    .end local v9    # "f1":Ljava/io/File;
    :cond_2
    new-instance v11, Ljava/io/BufferedInputStream;

    .end local v11    # "is":Ljava/io/BufferedInputStream;
    invoke-virtual {v14, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v11, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 507
    .restart local v11    # "is":Ljava/io/BufferedInputStream;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 508
    .local v13, "name":Ljava/lang/String;
    const/4 v12, 0x0

    .line 509
    .local v12, "m_randFile":Ljava/io/RandomAccessFile;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 510
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 511
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 514
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 515
    new-instance v12, Ljava/io/RandomAccessFile;

    .end local v12    # "m_randFile":Ljava/io/RandomAccessFile;
    const-string/jumbo v15, "rw"

    invoke-direct {v12, v10, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 516
    .restart local v12    # "m_randFile":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 518
    .local v2, "begin":I
    :goto_1
    const/4 v15, 0x0

    const v16, 0xc800

    move/from16 v0, v16

    invoke-virtual {v11, v4, v15, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .local v3, "count":I
    const/4 v15, -0x1

    if-eq v3, v15, :cond_4

    .line 520
    int-to-long v0, v2

    move-wide/from16 v16, v0

    :try_start_0
    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_2
    const/4 v15, 0x0

    invoke-virtual {v12, v4, v15, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 526
    add-int/2addr v2, v3

    goto :goto_1

    .line 521
    :catch_0
    move-exception v7

    .line 522
    .local v7, "ex":Ljava/lang/Exception;
    sget-object v15, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "exception, ex: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    goto :goto_2

    .line 529
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 530
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 531
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    goto/16 :goto_0

    .line 535
    .end local v2    # "begin":I
    .end local v3    # "count":I
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "m_randFile":Ljava/io/RandomAccessFile;
    .end local v13    # "name":Ljava/lang/String;
    :cond_5
    const/4 v15, 0x1

    return v15
.end method

.method public static writeFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 114
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v9, :cond_1

    .line 115
    :cond_0
    sget-object v9, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid param. filePath: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 154
    :goto_0
    return v8

    .line 120
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 122
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->deleteDirectory(Ljava/lang/String;)Z

    .line 125
    :cond_2
    const/4 v10, 0x0

    const-string v11, "/"

    invoke-virtual {p0, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "pth":Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->createDirectory(Ljava/lang/String;)Z

    move-result v6

    .line 127
    .local v6, "ret":Z
    if-nez v6, :cond_3

    .line 128
    sget-object v9, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createDirectory fail path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "pth":Ljava/lang/String;
    .end local v6    # "ret":Z
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "pth":Ljava/lang/String;
    .restart local v6    # "ret":Z
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v7

    .line 133
    .local v7, "ret1":Z
    if-nez v6, :cond_4

    .line 134
    sget-object v9, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createNewFile fail filePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 139
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 140
    .local v0, "buf":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 141
    .local v1, "c":I
    :goto_1
    const/4 v10, -0x1

    if-eq v10, v1, :cond_5

    .line 142
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 143
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_1

    .line 146
    :cond_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 147
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v9

    .line 149
    goto :goto_0
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileContent"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileContent"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v4, :cond_2

    .line 164
    :cond_0
    sget-object v4, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid param. filePath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fileContent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 185
    :cond_1
    :goto_0
    return v3

    .line 169
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    :cond_3
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 177
    .local v2, "output":Ljava/io/BufferedWriter;
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 179
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 185
    goto :goto_0

    .line 180
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "output":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v4, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeFile ioe: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static writeFile(Ljava/lang/String;[B)Z
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "content"    # [B

    .prologue
    const/4 v5, 0x0

    .line 374
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 375
    :cond_0
    sget-object v6, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid param. filePath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 418
    :cond_1
    :goto_0
    return v5

    .line 379
    :cond_2
    const/4 v1, 0x0

    .line 381
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    :try_start_0
    const-string v7, "/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "pth":Ljava/lang/String;
    const/4 v3, 0x0

    .line 383
    .local v3, "pf":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    .end local v3    # "pf":Ljava/io/File;
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .restart local v3    # "pf":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_3

    .line 385
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 387
    :cond_3
    new-instance v3, Ljava/io/File;

    .end local v3    # "pf":Ljava/io/File;
    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .restart local v3    # "pf":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 389
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->deleteDirectory(Ljava/lang/String;)Z

    .line 393
    :cond_4
    :goto_1
    new-instance v3, Ljava/io/File;

    .end local v3    # "pf":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    .restart local v3    # "pf":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5

    .line 395
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_5

    .line 396
    sget-object v6, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t make dirs, path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 400
    :cond_5
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 402
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 403
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 404
    const/4 v1, 0x0

    .line 405
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/io/File;->setLastModified(J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 407
    const/4 v5, 0x1

    .line 412
    if-eqz v1, :cond_1

    .line 414
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 415
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 390
    :cond_6
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 409
    .end local v3    # "pf":Ljava/io/File;
    .end local v4    # "pth":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 410
    .local v0, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    sget-object v6, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception, ex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->e(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 412
    if-eqz v1, :cond_1

    .line 414
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 415
    :catch_2
    move-exception v6

    goto/16 :goto_0

    .line 412
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_7

    .line 414
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 415
    :cond_7
    :goto_4
    throw v5

    :catch_3
    move-exception v6

    goto :goto_4

    .line 412
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "pf":Ljava/io/File;
    .restart local v4    # "pth":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 409
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "baseDirName"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "targerFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 458
    if-eqz p0, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v5

    .line 461
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 466
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "baseDirPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    .local v4, "targerFile":Ljava/io/File;
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 469
    .local v3, "out":Ljava/util/zip/ZipOutputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 471
    .local v2, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 472
    .local v5, "zipResult":Z
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 473
    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->fileToZip(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z

    move-result v5

    .line 477
    :goto_1
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    goto :goto_0

    .line 475
    :cond_2
    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->dirToZip(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z

    move-result v5

    goto :goto_1
.end method
