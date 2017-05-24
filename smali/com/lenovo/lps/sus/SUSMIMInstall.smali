.class public Lcom/lenovo/lps/sus/SUSMIMInstall;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/lenovo/lps/sus/b/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/lenovo/lps/sus/SUSListener;)V
    .locals 32

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/lps/sus/SUSMIMInstall;->a:Lcom/lenovo/lps/sus/b/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SUSMIMInstall constructor,path2fileName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; installType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    const/4 v2, 0x4

    move/from16 v0, p3

    if-le v0, v2, :cond_1

    :cond_0
    const-wide/16 v2, -0x1

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_INVALIDPARAM:Lcom/lenovo/lps/sus/EventType;

    const-string v6, "The inputted parameters is wrong!"

    const/4 v7, 0x0

    move-object/from16 v4, p4

    invoke-static/range {v2 .. v7}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/lenovo/lps/sus/b/m;

    const/4 v3, 0x0

    sget-object v4, Lcom/lenovo/lps/sus/b/a;->i:Lcom/lenovo/lps/sus/b/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, p2

    move/from16 v26, p3

    invoke-direct/range {v2 .. v31}, Lcom/lenovo/lps/sus/b/m;-><init>(ZLcom/lenovo/lps/sus/b/a;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZZZZZ)V

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)Lcom/lenovo/lps/sus/b/e;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/lps/sus/SUSMIMInstall;->a:Lcom/lenovo/lps/sus/b/e;

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMInstall;->a:Lcom/lenovo/lps/sus/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMInstall;->a:Lcom/lenovo/lps/sus/b/e;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/e;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMInstall;->a:Lcom/lenovo/lps/sus/b/e;

    :cond_0
    return-void
.end method

.method public getUpdateAffairId()J
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMInstall;->a:Lcom/lenovo/lps/sus/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMInstall;->a:Lcom/lenovo/lps/sus/b/e;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/e;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public start()J
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMInstall;->a:Lcom/lenovo/lps/sus/b/e;

    invoke-static {v0}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/e;)J

    move-result-wide v0

    return-wide v0
.end method
