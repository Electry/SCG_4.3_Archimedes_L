.class public final Lcom/lenovo/lps/sus/c/b;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "UTF-8"

.field private static b:I

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/lenovo/lps/sus/c/b;->b:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/lps/sus/c/b;->c:Z

    sput-boolean v1, Lcom/lenovo/lps/sus/c/b;->d:Z

    sput-boolean v1, Lcom/lenovo/lps/sus/c/b;->e:Z

    sput-boolean v1, Lcom/lenovo/lps/sus/c/b;->f:Z

    const/16 v0, 0x5d

    sput v0, Lcom/lenovo/lps/sus/c/b;->g:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 4

    const/16 v0, 0x5d

    sget v1, Lcom/lenovo/lps/sus/c/b;->g:I

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e7

    rem-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/lenovo/lps/sus/c/b;->g:I

    :cond_0
    sget v0, Lcom/lenovo/lps/sus/c/b;->g:I

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 33

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "GetVIByAK?AppKey=%s&SDKVer=2.1.0&dauuid=%s&temo=%s&sm1=%s&sm2=%s&dnip=%s&tzid=%s&OSType=Android&ReqType=%s&AppVerCode=%s&AppVerName=%s&VerSubType=%s&AppTags=%s&Resolution=%s&DPI=%s&DevID=%s&AndID=%s&OSVer=%s&Lang=%s&Count=%s&DModel=%s&Mfr=%s&BVer=%s&AQDelay=%s&CEMD5=%s&im=%s&sciso=%s&nciso=%s&ip=%s&nt=%s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "N"

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->n()Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v3, "Y"

    move-object/from16 v30, v3

    :goto_1
    if-nez p4, :cond_3

    const/4 v3, 0x0

    move-object/from16 v29, v3

    :goto_2
    if-nez p6, :cond_4

    const/4 v3, 0x0

    move-object/from16 v28, v3

    :goto_3
    if-nez p7, :cond_5

    const/4 v3, 0x0

    move-object/from16 v27, v3

    :goto_4
    if-nez p5, :cond_6

    const/4 v3, 0x0

    move-object/from16 v26, v3

    :goto_5
    if-nez p9, :cond_7

    const/4 v3, 0x0

    move-object/from16 v25, v3

    :goto_6
    if-nez p10, :cond_8

    const/4 v3, 0x0

    move-object/from16 v24, v3

    :goto_7
    if-nez p8, :cond_9

    const/4 v3, 0x0

    move-object/from16 v23, v3

    :goto_8
    if-nez p11, :cond_a

    const/4 v3, 0x0

    move-object/from16 v22, v3

    :goto_9
    if-nez p12, :cond_b

    const/4 v3, 0x0

    move-object/from16 v21, v3

    :goto_a
    if-nez p13, :cond_c

    const/4 v3, 0x0

    move-object/from16 v20, v3

    :goto_b
    if-nez p14, :cond_d

    const/4 v3, 0x0

    move-object/from16 v19, v3

    :goto_c
    if-nez p15, :cond_e

    const/4 v3, 0x0

    move-object/from16 v18, v3

    :goto_d
    if-nez p16, :cond_f

    const/4 v3, 0x0

    move-object/from16 v17, v3

    :goto_e
    if-nez p17, :cond_10

    const/4 v3, 0x0

    move-object/from16 v16, v3

    :goto_f
    if-nez p18, :cond_11

    const/4 v3, 0x0

    move-object v15, v3

    :goto_10
    if-nez p20, :cond_12

    const/4 v3, 0x0

    move-object v14, v3

    :goto_11
    if-nez p21, :cond_13

    const/4 v3, 0x0

    move-object v13, v3

    :goto_12
    if-nez p22, :cond_14

    const/4 v3, 0x0

    move-object v12, v3

    :goto_13
    if-nez p23, :cond_15

    const/4 v3, 0x0

    move-object v11, v3

    :goto_14
    if-nez p24, :cond_16

    const/4 v3, 0x0

    move-object v10, v3

    :goto_15
    if-nez p25, :cond_17

    const/4 v3, 0x0

    move-object v9, v3

    :goto_16
    if-nez p26, :cond_18

    const/4 v3, 0x0

    move-object v8, v3

    :goto_17
    if-nez p27, :cond_19

    const/4 v3, 0x0

    move-object v7, v3

    :goto_18
    if-nez p28, :cond_1a

    const/4 v3, 0x0

    move-object v6, v3

    :goto_19
    if-nez p29, :cond_1b

    const/4 v3, 0x0

    move-object v5, v3

    :goto_1a
    if-nez p2, :cond_1c

    const/4 v3, 0x0

    move-object v4, v3

    :goto_1b
    if-eqz p19, :cond_1d

    const/4 v3, 0x1

    :goto_1c
    const/16 v31, 0x1d

    :try_start_0
    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v29, v31, v32

    const/16 v29, 0x1

    aput-object v4, v31, v29

    const/4 v4, 0x2

    aput-object v30, v31, v4

    const/4 v4, 0x3

    aput-object v8, v31, v4

    const/4 v4, 0x4

    aput-object v7, v31, v4

    const/4 v4, 0x5

    aput-object v6, v31, v4

    const/4 v4, 0x6

    aput-object v5, v31, v4

    const/4 v4, 0x7

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v31, v4

    const/16 v4, 0x8

    aput-object v26, v31, v4

    const/16 v4, 0x9

    aput-object v28, v31, v4

    const/16 v4, 0xa

    aput-object v27, v31, v4

    const/16 v4, 0xb

    aput-object v23, v31, v4

    const/16 v4, 0xc

    aput-object v25, v31, v4

    const/16 v4, 0xd

    aput-object v24, v31, v4

    const/16 v4, 0xe

    aput-object v22, v31, v4

    const/16 v4, 0xf

    aput-object v21, v31, v4

    const/16 v4, 0x10

    aput-object v20, v31, v4

    const/16 v4, 0x11

    aput-object v19, v31, v4

    const/16 v4, 0x12

    aput-object v18, v31, v4

    const/16 v4, 0x13

    aput-object v17, v31, v4

    const/16 v4, 0x14

    aput-object v16, v31, v4

    const/16 v4, 0x15

    aput-object v15, v31, v4

    const/16 v4, 0x16

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v31, v4

    const/16 v3, 0x17

    aput-object v14, v31, v3

    const/16 v3, 0x18

    aput-object v13, v31, v3

    const/16 v3, 0x19

    aput-object v12, v31, v3

    const/16 v3, 0x1a

    aput-object v11, v31, v3

    const/16 v3, 0x1b

    aput-object v10, v31, v3

    const/16 v3, 0x1c

    aput-object v9, v31, v3

    move-object/from16 v0, v31

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1d
    invoke-static {v1}, Lcom/lenovo/lps/sus/c/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1e
    return-object v1

    :cond_0
    const/4 v1, 0x1

    move/from16 v0, p0

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "GetVIByAK?AppKey=%s&SDKVer=2.1.0&dauuid=%s&temo=%s&sm1=%s&sm2=%s&dnip=%s&tzid=%s&OSType=Android&ReqType=%s&AppVerCode=%s&AppVerName=%s&VerSubType=%s&AppTags=%s&Resolution=%s&DPI=%s&DevID=%s&AndID=%s&OSVer=%s&Lang=%s&Count=%s&DModel=%s&Mfr=%s&BVer=%s&AQDelay=%s&CEMD5=%s&im=%s&sciso=%s&nciso=%s&ip=%s&nt=%s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x2

    move/from16 v0, p0

    if-ne v1, v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "GetVIByAK?AppKey=%s&SDKVer=2.1.0&dauuid=%s&temo=%s&sm1=%s&sm2=%s&dnip=%s&tzid=%s&OSType=Android&ReqType=%s&AppVerCode=%s&AppVerName=%s&VerSubType=%s&AppTags=%s&Resolution=%s&DPI=%s&DevID=%s&AndID=%s&OSVer=%s&Lang=%s&Count=%s&DModel=%s&Mfr=%s&BVer=%s&AQDelay=%s&CEMD5=%s&im=%s&sciso=%s&nciso=%s&ip=%s&nt=%s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1e

    :cond_3
    :try_start_1
    const-string v3, "UTF-8"

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    goto/16 :goto_2

    :cond_4
    const-string v3, "UTF-8"

    move-object/from16 v0, p6

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    goto/16 :goto_3

    :cond_5
    const-string v3, "UTF-8"

    move-object/from16 v0, p7

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v3

    goto/16 :goto_4

    :cond_6
    const-string v3, "UTF-8"

    move-object/from16 v0, p5

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v3

    goto/16 :goto_5

    :cond_7
    const-string v3, "UTF-8"

    move-object/from16 v0, p9

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    goto/16 :goto_6

    :cond_8
    const-string v3, "UTF-8"

    move-object/from16 v0, p10

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    goto/16 :goto_7

    :cond_9
    const-string v3, "UTF-8"

    move-object/from16 v0, p8

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    goto/16 :goto_8

    :cond_a
    const-string v3, "UTF-8"

    move-object/from16 v0, p11

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    goto/16 :goto_9

    :cond_b
    const-string v3, "UTF-8"

    move-object/from16 v0, p12

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto/16 :goto_a

    :cond_c
    const-string v3, "UTF-8"

    move-object/from16 v0, p13

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    goto/16 :goto_b

    :cond_d
    const-string v3, "UTF-8"

    move-object/from16 v0, p14

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto/16 :goto_c

    :cond_e
    const-string v3, "UTF-8"

    move-object/from16 v0, p15

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    goto/16 :goto_d

    :cond_f
    const-string v3, "UTF-8"

    move-object/from16 v0, p16

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto/16 :goto_e

    :cond_10
    const-string v3, "UTF-8"

    move-object/from16 v0, p17

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto/16 :goto_f

    :cond_11
    const-string v3, "UTF-8"

    move-object/from16 v0, p18

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto/16 :goto_10

    :cond_12
    const-string v3, "UTF-8"

    move-object/from16 v0, p20

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto/16 :goto_11

    :cond_13
    const-string v3, "UTF-8"

    move-object/from16 v0, p21

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto/16 :goto_12

    :cond_14
    const-string v3, "UTF-8"

    move-object/from16 v0, p22

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto/16 :goto_13

    :cond_15
    const-string v3, "UTF-8"

    move-object/from16 v0, p23

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto/16 :goto_14

    :cond_16
    const-string v3, "UTF-8"

    move-object/from16 v0, p24

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto/16 :goto_15

    :cond_17
    const-string v3, "UTF-8"

    move-object/from16 v0, p25

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto/16 :goto_16

    :cond_18
    const-string v3, "UTF-8"

    move-object/from16 v0, p26

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto/16 :goto_17

    :cond_19
    const-string v3, "UTF-8"

    move-object/from16 v0, p27

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto/16 :goto_18

    :cond_1a
    const-string v3, "UTF-8"

    move-object/from16 v0, p28

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto/16 :goto_19

    :cond_1b
    const-string v3, "UTF-8"

    move-object/from16 v0, p29

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_1a

    :cond_1c
    const-string v3, "UTF-8"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_1b

    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_1c

    :catch_0
    move-exception v1

    move-object v1, v2

    goto/16 :goto_1d

    :cond_1e
    move-object/from16 v30, v3

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/SUSdownload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "SUS_PATCHUPDATE"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SUS_PATCHUPDATECURAPPMD5_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 22

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "NewDLSumBySDK?SDKVer=2.1.0&devid=%s&pt=android&pu=%s&did=%s&id=%s&pn=%s&vc=%s&vn=%s&ch=%s&fname=%s&fsize=%s&dtime=%s&fnum=%s&dtype=%s&dlfsize=%s&duuid=%s&dsize=%s&devip=%s&rep1=%s&rep2=%s&rep3=%s&OL=%s&inf=%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    if-nez p1, :cond_0

    const/4 v2, 0x0

    move-object v14, v2

    :goto_0
    if-nez p2, :cond_1

    const/4 v2, 0x0

    move-object v13, v2

    :goto_1
    if-nez p3, :cond_2

    const/4 v2, 0x0

    move-object v12, v2

    :goto_2
    if-nez p6, :cond_3

    const/4 v2, 0x0

    move-object v11, v2

    :goto_3
    if-nez p7, :cond_4

    const/4 v2, 0x0

    move-object v10, v2

    :goto_4
    if-nez p4, :cond_5

    const/4 v2, 0x0

    move-object v9, v2

    :goto_5
    if-nez p5, :cond_6

    const/4 v2, 0x0

    move-object v8, v2

    :goto_6
    if-nez p8, :cond_7

    const/4 v2, 0x0

    move-object v7, v2

    :goto_7
    if-nez p11, :cond_8

    const/4 v2, 0x0

    move-object v6, v2

    :goto_8
    if-nez p21, :cond_9

    const/4 v2, 0x0

    move-object v5, v2

    :goto_9
    :try_start_0
    invoke-static/range {p12 .. p13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {p14 .. p15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {p16 .. p16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {p17 .. p18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    if-nez p10, :cond_a

    const/4 v2, 0x0

    move-object v4, v2

    :goto_a
    if-nez p19, :cond_b

    const/4 v2, 0x0

    move-object v3, v2

    :goto_b
    if-nez p0, :cond_c

    const/4 v2, 0x0

    :goto_c
    const/16 v20, 0x16

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v2, v20, v21

    const/4 v2, 0x1

    aput-object v14, v20, v2

    const/4 v2, 0x2

    aput-object v13, v20, v2

    const/4 v2, 0x3

    aput-object v12, v20, v2

    const/4 v2, 0x4

    aput-object v9, v20, v2

    const/4 v2, 0x5

    aput-object v8, v20, v2

    const/4 v2, 0x6

    aput-object v11, v20, v2

    const/4 v2, 0x7

    aput-object v10, v20, v2

    const/16 v2, 0x8

    aput-object v7, v20, v2

    const/16 v2, 0x9

    aput-object v16, v20, v2

    const/16 v2, 0xa

    aput-object v17, v20, v2

    const/16 v2, 0xb

    aput-object v18, v20, v2

    const/16 v2, 0xc

    aput-object p9, v20, v2

    const/16 v2, 0xd

    aput-object v4, v20, v2

    const/16 v2, 0xe

    aput-object v6, v20, v2

    const/16 v2, 0xf

    aput-object v19, v20, v2

    const/16 v2, 0x10

    aput-object v3, v20, v2

    const/16 v2, 0x11

    const/4 v3, 0x0

    aput-object v3, v20, v2

    const/16 v2, 0x12

    const/4 v3, 0x0

    aput-object v3, v20, v2

    const/16 v2, 0x13

    const/4 v3, 0x0

    aput-object v3, v20, v2

    const/16 v2, 0x14

    const/4 v3, 0x0

    aput-object v3, v20, v2

    const/16 v2, 0x15

    aput-object v5, v20, v2

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_d
    invoke-static {v1}, Lcom/lenovo/lps/sus/c/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    :try_start_1
    const-string v2, "UTF-8"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto/16 :goto_0

    :cond_1
    const-string v2, "UTF-8"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto/16 :goto_1

    :cond_2
    const-string v2, "UTF-8"

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto/16 :goto_2

    :cond_3
    const-string v2, "UTF-8"

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto/16 :goto_3

    :cond_4
    const-string v2, "UTF-8"

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto/16 :goto_4

    :cond_5
    const-string v2, "UTF-8"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto/16 :goto_5

    :cond_6
    const-string v2, "UTF-8"

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto/16 :goto_6

    :cond_7
    const-string v2, "UTF-8"

    move-object/from16 v0, p8

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_7

    :cond_8
    const-string v2, "UTF-8"

    move-object/from16 v0, p11

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto/16 :goto_8

    :cond_9
    const-string v2, "UTF-8"

    move-object/from16 v0, p21

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_9

    :cond_a
    const-string v2, "UTF-8"

    move-object/from16 v0, p10

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_a

    :cond_b
    const-string v2, "UTF-8"

    move-object/from16 v0, p19

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_b

    :cond_c
    const-string v2, "UTF-8"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_c

    :catch_0
    move-exception v2

    goto/16 :goto_d
.end method

.method public static a(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestGet info="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; needRes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v2, p2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v2, p2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    if-eqz p1, :cond_10

    :try_start_0
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    :goto_1
    const/16 v3, 0xc8

    if-ne v3, v2, :cond_13

    if-eqz v1, :cond_13

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_12

    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_11

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_2

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v4

    if-nez v4, :cond_6

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    :cond_5
    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    :try_start_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catch_0
    move-exception v4

    :goto_5
    if-eqz v2, :cond_7

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_8
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    :goto_6
    if-eqz v2, :cond_9

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_a
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    goto/16 :goto_0

    :catch_4
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    :goto_7
    if-eqz v2, :cond_b

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_c
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    :catch_5
    move-exception v1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    :goto_8
    if-eqz v3, :cond_d

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    :cond_f
    throw v1

    :cond_10
    :try_start_a
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto/16 :goto_0

    :catch_7
    move-exception v1

    goto/16 :goto_0

    :catch_8
    move-exception v1

    goto/16 :goto_0

    :catch_9
    move-exception v1

    goto/16 :goto_0

    :catch_a
    move-exception v1

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v4, v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_8

    :catchall_2
    move-exception v2

    move-object v4, v3

    move-object v3, v0

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_8

    :catchall_3
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_8

    :catch_b
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    goto :goto_7

    :catch_c
    move-exception v2

    move-object v2, v0

    goto :goto_7

    :catch_d
    move-exception v4

    goto :goto_7

    :catch_e
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    goto :goto_6

    :catch_f
    move-exception v2

    move-object v2, v0

    goto :goto_6

    :catch_10
    move-exception v4

    goto :goto_6

    :catch_11
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_5

    :catch_12
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_5

    :catch_13
    move-exception v2

    move-object v2, v0

    goto/16 :goto_5

    :cond_11
    move-object v2, v0

    goto/16 :goto_3

    :cond_12
    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_3

    :cond_13
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_3

    :cond_14
    move v2, v1

    move-object v1, v0

    goto/16 :goto_1
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/lenovo/lps/sus/c/b;->b:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "drawable"

    const-string/jumbo v1, "sus_notification_install_icon"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lps/sus/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x1080081

    move v1, v0

    :goto_1
    const-string v0, "SUS_NOTIFICATION_INSTALLAPK_TITLE"

    invoke-static {p0, v0}, Lcom/lenovo/lps/sus/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "SUS_NOTIFICATION_INSTALLAPK"

    invoke-static {p0, v0}, Lcom/lenovo/lps/sus/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_4

    const-string v2, "Please install the apk!"

    move-object v4, v2

    :goto_2
    if-nez v0, :cond_2

    const-string v0, "Please install the apk:"

    :cond_2
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v6, -0x1

    if-eq v6, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v1, v4, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/4 v4, 0x2

    iput v4, v6, Landroid/app/Notification;->flags:I

    const/16 v4, 0x10

    iput v4, v6, Landroid/app/Notification;->flags:I

    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "apk_from"

    const-string v7, "com.lenovo.appstore"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v3, v4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v6, p0, v0, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_3
    move v2, v3

    goto :goto_3

    :cond_4
    move-object v4, v2

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p0, :cond_1

    const-string v0, "SUS_PATCHUPDATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SUS_PATCHUPDATEKEY"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SUS_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string v1, "SUS_PATCHUPDATEKEY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v0, v2, p5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPatchUpdateFail key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;J)V
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    add-long/2addr v0, v2

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/32 v2, 0x48190800

    add-long/2addr v0, v2

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2

    sput-boolean p0, Lcom/lenovo/lps/sus/c/b;->c:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isUserSettingsEnableFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/lenovo/lps/sus/c/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(ZJ)V
    .locals 3

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->o()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "FailFlag"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "UpdateAffairId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v2, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    const-class v2, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(J)Z
    .locals 4

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->g()J

    move-result-wide v0

    sget-object v2, Lcom/lenovo/lps/sus/c/e;->n:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, p0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(JJJ)Z
    .locals 2

    add-long v0, p2, p4

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, "SUS_PATCHUPDATE"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "SUS_PATCHUPDATEKEY"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "SUS_"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string v3, "SUS_PATCHUPDATEKEY"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPatchUpdateFail key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; flag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public static b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 33

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "GetVIByPN?PackName=%s&SDKVer=2.1.0&dauuid=%s&temo=%s&sm1=%s&sm2=%s&dnip=%s&tzid=%s&OSType=Android&ReqType=%s&AppVerCode=%s&AppVerName=%s&VerSubType=%s&AppTags=%s&Resolution=%s&DPI=%s&DevID=%s&AndID=%s&OSVer=%s&Lang=%s&Count=%s&DModel=%s&Mfr=%s&BVer=%s&AQDelay=%s&CEMD5=%s&im=%s&sciso=%s&nciso=%s&ip=%s&nt=%s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "N"

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->n()Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v3, "Y"

    move-object/from16 v30, v3

    :goto_1
    if-nez p6, :cond_3

    const/4 v3, 0x0

    move-object/from16 v29, v3

    :goto_2
    if-nez p7, :cond_4

    const/4 v3, 0x0

    move-object/from16 v28, v3

    :goto_3
    if-nez p4, :cond_5

    const/4 v3, 0x0

    move-object/from16 v27, v3

    :goto_4
    if-nez p5, :cond_6

    const/4 v3, 0x0

    move-object/from16 v26, v3

    :goto_5
    if-nez p9, :cond_7

    const/4 v3, 0x0

    move-object/from16 v25, v3

    :goto_6
    if-nez p10, :cond_8

    const/4 v3, 0x0

    move-object/from16 v24, v3

    :goto_7
    if-nez p8, :cond_9

    const/4 v3, 0x0

    move-object/from16 v23, v3

    :goto_8
    if-nez p11, :cond_a

    const/4 v3, 0x0

    move-object/from16 v22, v3

    :goto_9
    if-nez p12, :cond_b

    const/4 v3, 0x0

    move-object/from16 v21, v3

    :goto_a
    if-nez p13, :cond_c

    const/4 v3, 0x0

    move-object/from16 v20, v3

    :goto_b
    if-nez p14, :cond_d

    const/4 v3, 0x0

    move-object/from16 v19, v3

    :goto_c
    if-nez p15, :cond_e

    const/4 v3, 0x0

    move-object/from16 v18, v3

    :goto_d
    if-nez p16, :cond_f

    const/4 v3, 0x0

    move-object/from16 v17, v3

    :goto_e
    if-nez p17, :cond_10

    const/4 v3, 0x0

    move-object/from16 v16, v3

    :goto_f
    if-nez p18, :cond_11

    const/4 v3, 0x0

    move-object v15, v3

    :goto_10
    if-nez p20, :cond_12

    const/4 v3, 0x0

    move-object v14, v3

    :goto_11
    if-nez p21, :cond_13

    const/4 v3, 0x0

    move-object v13, v3

    :goto_12
    if-nez p22, :cond_14

    const/4 v3, 0x0

    move-object v12, v3

    :goto_13
    if-nez p23, :cond_15

    const/4 v3, 0x0

    move-object v11, v3

    :goto_14
    if-nez p24, :cond_16

    const/4 v3, 0x0

    move-object v10, v3

    :goto_15
    if-nez p25, :cond_17

    const/4 v3, 0x0

    move-object v9, v3

    :goto_16
    if-nez p26, :cond_18

    const/4 v3, 0x0

    move-object v8, v3

    :goto_17
    if-nez p27, :cond_19

    const/4 v3, 0x0

    move-object v7, v3

    :goto_18
    if-nez p28, :cond_1a

    const/4 v3, 0x0

    move-object v6, v3

    :goto_19
    if-nez p29, :cond_1b

    const/4 v3, 0x0

    move-object v5, v3

    :goto_1a
    if-nez p2, :cond_1c

    const/4 v3, 0x0

    move-object v4, v3

    :goto_1b
    if-eqz p19, :cond_1d

    const/4 v3, 0x1

    :goto_1c
    const/16 v31, 0x1d

    :try_start_0
    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v27, v31, v32

    const/16 v27, 0x1

    aput-object v4, v31, v27

    const/4 v4, 0x2

    aput-object v30, v31, v4

    const/4 v4, 0x3

    aput-object v8, v31, v4

    const/4 v4, 0x4

    aput-object v7, v31, v4

    const/4 v4, 0x5

    aput-object v6, v31, v4

    const/4 v4, 0x6

    aput-object v5, v31, v4

    const/4 v4, 0x7

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v31, v4

    const/16 v4, 0x8

    aput-object v26, v31, v4

    const/16 v4, 0x9

    aput-object v29, v31, v4

    const/16 v4, 0xa

    aput-object v28, v31, v4

    const/16 v4, 0xb

    aput-object v23, v31, v4

    const/16 v4, 0xc

    aput-object v25, v31, v4

    const/16 v4, 0xd

    aput-object v24, v31, v4

    const/16 v4, 0xe

    aput-object v22, v31, v4

    const/16 v4, 0xf

    aput-object v21, v31, v4

    const/16 v4, 0x10

    aput-object v20, v31, v4

    const/16 v4, 0x11

    aput-object v19, v31, v4

    const/16 v4, 0x12

    aput-object v18, v31, v4

    const/16 v4, 0x13

    aput-object v17, v31, v4

    const/16 v4, 0x14

    aput-object v16, v31, v4

    const/16 v4, 0x15

    aput-object v15, v31, v4

    const/16 v4, 0x16

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v31, v4

    const/16 v3, 0x17

    aput-object v14, v31, v3

    const/16 v3, 0x18

    aput-object v13, v31, v3

    const/16 v3, 0x19

    aput-object v12, v31, v3

    const/16 v3, 0x1a

    aput-object v11, v31, v3

    const/16 v3, 0x1b

    aput-object v10, v31, v3

    const/16 v3, 0x1c

    aput-object v9, v31, v3

    move-object/from16 v0, v31

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1d
    invoke-static {v1}, Lcom/lenovo/lps/sus/c/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1e
    return-object v1

    :cond_0
    const/4 v1, 0x1

    move/from16 v0, p0

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "GetVIByPNBG?PackName=%s&SDKVer=2.1.0&dauuid=%s&temo=%s&sm1=%s&sm2=%s&dnip=%s&tzid=%s&OSType=Android&ReqType=%s&AppVerCode=%s&AppVerName=%s&VerSubType=%s&AppTags=%s&Resolution=%s&DPI=%s&DevID=%s&AndID=%s&OSVer=%s&Lang=%s&Count=%s&DModel=%s&Mfr=%s&BVer=%s&AQDelay=%s&CEMD5=%s&im=%s&sciso=%s&nciso=%s&ip=%s&nt=%s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x2

    move/from16 v0, p0

    if-ne v1, v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "GetVIByPNUser?PackName=%s&SDKVer=2.1.0&dauuid=%s&temo=%s&sm1=%s&sm2=%s&dnip=%s&tzid=%s&OSType=Android&ReqType=%s&AppVerCode=%s&AppVerName=%s&VerSubType=%s&AppTags=%s&Resolution=%s&DPI=%s&DevID=%s&AndID=%s&OSVer=%s&Lang=%s&Count=%s&DModel=%s&Mfr=%s&BVer=%s&AQDelay=%s&CEMD5=%s&im=%s&sciso=%s&nciso=%s&ip=%s&nt=%s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1e

    :cond_3
    :try_start_1
    const-string v3, "UTF-8"

    move-object/from16 v0, p6

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    goto/16 :goto_2

    :cond_4
    const-string v3, "UTF-8"

    move-object/from16 v0, p7

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    goto/16 :goto_3

    :cond_5
    const-string v3, "UTF-8"

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v3

    goto/16 :goto_4

    :cond_6
    const-string v3, "UTF-8"

    move-object/from16 v0, p5

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v3

    goto/16 :goto_5

    :cond_7
    const-string v3, "UTF-8"

    move-object/from16 v0, p9

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    goto/16 :goto_6

    :cond_8
    const-string v3, "UTF-8"

    move-object/from16 v0, p10

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    goto/16 :goto_7

    :cond_9
    const-string v3, "UTF-8"

    move-object/from16 v0, p8

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    goto/16 :goto_8

    :cond_a
    const-string v3, "UTF-8"

    move-object/from16 v0, p11

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    goto/16 :goto_9

    :cond_b
    const-string v3, "UTF-8"

    move-object/from16 v0, p12

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto/16 :goto_a

    :cond_c
    const-string v3, "UTF-8"

    move-object/from16 v0, p13

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    goto/16 :goto_b

    :cond_d
    const-string v3, "UTF-8"

    move-object/from16 v0, p14

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto/16 :goto_c

    :cond_e
    const-string v3, "UTF-8"

    move-object/from16 v0, p15

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    goto/16 :goto_d

    :cond_f
    const-string v3, "UTF-8"

    move-object/from16 v0, p16

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto/16 :goto_e

    :cond_10
    const-string v3, "UTF-8"

    move-object/from16 v0, p17

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto/16 :goto_f

    :cond_11
    const-string v3, "UTF-8"

    move-object/from16 v0, p18

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto/16 :goto_10

    :cond_12
    const-string v3, "UTF-8"

    move-object/from16 v0, p20

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto/16 :goto_11

    :cond_13
    const-string v3, "UTF-8"

    move-object/from16 v0, p21

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto/16 :goto_12

    :cond_14
    const-string v3, "UTF-8"

    move-object/from16 v0, p22

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto/16 :goto_13

    :cond_15
    const-string v3, "UTF-8"

    move-object/from16 v0, p23

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto/16 :goto_14

    :cond_16
    const-string v3, "UTF-8"

    move-object/from16 v0, p24

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto/16 :goto_15

    :cond_17
    const-string v3, "UTF-8"

    move-object/from16 v0, p25

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto/16 :goto_16

    :cond_18
    const-string v3, "UTF-8"

    move-object/from16 v0, p26

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto/16 :goto_17

    :cond_19
    const-string v3, "UTF-8"

    move-object/from16 v0, p27

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto/16 :goto_18

    :cond_1a
    const-string v3, "UTF-8"

    move-object/from16 v0, p28

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto/16 :goto_19

    :cond_1b
    const-string v3, "UTF-8"

    move-object/from16 v0, p29

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_1a

    :cond_1c
    const-string v3, "UTF-8"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_1b

    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_1c

    :catch_0
    move-exception v1

    move-object v1, v2

    goto/16 :goto_1d

    :cond_1e
    move-object/from16 v30, v3

    goto/16 :goto_1
.end method

.method public static b(J)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/32 v2, 0x100000

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    long-to-float v1, p0

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "KB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    long-to-float v1, p0

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 22

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "NewDLErrorBySDK?SDKVer=2.1.0&devid=%s&pt=android&pu=%s&did=%s&id=%s&pn=%s&vc=%s&vn=%s&ch=%s&fname=%s&fsize=%s&dtime=%s&fnum=%s&dtype=%s&dlfsize=%s&duuid=%s&dsize=%s&devip=%s&rep1=%s&rep2=%s&rep3=%s&OL=%s&inf=%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    if-nez p1, :cond_0

    const/4 v2, 0x0

    move-object v14, v2

    :goto_0
    if-nez p2, :cond_1

    const/4 v2, 0x0

    move-object v13, v2

    :goto_1
    if-nez p3, :cond_2

    const/4 v2, 0x0

    move-object v12, v2

    :goto_2
    if-nez p6, :cond_3

    const/4 v2, 0x0

    move-object v11, v2

    :goto_3
    if-nez p7, :cond_4

    const/4 v2, 0x0

    move-object v10, v2

    :goto_4
    if-nez p4, :cond_5

    const/4 v2, 0x0

    move-object v9, v2

    :goto_5
    if-nez p5, :cond_6

    const/4 v2, 0x0

    move-object v8, v2

    :goto_6
    if-nez p8, :cond_7

    const/4 v2, 0x0

    move-object v7, v2

    :goto_7
    if-nez p11, :cond_8

    const/4 v2, 0x0

    move-object v6, v2

    :goto_8
    if-nez p21, :cond_9

    const/4 v2, 0x0

    move-object v5, v2

    :goto_9
    :try_start_0
    invoke-static/range {p12 .. p13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {p14 .. p15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {p16 .. p16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {p17 .. p18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    if-nez p10, :cond_a

    const/4 v2, 0x0

    move-object v4, v2

    :goto_a
    if-nez p19, :cond_b

    const/4 v2, 0x0

    move-object v3, v2

    :goto_b
    if-nez p0, :cond_c

    const/4 v2, 0x0

    :goto_c
    const/16 v20, 0x16

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v2, v20, v21

    const/4 v2, 0x1

    aput-object v14, v20, v2

    const/4 v2, 0x2

    aput-object v13, v20, v2

    const/4 v2, 0x3

    aput-object v12, v20, v2

    const/4 v2, 0x4

    aput-object v9, v20, v2

    const/4 v2, 0x5

    aput-object v8, v20, v2

    const/4 v2, 0x6

    aput-object v11, v20, v2

    const/4 v2, 0x7

    aput-object v10, v20, v2

    const/16 v2, 0x8

    aput-object v7, v20, v2

    const/16 v2, 0x9

    aput-object v16, v20, v2

    const/16 v2, 0xa

    aput-object v17, v20, v2

    const/16 v2, 0xb

    aput-object v18, v20, v2

    const/16 v2, 0xc

    aput-object p9, v20, v2

    const/16 v2, 0xd

    aput-object v4, v20, v2

    const/16 v2, 0xe

    aput-object v6, v20, v2

    const/16 v2, 0xf

    aput-object v19, v20, v2

    const/16 v2, 0x10

    aput-object v3, v20, v2

    const/16 v2, 0x11

    const/4 v3, 0x0

    aput-object v3, v20, v2

    const/16 v2, 0x12

    const/4 v3, 0x0

    aput-object v3, v20, v2

    const/16 v2, 0x13

    const/4 v3, 0x0

    aput-object v3, v20, v2

    const/16 v2, 0x14

    const/4 v3, 0x0

    aput-object v3, v20, v2

    const/16 v2, 0x15

    aput-object v5, v20, v2

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_d
    invoke-static {v1}, Lcom/lenovo/lps/sus/c/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    :try_start_1
    const-string v2, "UTF-8"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto/16 :goto_0

    :cond_1
    const-string v2, "UTF-8"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto/16 :goto_1

    :cond_2
    const-string v2, "UTF-8"

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto/16 :goto_2

    :cond_3
    const-string v2, "UTF-8"

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto/16 :goto_3

    :cond_4
    const-string v2, "UTF-8"

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto/16 :goto_4

    :cond_5
    const-string v2, "UTF-8"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto/16 :goto_5

    :cond_6
    const-string v2, "UTF-8"

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto/16 :goto_6

    :cond_7
    const-string v2, "UTF-8"

    move-object/from16 v0, p8

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_7

    :cond_8
    const-string v2, "UTF-8"

    move-object/from16 v0, p11

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto/16 :goto_8

    :cond_9
    const-string v2, "UTF-8"

    move-object/from16 v0, p21

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_9

    :cond_a
    const-string v2, "UTF-8"

    move-object/from16 v0, p10

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_a

    :cond_b
    const-string v2, "UTF-8"

    move-object/from16 v0, p19

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_b

    :cond_c
    const-string v2, "UTF-8"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_c

    :catch_0
    move-exception v2

    goto/16 :goto_d
.end method

.method public static b()V
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSCustdefNotificationActivity;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/sus/control/SUSNotificationActivity;->a()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p0, :cond_0

    const-string v0, "SUS_PATCHUPDATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SUS_PATCHUPDATEKEY"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SUS_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SUS_PATCHUPDATEKEY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "clearDownloadFolder,expire file, path="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v6, v3

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v7, v3, v2

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v9, v8

    move v0, v1

    :goto_1
    if-lt v0, v9, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    aget-object v10, v8, v0

    invoke-static {v10, p1, v4, v5}, Lcom/lenovo/lps/sus/c/b;->a(Ljava/io/File;Ljava/lang/String;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v7, p1, v4, v5}, Lcom/lenovo/lps/sus/c/b;->a(Ljava/io/File;Ljava/lang/String;J)V

    goto :goto_2
.end method

.method public static b(Z)V
    .locals 2

    sput-boolean p0, Lcom/lenovo/lps/sus/c/b;->e:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set isPatchUpdateUserEnableFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/lenovo/lps/sus/c/b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "SUS_PATCHUPDATE"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SUS_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "/adpserver/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "{\"RES\":\"EXCEPTION\"}"

    return-object v0
.end method

.method public static c(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SUS_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "/adpserver/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/adpserver/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "SUS_PATCHUPDATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SUS_PATCHUPDATECURAPPMD5_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static c(Z)V
    .locals 2

    sput-boolean p0, Lcom/lenovo/lps/sus/c/b;->d:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set isTestModeEnableFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/lenovo/lps/sus/c/b;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/adpserver/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "{\"RES\":\"LATESTVERSION\"}"

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "apk_from"

    const-string v3, "com.lenovo.appstore"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SUS_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SUS_SERVER_DN"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lcom/lenovo/lps/sus/c/b;->f:Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    :cond_0
    return v0

    :cond_1
    aget-object v4, v2, v1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".SUS_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ne v5, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "{\"RES\":\"NOTFOUND\"}"

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    aget-object v4, v2, v1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static f()J
    .locals 6

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/lenovo/lps/sus/c/b;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    move v1, v2

    :goto_0
    const/16 v0, 0x63

    if-lt v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    array-length v5, v4

    move v3, v2

    :goto_3
    if-lt v3, v5, :cond_3

    move v3, v2

    :goto_4
    if-nez v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    aget-object v6, v4, v3

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_7

    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->size()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-gtz v0, :cond_9

    :cond_7
    if-eqz v2, :cond_8

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_8
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_9
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_b
    :try_start_6
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AndroidManifest.xml"

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    :goto_3
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_c

    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_c
    :goto_5
    throw v0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move v0, v1

    move-object v1, v2

    goto :goto_3

    :catch_6
    move-exception v1

    move-object v1, v2

    goto :goto_3
.end method

.method public static g()J
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getApkFile entry,apkfileStr="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const/16 v0, 0x20

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()J
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->f()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->g()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/lenovo/lps/sus/c/b;->b:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    const-string v0, "http://susapi.lenovomm.com/adpserver/"

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const-string v0, "http://susapi.dev.surepush.cn/adpserver/"

    goto :goto_0

    :pswitch_3
    const-string v0, "http://localhost:8080/adpserver/"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static j()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->f()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "SUS_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "SUS_SERVER_DN"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/c/b;->c:Z

    return v0
.end method

.method public static l()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static m()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/c/b;->e:Z

    return v0
.end method

.method public static n()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/c/b;->d:Z

    return v0
.end method

.method public static o()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/c/b;->f:Z

    return v0
.end method
