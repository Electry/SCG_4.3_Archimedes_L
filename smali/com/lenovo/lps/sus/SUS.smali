.class public final Lcom/lenovo/lps/sus/SUS;
.super Ljava/lang/Object;


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lenovo/lps/sus/SUS;->a:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AsyncQueryLatestVersionByPackageName(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)J
    .locals 32

    const-string v2, "AsyncQueryLatestVersionByPackageName entry"

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const-wide/16 v2, -0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_INVALIDPARAM:Lcom/lenovo/lps/sus/EventType;

    const-string v6, "The inputted parameters is wrong!"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lenovo/lps/sus/b/j;->k:Z

    new-instance v2, Lcom/lenovo/lps/sus/b/m;

    const/4 v3, 0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/a;->e:Lcom/lenovo/lps/sus/b/a;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/lenovo/lps/sus/b/j;->h:Ljava/lang/String;

    sget-wide v12, Lcom/lenovo/lps/sus/b/j;->i:J

    sget-wide v14, Lcom/lenovo/lps/sus/b/j;->j:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->g()I

    move-result v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v6, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v31}, Lcom/lenovo/lps/sus/b/m;-><init>(ZLcom/lenovo/lps/sus/b/a;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZZZZZ)V

    sget-object v3, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)Lcom/lenovo/lps/sus/b/e;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/e;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static AsyncQueryLatestVersionByPackageName_AutoProcessOnlyForWLAN(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)J
    .locals 32

    const-string v2, "AsyncQueryLatestVersionByPackageName_AutoProcessOnlyForWLAN entry"

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const-wide/16 v2, -0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_INVALIDPARAM:Lcom/lenovo/lps/sus/EventType;

    const-string v6, "The inputted parameters is wrong!"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lenovo/lps/sus/b/j;->k:Z

    if-eqz p4, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/lenovo/lps/sus/b/i;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/lenovo/lps/sus/b/i;->c(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->d()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v2, -0x64

    sget-object v4, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_QUERY_RESP:Lcom/lenovo/lps/sus/EventType;

    invoke-static {v6}, Lcom/lenovo/lps/sus/c/f;->a(Ljava/lang/String;)Lcom/lenovo/lps/sus/b/g;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/lenovo/lps/sus/SUS;->a:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->d()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v2, -0x64

    sget-object v4, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_QUERY_RESP:Lcom/lenovo/lps/sus/EventType;

    invoke-static {v6}, Lcom/lenovo/lps/sus/c/f;->a(Ljava/lang/String;)Lcom/lenovo/lps/sus/b/g;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_3
    sput-wide v2, Lcom/lenovo/lps/sus/SUS;->a:J

    :cond_4
    new-instance v2, Lcom/lenovo/lps/sus/b/m;

    const/4 v3, 0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/a;->e:Lcom/lenovo/lps/sus/b/a;

    const/4 v5, 0x0

    const/4 v7, 0x0

    sget-object v11, Lcom/lenovo/lps/sus/b/j;->h:Ljava/lang/String;

    sget-wide v12, Lcom/lenovo/lps/sus/b/j;->i:J

    sget-wide v14, Lcom/lenovo/lps/sus/b/j;->j:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->g()I

    move-result v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v6, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    invoke-direct/range {v2 .. v31}, Lcom/lenovo/lps/sus/b/m;-><init>(ZLcom/lenovo/lps/sus/b/a;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZZZZZ)V

    sget-object v3, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)Lcom/lenovo/lps/sus/b/e;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/e;)J

    move-result-wide v2

    goto/16 :goto_0
.end method

.method public static AsyncStartVersionUpdate(Landroid/content/Context;)J
    .locals 32

    const-string v2, "AsyncStartVersionUpdate entry"

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-wide/16 v2, -0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_INVALIDPARAM:Lcom/lenovo/lps/sus/EventType;

    const-string v6, "The inputted parameters is wrong!"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lenovo/lps/sus/b/j;->k:Z

    new-instance v2, Lcom/lenovo/lps/sus/b/m;

    const/4 v3, 0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/a;->a:Lcom/lenovo/lps/sus/b/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/lenovo/lps/sus/b/j;->h:Ljava/lang/String;

    sget-wide v12, Lcom/lenovo/lps/sus/b/j;->i:J

    sget-wide v14, Lcom/lenovo/lps/sus/b/j;->j:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->g()I

    move-result v26

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x1

    invoke-direct/range {v2 .. v31}, Lcom/lenovo/lps/sus/b/m;-><init>(ZLcom/lenovo/lps/sus/b/a;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZZZZZ)V

    sget-object v3, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)Lcom/lenovo/lps/sus/b/e;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/e;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static AsyncStartVersionUpdateByAppKey(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)J
    .locals 32

    const-string v2, "AsyncStartVersionUpdateByAppKey entry"

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const-wide/16 v2, -0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_INVALIDPARAM:Lcom/lenovo/lps/sus/EventType;

    const-string v6, "The inputted parameters is wrong!"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lenovo/lps/sus/b/j;->k:Z

    new-instance v2, Lcom/lenovo/lps/sus/b/m;

    const/4 v3, 0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/a;->d:Lcom/lenovo/lps/sus/b/a;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/lenovo/lps/sus/b/j;->h:Ljava/lang/String;

    sget-wide v12, Lcom/lenovo/lps/sus/b/j;->i:J

    sget-wide v14, Lcom/lenovo/lps/sus/b/j;->j:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->g()I

    move-result v26

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v31}, Lcom/lenovo/lps/sus/b/m;-><init>(ZLcom/lenovo/lps/sus/b/a;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZZZZZ)V

    sget-object v3, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)Lcom/lenovo/lps/sus/b/e;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/e;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static AsyncStartVersionUpdateByPackageName(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)J
    .locals 32

    const-string v2, "AsyncStartVersionUpdateByPackageName entry"

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const-wide/16 v2, -0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_INVALIDPARAM:Lcom/lenovo/lps/sus/EventType;

    const-string v6, "The inputted parameters is wrong!"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lenovo/lps/sus/b/j;->k:Z

    new-instance v2, Lcom/lenovo/lps/sus/b/m;

    const/4 v3, 0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/a;->c:Lcom/lenovo/lps/sus/b/a;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/lenovo/lps/sus/b/j;->h:Ljava/lang/String;

    sget-wide v12, Lcom/lenovo/lps/sus/b/j;->i:J

    sget-wide v14, Lcom/lenovo/lps/sus/b/j;->j:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->g()I

    move-result v26

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v6, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v31}, Lcom/lenovo/lps/sus/b/m;-><init>(ZLcom/lenovo/lps/sus/b/a;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZZZZZ)V

    sget-object v3, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)Lcom/lenovo/lps/sus/b/e;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/e;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static AsyncStartVersionUpdateByPackageNameExt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)J
    .locals 32

    const-string v2, "AsyncStartVersionUpdateByPackageNameExt entry"

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p4, :cond_0

    const/4 v2, 0x4

    move/from16 v0, p4

    if-ge v2, v0, :cond_1

    :cond_0
    const-wide/16 v2, -0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_INVALIDPARAM:Lcom/lenovo/lps/sus/EventType;

    const-string v6, "The inputted parameters is wrong!"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/lenovo/lps/sus/SUS;->setInstallType(I)V

    if-eqz p4, :cond_2

    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->silentUpdateEnable()V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/lenovo/lps/sus/b/j;->k:Z

    :goto_1
    new-instance v2, Lcom/lenovo/lps/sus/b/m;

    const/4 v3, 0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/a;->c:Lcom/lenovo/lps/sus/b/a;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/lenovo/lps/sus/b/j;->h:Ljava/lang/String;

    sget-wide v12, Lcom/lenovo/lps/sus/b/j;->i:J

    sget-wide v14, Lcom/lenovo/lps/sus/b/j;->j:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v6, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v26, p4

    invoke-direct/range {v2 .. v31}, Lcom/lenovo/lps/sus/b/m;-><init>(ZLcom/lenovo/lps/sus/b/a;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZZZZZ)V

    sget-object v3, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)Lcom/lenovo/lps/sus/b/e;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/e;)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->silentUpdateDisable()V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/lenovo/lps/sus/b/j;->k:Z

    goto :goto_1
.end method

.method public static AsyncStartVersionUpdate_IgnoreUserSettings(Landroid/content/Context;)J
    .locals 32

    const-string v2, "AsyncStartVersionUpdate_IgnoreUserSettings entry"

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-wide/16 v2, -0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_INVALIDPARAM:Lcom/lenovo/lps/sus/EventType;

    const-string v6, "The inputted parameters is wrong!"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lenovo/lps/sus/b/j;->k:Z

    new-instance v2, Lcom/lenovo/lps/sus/b/m;

    const/4 v3, 0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/a;->b:Lcom/lenovo/lps/sus/b/a;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/lenovo/lps/sus/b/j;->h:Ljava/lang/String;

    sget-wide v12, Lcom/lenovo/lps/sus/b/j;->i:J

    sget-wide v14, Lcom/lenovo/lps/sus/b/j;->j:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->g()I

    move-result v26

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x1

    invoke-direct/range {v2 .. v31}, Lcom/lenovo/lps/sus/b/m;-><init>(ZLcom/lenovo/lps/sus/b/a;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZZZZZ)V

    sget-object v3, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)Lcom/lenovo/lps/sus/b/e;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/e;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static downloadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 32

    const-string v2, "downloadApp entry"

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-static/range {p6 .. p6}, Lcom/lenovo/lps/sus/c/b;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-wide/16 v2, -0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_INVALIDPARAM:Lcom/lenovo/lps/sus/EventType;

    const-string v6, "The inputted parameters is wrong!"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lenovo/lps/sus/b/j;->k:Z

    new-instance v2, Lcom/lenovo/lps/sus/b/m;

    const/4 v3, 0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/a;->f:Lcom/lenovo/lps/sus/b/a;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/lenovo/lps/sus/b/j;->h:Ljava/lang/String;

    sget-wide v12, Lcom/lenovo/lps/sus/b/j;->i:J

    sget-wide v14, Lcom/lenovo/lps/sus/b/j;->j:J

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->g()I

    move-result v26

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    move-object/from16 v22, p6

    invoke-direct/range {v2 .. v31}, Lcom/lenovo/lps/sus/b/m;-><init>(ZLcom/lenovo/lps/sus/b/a;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZZZZZ)V

    sget-object v3, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)Lcom/lenovo/lps/sus/b/e;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/e;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static downloadAppExt(Landroid/content/Context;Ljava/lang/Object;)J
    .locals 32

    const-string v2, "downloadAppExt entry"

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-wide/16 v2, -0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_INVALIDPARAM:Lcom/lenovo/lps/sus/EventType;

    const-string v6, "The inputted parameters is wrong!"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lenovo/lps/sus/b/j;->k:Z

    new-instance v2, Lcom/lenovo/lps/sus/b/m;

    const/4 v3, 0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/a;->h:Lcom/lenovo/lps/sus/b/a;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/lenovo/lps/sus/b/j;->h:Ljava/lang/String;

    sget-wide v12, Lcom/lenovo/lps/sus/b/j;->i:J

    sget-wide v14, Lcom/lenovo/lps/sus/b/j;->j:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->g()I

    move-result v26

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v23, p1

    invoke-direct/range {v2 .. v31}, Lcom/lenovo/lps/sus/b/m;-><init>(ZLcom/lenovo/lps/sus/b/a;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZZZZZ)V

    sget-object v3, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)Lcom/lenovo/lps/sus/b/e;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/e;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static finish()V
    .locals 1

    const-string v0, "finish entry"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->c()V

    return-void
.end method

.method public static getAllPromptDisableFlag()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/b/j;->f:Z

    return v0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/h;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/lenovo/lps/sus/c/h;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "entry getDeviceID ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDownloadPath()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/lenovo/lps/sus/b/j;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/b/j;->h:Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "user getDownloadPath downloadPath="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNotificationProgressDisableFlag()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/b/j;->d:Z

    return v0
.end method

.method public static installApp(Landroid/content/Context;Ljava/lang/String;)J
    .locals 32

    const-string v2, "installApp entry"

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-wide/16 v2, -0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_INVALIDPARAM:Lcom/lenovo/lps/sus/EventType;

    const-string v6, "The inputted parameters is wrong!"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lenovo/lps/sus/b/j;->k:Z

    new-instance v2, Lcom/lenovo/lps/sus/b/m;

    const/4 v3, 0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/a;->i:Lcom/lenovo/lps/sus/b/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/lenovo/lps/sus/b/j;->h:Ljava/lang/String;

    sget-wide v12, Lcom/lenovo/lps/sus/b/j;->i:J

    sget-wide v14, Lcom/lenovo/lps/sus/b/j;->j:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->g()I

    move-result v26

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, p1

    invoke-direct/range {v2 .. v31}, Lcom/lenovo/lps/sus/b/m;-><init>(ZLcom/lenovo/lps/sus/b/a;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZZZZZ)V

    sget-object v3, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)Lcom/lenovo/lps/sus/b/e;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/e;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static installAppExt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 32

    const-string v2, "installAppExt entry"

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-ltz p3, :cond_0

    const/4 v2, 0x4

    move/from16 v0, p3

    if-ge v2, v0, :cond_1

    :cond_0
    const-wide/16 v2, -0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_INVALIDPARAM:Lcom/lenovo/lps/sus/EventType;

    const-string v6, "The inputted parameters is wrong!"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lenovo/lps/sus/b/j;->k:Z

    new-instance v2, Lcom/lenovo/lps/sus/b/m;

    const/4 v3, 0x1

    sget-object v4, Lcom/lenovo/lps/sus/b/a;->i:Lcom/lenovo/lps/sus/b/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/lenovo/lps/sus/b/j;->h:Ljava/lang/String;

    sget-wide v12, Lcom/lenovo/lps/sus/b/j;->i:J

    sget-wide v14, Lcom/lenovo/lps/sus/b/j;->j:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, p1

    move-object/from16 v25, p2

    move/from16 v26, p3

    invoke-direct/range {v2 .. v31}, Lcom/lenovo/lps/sus/b/m;-><init>(ZLcom/lenovo/lps/sus/b/a;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZZZZZ)V

    sget-object v3, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)Lcom/lenovo/lps/sus/b/e;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/e;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static isVersionUpdateStarted()Z
    .locals 1

    const-string v0, "isVersionUpdateStarted entry"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lenovo/lps/sus/a/i;->a(Z)Z

    move-result v0

    return v0
.end method

.method public static setAllPrompt2ActivityDisableFlag(Z)V
    .locals 2

    sput-boolean p0, Lcom/lenovo/lps/sus/b/j;->m:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAllPrompt2ActivityDisableFlag isSilentUpdateEnableFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setAllPromptDisableFlag(Z)V
    .locals 2

    sput-boolean p0, Lcom/lenovo/lps/sus/b/j;->f:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isAllPromptDisableFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setCheckNetworkMode(IZ)V
    .locals 1

    const-string/jumbo v0, "setCheckNetworkMode entry"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/lenovo/lps/sus/SUSSetting;->setCheckNetworkMode(IZ)V

    return-void
.end method

.method public static setCustDefActivityContextEnableFlag(ZLandroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "setCustDefActivityContextEnableFlag entry"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/lenovo/lps/sus/a/j;->a(ZLandroid/content/Context;)V

    return-void
.end method

.method public static setCustomDefNotificationActivityFlag(Z)V
    .locals 2

    sput-boolean p0, Lcom/lenovo/lps/sus/b/j;->n:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isCustomDefineNotificationActivityFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setDebugModeFlag(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setDebugModeFlag debugMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lenovo/lps/sus/SUSSetting;->setDebugModeFlag(Z)V

    return-void
.end method

.method public static setDevMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setDevMode modeId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lenovo/lps/sus/SUSSetting;->setDevMode(I)V

    return-void
.end method

.method public static setDownloadPath(Ljava/lang/String;JJ)V
    .locals 3

    const-string/jumbo v0, "setDownloadPath entry"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    sput-object p0, Lcom/lenovo/lps/sus/b/j;->h:Ljava/lang/String;

    sput-wide p1, Lcom/lenovo/lps/sus/b/j;->i:J

    sput-wide p3, Lcom/lenovo/lps/sus/b/j;->j:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "user setDownloadPath downloadPath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; availableSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; reservedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setInstallType(I)V
    .locals 2

    sput p0, Lcom/lenovo/lps/sus/b/j;->l:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "installType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/lenovo/lps/sus/b/j;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setNotificationActivityDisableFlag(Z)V
    .locals 1

    const-string/jumbo v0, "setNotificationActivityDisableFlag entry"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lenovo/lps/sus/SUS;->setSDKRetry2ErrorInfoActivityPromptDisableFlag(Z)V

    return-void
.end method

.method public static setNotificationProgressDisableFlag(Z)V
    .locals 2

    sput-boolean p0, Lcom/lenovo/lps/sus/b/j;->d:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isNotificationProgressDisableFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setPatchUpdateEnableFlag(Z)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/b;->b(Z)V

    return-void
.end method

.method public static setSDKDisableFlag(Z)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/lps/sus/a/j;->b(Z)V

    return-void
.end method

.method public static setSDKPromptDisableFlag(Z)V
    .locals 1

    const-string/jumbo v0, "setSDKPromptDisableFlag entry"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lenovo/lps/sus/SUS;->setSDKToastPromptDisableFlag(Z)V

    return-void
.end method

.method public static setSDKRetry2ErrorInfoActivityPromptDisableFlag(Z)V
    .locals 2

    sput-boolean p0, Lcom/lenovo/lps/sus/b/j;->e:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isSDKRetry2ErrorInfoActivityPromptDisableFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setSDKToastPromptDisableFlag(Z)V
    .locals 2

    sput-boolean p0, Lcom/lenovo/lps/sus/b/j;->c:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isToastPromptDisableFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setSUSListener(Lcom/lenovo/lps/sus/SUSListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSUSListener susListener="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    sput-object p0, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    return-void
.end method

.method public static setUpdateDescribeDisableFlag(Z)V
    .locals 2

    sput-boolean p0, Lcom/lenovo/lps/sus/b/j;->g:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isUpdateDescribeDisableFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setUpdateOnlyWLAN(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setUpdateOnlyWLAN isOnlyWLAN="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lenovo/lps/sus/SUSSetting;->setUpdateOnlyWLAN(Z)V

    return-void
.end method

.method public static setUserSettingsEnableFlag(Z)V
    .locals 1

    const-string/jumbo v0, "setUserSettingsEnableFlag entry"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/b;->a(Z)V

    return-void
.end method

.method private static silentUpdateDisable()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/lps/sus/b/j;->m:Z

    const-string v0, "isSilentUpdateEnableFlag=false"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static silentUpdateEnable()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/lps/sus/b/j;->m:Z

    const-string v0, "isSilentUpdateEnableFlag=true"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static testSUSServer(Landroid/content/Context;)J
    .locals 3

    const-string/jumbo v0, "testSUSServer entry"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    new-instance v2, Lcom/lenovo/lps/sus/a/f;

    invoke-direct {v2}, Lcom/lenovo/lps/sus/a/f;-><init>()V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/lenovo/lps/sus/a/f;->start()V

    invoke-virtual {v2}, Lcom/lenovo/lps/sus/a/f;->a()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method
