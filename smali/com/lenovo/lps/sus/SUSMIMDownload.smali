.class public Lcom/lenovo/lps/sus/SUSMIMDownload;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/lenovo/lps/sus/b/e;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/lenovo/lps/sus/SUSListener;)V
    .locals 32

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/lps/sus/SUSMIMDownload;->b:Ljava/lang/String;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/lps/sus/SUSMIMDownload;->c:J

    sget-object v2, Lcom/lenovo/lps/sus/c/e;->n:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/lps/sus/SUSMIMDownload;->d:J

    const-string v2, "SUSMIMDownload downloadObject constructor"

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/lenovo/lps/sus/QueryResult;

    if-nez v2, :cond_1

    :cond_0
    const-wide/16 v2, -0x1

    sget-object v5, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_INVALIDPARAM:Lcom/lenovo/lps/sus/EventType;

    const-string v6, "The inputted parameters is wrong!"

    const/4 v7, 0x0

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v7}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/lenovo/lps/sus/b/m;

    const/4 v3, 0x0

    sget-object v4, Lcom/lenovo/lps/sus/b/a;->h:Lcom/lenovo/lps/sus/b/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/lps/sus/SUSMIMDownload;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lenovo/lps/sus/SUSMIMDownload;->c:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lenovo/lps/sus/SUSMIMDownload;->d:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v23, p2

    invoke-direct/range {v2 .. v31}, Lcom/lenovo/lps/sus/b/m;-><init>(ZLcom/lenovo/lps/sus/b/a;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZZZZZ)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)Lcom/lenovo/lps/sus/b/e;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    iget-wide v0, v0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->a(J)V

    :cond_0
    return-void
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/k;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUpdateAffairId()J
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/e;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public isWorking()Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/k;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()J
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/k;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public resume()J
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/e;->g()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setDownloadPath(Ljava/lang/String;J)V
    .locals 2

    iput-object p1, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->b:Ljava/lang/String;

    iput-wide p2, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->c:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-object p1, v0, Lcom/lenovo/lps/sus/b/k;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-wide p2, v0, Lcom/lenovo/lps/sus/b/k;->m:J

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lenovo/lps/sus/b/k;->k:Z

    :cond_0
    return-void
.end method

.method public setMinReservedSize(J)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    iput-wide p1, v0, Lcom/lenovo/lps/sus/b/k;->n:J

    :cond_0
    return-void
.end method

.method public start()J
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/sus/SUSMIMDownload;->a:Lcom/lenovo/lps/sus/b/e;

    invoke-static {v0}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/e;)J

    move-result-wide v0

    return-wide v0
.end method
