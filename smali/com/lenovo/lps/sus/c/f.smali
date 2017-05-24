.class public final Lcom/lenovo/lps/sus/c/f;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JZLcom/lenovo/lps/sus/b/l;Lcom/lenovo/lps/sus/b/g;)Lcom/lenovo/lps/sus/b/f;
    .locals 8

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/lenovo/lps/sus/b/f;

    iget-object v1, p4, Lcom/lenovo/lps/sus/b/g;->newVerCode:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p4, Lcom/lenovo/lps/sus/b/g;->newVerName:Ljava/lang/String;

    iget-object v5, p4, Lcom/lenovo/lps/sus/b/g;->verDescribe:Ljava/lang/String;

    iget-wide v6, p4, Lcom/lenovo/lps/sus/b/g;->j:J

    move-wide v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/lenovo/lps/sus/b/f;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/lenovo/lps/sus/b/f;

    iget-object v1, p4, Lcom/lenovo/lps/sus/b/g;->newVerCode:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p4, Lcom/lenovo/lps/sus/b/g;->newVerName:Ljava/lang/String;

    iget-object v5, p4, Lcom/lenovo/lps/sus/b/g;->verDescribe:Ljava/lang/String;

    iget-wide v6, p4, Lcom/lenovo/lps/sus/b/g;->newFullPKGSize:J

    move-wide v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/lenovo/lps/sus/b/f;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/lenovo/lps/sus/b/g;
    .locals 2

    new-instance v0, Lcom/lenovo/lps/sus/b/g;

    invoke-direct {v0}, Lcom/lenovo/lps/sus/b/g;-><init>()V

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->d()Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v1, "NOTFOUND"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NOTFOUND"

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/g;->resultType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    const-string v1, "EXCEPTION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "EXCEPTION"

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/g;->resultType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "LATESTVERSION"

    iput-object v1, v0, Lcom/lenovo/lps/sus/b/g;->resultType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/sus/b/g;
    .locals 36

    const-string v2, "SUS-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    const-string v12, "0"

    const/4 v13, 0x0

    const/16 v28, 0x0

    const-string v3, "0"

    const/4 v14, 0x0

    const/16 v26, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    const-string v27, "0"

    const/16 v22, 0x0

    const/4 v7, 0x0

    const-string v16, "No"

    const-string v4, "N"

    const-string v19, "0"

    const/16 v20, 0x0

    const-string v21, "0"

    const/16 v23, 0x0

    const/16 v29, 0x0

    const-string v2, "0"

    const/16 v32, 0x0

    const-string v33, "0"

    const/16 v34, 0x0

    const/16 v18, 0x0

    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "SUSRESINFO"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string v8, "RES"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_0
    const-string v8, "SUCCESS"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    const-string v8, "VerCode"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v8, "VerName"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v8, "DownloadURL"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v8, "Size"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "UpdateDesc"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v8, "FileName"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v8, "ChannelKey"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v8, "PackageID"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v27

    :try_start_1
    const-string v8, "FPMD5"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v23

    :goto_0
    :try_start_2
    const-string v8, "CMD5"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v22

    :goto_1
    :try_start_3
    const-string v8, "PPF"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    const-string v8, "Y"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v8

    if-eqz v8, :cond_17

    const/16 v18, 0x1

    const/4 v8, 0x0

    :goto_2
    if-eqz v18, :cond_27

    :try_start_4
    const-string v9, "PPV"

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v24, "SPVC"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v24, "SPMD5"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v24, "SPSize"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v24, "PPMD5"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v24, "PPSize"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v24, "PPFN"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v24, "PPID"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v24, "DLPP"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    if-eqz v9, :cond_1

    const-string/jumbo v24, "xdelta"

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_27

    :cond_1
    const/16 v18, 0x0

    const/4 v8, 0x1

    const-string v4, "N"

    const-string v19, "0"

    const/16 v20, 0x0

    const-string v21, "0"

    const/16 v29, 0x0

    const-string v2, "0"

    const/16 v32, 0x0

    const-string v33, "0"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    const/16 v34, 0x0

    move-object v9, v4

    :goto_3
    :try_start_5
    const-string v4, "CtrlKey"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v4

    :try_start_6
    const-string v5, "CustKey"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v5, "IT"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v5

    move-object/from16 v35, v5

    move-object v5, v4

    move-object/from16 v4, v35

    :goto_4
    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    const-string v7, "it_si_noprompt"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->silentUpdateEnable()V

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/lenovo/lps/sus/SUS;->setInstallType(I)V

    :cond_2
    :goto_5
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/lenovo/lps/sus/c/b;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    :cond_3
    const/4 v4, 0x1

    :goto_6
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v12}, Lcom/lenovo/lps/sus/c/b;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    const/4 v4, 0x1

    :cond_5
    if-eqz v27, :cond_6

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    invoke-static/range {v27 .. v27}, Lcom/lenovo/lps/sus/c/b;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    const/4 v4, 0x1

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    invoke-static {v5}, Lcom/lenovo/lps/sus/c/b;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    const/4 v4, 0x1

    :cond_9
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    if-ltz v6, :cond_a

    if-eqz v28, :cond_a

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    if-ltz v6, :cond_a

    if-eqz v26, :cond_a

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v6

    if-ltz v6, :cond_a

    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    if-ltz v6, :cond_a

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    if-eqz v27, :cond_a

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    invoke-static/range {v27 .. v27}, Lcom/lenovo/lps/sus/c/b;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    const/4 v4, 0x1

    :cond_b
    if-nez v4, :cond_d

    invoke-static/range {v28 .. v28}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v26 .. v26}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static {v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v14}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v15}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v17 .. v17}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static {v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v27 .. v27}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v23, :cond_c

    invoke-static/range {v23 .. v23}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    :cond_c
    if-eqz v22, :cond_d

    invoke-static/range {v22 .. v22}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    :cond_d
    if-nez v4, :cond_16

    if-eqz v18, :cond_16

    if-nez v8, :cond_16

    if-nez v4, :cond_1b

    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1b

    invoke-static {v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    :goto_7
    if-nez v4, :cond_f

    if-eqz v19, :cond_e

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_e

    invoke-static/range {v19 .. v19}, Lcom/lenovo/lps/sus/c/b;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    :cond_e
    const/4 v4, 0x1

    :cond_f
    if-nez v4, :cond_1c

    if-eqz v20, :cond_1c

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1c

    invoke-static/range {v20 .. v20}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :goto_8
    if-nez v4, :cond_11

    if-eqz v21, :cond_10

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_10

    invoke-static/range {v21 .. v21}, Lcom/lenovo/lps/sus/c/b;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    :cond_10
    const/4 v4, 0x1

    :cond_11
    if-nez v4, :cond_1d

    if-eqz v29, :cond_1d

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1d

    invoke-static/range {v29 .. v29}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    :goto_9
    if-nez v4, :cond_13

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_12

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/b;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    :cond_12
    const/4 v4, 0x1

    :cond_13
    if-nez v4, :cond_1e

    if-eqz v20, :cond_1e

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1e

    invoke-static/range {v20 .. v20}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :goto_a
    if-nez v4, :cond_1f

    if-eqz v32, :cond_1f

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1f

    invoke-static/range {v32 .. v32}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    :goto_b
    if-nez v4, :cond_15

    if-eqz v33, :cond_14

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_14

    invoke-static/range {v33 .. v33}, Lcom/lenovo/lps/sus/c/b;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    :cond_14
    const/4 v4, 0x1

    :cond_15
    if-nez v4, :cond_20

    if-eqz v34, :cond_20

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_20

    invoke-static/range {v34 .. v34}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    :goto_c
    if-eqz v4, :cond_16

    :cond_16
    if-eqz v5, :cond_25

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_25

    invoke-static {v5}, Lcom/lenovo/lps/sus/c/b;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/lenovo/lps/sus/c/e;->av:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v4, v5

    sget-object v5, Lcom/lenovo/lps/sus/c/e;->av:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v16, "Yes"
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5

    move-object v4, v3

    :goto_d
    new-instance v3, Lcom/lenovo/lps/sus/b/g;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v34}, Lcom/lenovo/lps/sus/b/g;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catch_0
    move-exception v8

    :try_start_8
    const-string v23, ""

    goto/16 :goto_0

    :catch_1
    move-exception v8

    const/16 v22, 0x0

    goto/16 :goto_1

    :cond_17
    const/16 v18, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    :catch_2
    move-exception v8

    const/16 v18, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    :catch_3
    move-exception v8

    const/16 v18, 0x0

    const/4 v8, 0x1

    move-object v9, v4

    goto/16 :goto_3

    :catch_4
    move-exception v4

    move-object v4, v5

    :goto_e
    move-object v5, v4

    move-object v4, v7

    goto/16 :goto_4

    :cond_18
    const-string v7, "it_si_notification"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->silentUpdateEnable()V

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/lenovo/lps/sus/SUS;->setInstallType(I)V

    goto/16 :goto_5

    :catch_5
    move-exception v4

    move-object v4, v3

    goto :goto_d

    :cond_19
    const-string v7, "it_si_normal"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->silentUpdateEnable()V

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/lenovo/lps/sus/SUS;->setInstallType(I)V

    goto/16 :goto_5

    :cond_1a
    const-string v7, "it_sdk_autocheck"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->silentUpdateEnable()V

    const/4 v4, 0x4

    invoke-static {v4}, Lcom/lenovo/lps/sus/SUS;->setInstallType(I)V

    goto/16 :goto_5

    :cond_1b
    const/4 v4, 0x1

    goto/16 :goto_7

    :cond_1c
    const/4 v4, 0x1

    goto/16 :goto_8

    :cond_1d
    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_1e
    const/4 v4, 0x1

    goto/16 :goto_a

    :cond_1f
    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_20
    const/4 v4, 0x1

    goto/16 :goto_c

    :cond_21
    const-string v16, "No"

    move-object v4, v3

    goto/16 :goto_d

    :cond_22
    const-string v4, "LATESTVERSION"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "NOTFOUND"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "EXCEPTION"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_5

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    move-object v4, v3

    goto/16 :goto_d

    :cond_24
    move-object v4, v3

    goto/16 :goto_d

    :catch_6
    move-exception v5

    goto :goto_e

    :cond_25
    move-object v4, v3

    goto/16 :goto_d

    :cond_26
    move v4, v6

    goto/16 :goto_6

    :cond_27
    move-object v9, v4

    goto/16 :goto_3
.end method

.method public static a(Lcom/lenovo/lps/sus/b/g;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "{\"RES\":\"NOTFOUND\"}"

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "SUCCESS"

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/g;->resultType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "{\"RES\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SUCCESS"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"ChannelKey\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "null"

    const-string v2, "Common"

    iget-object v3, p0, Lcom/lenovo/lps/sus/b/g;->channelKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/g;->channelKey:Ljava/lang/String;

    :cond_2
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"VerCode\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/g;->newVerCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"VerName\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/g;->newVerName:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"DownloadURL\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/g;->newFullPKGDownloadURL:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"Size\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/g;->newFullPKGSize:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"UpdateDesc\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/g;->verDescribe:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"FileName\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/g;->newFullPKGFileName:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"ForceUpdate\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/g;->forceUpdate:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"CustKey\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/g;->custKey:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"PackageId\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/g;->newFullPKGID:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/g;->e:Z

    if-eqz v0, :cond_3

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"PatchUpdate\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"FullPackSize\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/g;->newFullPKGSize:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"PromptFileName\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/g;->newFullPKGFileName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    const-string v1, "LATESTVERSION"

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/g;->resultType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->d()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const-string v1, "NOTFOUND"

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/g;->resultType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->e()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
