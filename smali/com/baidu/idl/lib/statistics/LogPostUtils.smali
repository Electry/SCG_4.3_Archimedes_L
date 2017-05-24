.class public Lcom/baidu/idl/lib/statistics/LogPostUtils;
.super Ljava/lang/Object;
.source "LogPostUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "actionUrl"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/baidu/idl/lib/statistics/LogPostUtils;->post(Ljava/lang/String;[Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 30
    .param p0, "actionUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, "BOUNDARY":Ljava/lang/String;
    const-string v7, "--"

    .local v7, "PREFIX":Ljava/lang/String;
    const-string v5, "\r\n"

    .line 28
    .local v5, "LINEND":Ljava/lang/String;
    const-string/jumbo v6, "multipart/form-data"

    .line 29
    .local v6, "MULTIPART_FROM_DATA":Ljava/lang/String;
    const-string v4, "UTF-8"

    .line 30
    .local v4, "CHARSET":Ljava/lang/String;
    new-instance v26, Ljava/net/URL;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 31
    .local v26, "uri":Ljava/net/URL;
    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    .line 32
    .local v11, "conn":Ljava/net/HttpURLConnection;
    const/16 v27, 0x1388

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 33
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 34
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 35
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 36
    const-string v27, "POST"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 37
    const-string v27, "connection"

    const-string v28, "keep-alive"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v27, "Charsert"

    const-string v28, "UTF-8"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v27, "Content-Type"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    const-string v29, ";boundary="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 39
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v23, "sb":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_2

    .line 57
    new-instance v21, Ljava/io/DataOutputStream;

    .line 58
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v27

    .line 57
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    .local v21, "outStream":Ljava/io/DataOutputStream;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 62
    if-eqz p2, :cond_0

    .line 63
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_3

    .line 86
    :cond_0
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 87
    .local v13, "end_data":[B
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->write([B)V

    .line 88
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataOutputStream;->flush()V

    .line 91
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    .line 92
    .local v22, "res":I
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 93
    .local v16, "in":Ljava/io/InputStream;
    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v18, "isReader":Ljava/io/InputStreamReader;
    new-instance v8, Ljava/io/BufferedReader;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 95
    .local v8, "bufReader":Ljava/io/BufferedReader;
    const/16 v20, 0x0

    .line 96
    .local v20, "line":Ljava/lang/String;
    const-string v12, "OK"

    .line 98
    .local v12, "data":Ljava/lang/String;
    :goto_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 101
    const/16 v27, 0xc8

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 103
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v25, "sb2":Ljava/lang/StringBuilder;
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->read()I

    move-result v10

    .local v10, "ch":I
    const/16 v27, -0x1

    move/from16 v0, v27

    if-ne v10, v0, :cond_6

    .line 108
    .end local v10    # "ch":I
    .end local v25    # "sb2":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataOutputStream;->close()V

    .line 109
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 110
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 44
    .end local v8    # "bufReader":Ljava/io/BufferedReader;
    .end local v12    # "data":Ljava/lang/String;
    .end local v13    # "end_data":[B
    .end local v16    # "in":Ljava/io/InputStream;
    .end local v18    # "isReader":Ljava/io/InputStreamReader;
    .end local v20    # "line":Ljava/lang/String;
    .end local v21    # "outStream":Ljava/io/DataOutputStream;
    .end local v22    # "res":I
    :cond_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 45
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v27, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "\""

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 48
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v29, "Content-Type: text/plain; charset="

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v29, "Content-Transfer-Encoding: 8bit"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 63
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "outStream":Ljava/io/DataOutputStream;
    :cond_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 64
    .local v15, "file":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v24, "sb1":Ljava/lang/StringBuilder;
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v27, "Content-Disposition: form-data; name=\"file\"; filename=\""

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "\""

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 68
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v29, "Content-Type: application/octet-stream; charset="

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 70
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 74
    new-instance v17, Ljava/io/FileInputStream;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 75
    .local v17, "is":Ljava/io/InputStream;
    const/16 v27, 0x400

    move/from16 v0, v27

    new-array v9, v0, [B

    .line 76
    .local v9, "buffer":[B
    const/16 v19, 0x0

    .line 77
    .local v19, "len":I
    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v19

    const/16 v27, -0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 81
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 82
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    goto/16 :goto_1

    .line 78
    :cond_4
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_4

    .line 99
    .end local v9    # "buffer":[B
    .end local v15    # "file":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v19    # "len":I
    .end local v24    # "sb1":Ljava/lang/StringBuilder;
    .restart local v8    # "bufReader":Ljava/io/BufferedReader;
    .restart local v12    # "data":Ljava/lang/String;
    .restart local v13    # "end_data":[B
    .restart local v16    # "in":Ljava/io/InputStream;
    .restart local v18    # "isReader":Ljava/io/InputStreamReader;
    .restart local v20    # "line":Ljava/lang/String;
    .restart local v22    # "res":I
    :cond_5
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 105
    .restart local v10    # "ch":I
    .restart local v25    # "sb2":Ljava/lang/StringBuilder;
    :cond_6
    int-to-char v0, v10

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method public static post(Ljava/lang/String;[Ljava/io/File;)Ljava/lang/String;
    .locals 24
    .param p0, "actionUrl"    # Ljava/lang/String;
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "BOUNDARY":Ljava/lang/String;
    const-string v6, "--"

    .local v6, "PREFIX":Ljava/lang/String;
    const-string v4, "\r\n"

    .line 120
    .local v4, "LINEND":Ljava/lang/String;
    const-string/jumbo v5, "multipart/form-data"

    .line 121
    .local v5, "MULTIPART_FROM_DATA":Ljava/lang/String;
    const-string v3, "UTF-8"

    .line 122
    .local v3, "CHARSET":Ljava/lang/String;
    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 123
    .local v19, "uri":Ljava/net/URL;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 124
    .local v9, "conn":Ljava/net/HttpURLConnection;
    const/16 v20, 0x1388

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 125
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 126
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 127
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 128
    const-string v20, "POST"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 129
    const-string v20, "connection"

    const-string v21, "keep-alive"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v20, "Charsert"

    const-string v21, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v20, "Content-Type"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v22, ";boundary="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 131
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v15, Ljava/io/DataOutputStream;

    .line 134
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    .line 133
    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 136
    .local v15, "outStream":Ljava/io/DataOutputStream;
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_0

    .line 137
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2

    .line 159
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 160
    .local v10, "end_data":[B
    invoke-virtual {v15, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 161
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 162
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v18, "sb2":Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 165
    .local v12, "in":Ljava/io/InputStream;
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 166
    .local v16, "res":I
    const/16 v20, 0xc8

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 168
    :goto_1
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v8

    .local v8, "ch":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_4

    .line 172
    .end local v8    # "ch":I
    :cond_1
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 173
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 174
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 175
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20

    .line 137
    .end local v10    # "end_data":[B
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v16    # "res":I
    .end local v18    # "sb2":Ljava/lang/StringBuilder;
    :cond_2
    aget-object v11, p1, v20

    .line 138
    .local v11, "file":Ljava/io/File;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v17, "sb1":Ljava/lang/StringBuilder;
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Content-Disposition: form-data; name=\"file\"; filename=\""

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 142
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Content-Type: application/octet-stream; charset="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 144
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 148
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 149
    .local v13, "is":Ljava/io/InputStream;
    const/16 v22, 0x400

    move/from16 v0, v22

    new-array v7, v0, [B

    .line 150
    .local v7, "buffer":[B
    const/4 v14, 0x0

    .line 151
    .local v14, "len":I
    :goto_2
    invoke-virtual {v13, v7}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_3

    .line 154
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 155
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 137
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 152
    :cond_3
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v7, v0, v14}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_2

    .line 169
    .end local v7    # "buffer":[B
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "len":I
    .end local v17    # "sb1":Ljava/lang/StringBuilder;
    .restart local v8    # "ch":I
    .restart local v10    # "end_data":[B
    .restart local v12    # "in":Ljava/io/InputStream;
    .restart local v16    # "res":I
    .restart local v18    # "sb2":Ljava/lang/StringBuilder;
    :cond_4
    int-to-char v0, v8

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public static post2(Ljava/lang/String;Ljava/io/File;)I
    .locals 9
    .param p0, "actionUrl"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 181
    .local v1, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 182
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpPost;
    const-string v7, "Expect"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 187
    new-instance v6, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v6, p1}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    .line 192
    .local v6, "tmpfile":Lorg/apache/http/entity/mime/content/FileBody;
    new-instance v3, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v3}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 193
    .local v3, "reqEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    const-string v7, "file"

    invoke-virtual {v3, v7, v6}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 194
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v0, v7, v8

    .line 196
    .local v0, "date":Ljava/lang/String;
    const-string v7, "date"

    new-instance v8, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v8, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 199
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 201
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 202
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "returnStr":Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    return v7
.end method
