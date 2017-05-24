.class public Lcom/lenovo/lps/sus/a/e;
.super Ljava/lang/Thread;


# static fields
.field private static final a:I = 0xc8

.field private static final b:I = 0xce

.field private static final c:I = 0x1eb


# instance fields
.field private d:J

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:J

.field private m:I

.field private n:Lorg/apache/http/params/HttpParams;

.field private o:Lorg/apache/http/client/methods/HttpGet;

.field private p:Lorg/apache/http/client/HttpClient;

.field private q:Lorg/apache/http/HttpResponse;

.field private r:Ljava/io/InputStream;

.field private s:Ljava/io/FileOutputStream;

.field private t:Lorg/apache/http/Header;


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/lenovo/lps/sus/a/e;->d:J

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/a/e;->e:Z

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/e;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/e;->g:Ljava/lang/String;

    iput-wide v4, p0, Lcom/lenovo/lps/sus/a/e;->h:J

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/e;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/e;->j:Ljava/lang/String;

    iput v0, p0, Lcom/lenovo/lps/sus/a/e;->k:I

    iput-wide v4, p0, Lcom/lenovo/lps/sus/a/e;->l:J

    iput v0, p0, Lcom/lenovo/lps/sus/a/e;->m:I

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/e;->n:Lorg/apache/http/params/HttpParams;

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/e;->o:Lorg/apache/http/client/methods/HttpGet;

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/e;->p:Lorg/apache/http/client/HttpClient;

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/e;->q:Lorg/apache/http/HttpResponse;

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/e;->r:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/e;->s:Ljava/io/FileOutputStream;

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/e;->t:Lorg/apache/http/Header;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadThread constructor updateAffairId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/lenovo/lps/sus/a/e;->d:J

    if-ltz p3, :cond_0

    :goto_0
    iput p3, p0, Lcom/lenovo/lps/sus/a/e;->k:I

    iput-object p4, p0, Lcom/lenovo/lps/sus/a/e;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/lenovo/lps/sus/a/e;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/lenovo/lps/sus/a/e;->i:Ljava/lang/String;

    iput-wide p6, p0, Lcom/lenovo/lps/sus/a/e;->h:J

    return-void

    :cond_0
    move p3, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;IJJLjava/lang/String;J)V
    .locals 9

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    if-eqz v2, :cond_0

    sget-object v3, Lcom/lenovo/lps/sus/b/b;->q:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v3}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v3

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "UpdateAffairId"

    iget-wide v6, p0, Lcom/lenovo/lps/sus/a/e;->d:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "downloadFailNum"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "dualtime"

    invoke-virtual {v3, v4, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "downloadsize"

    invoke-virtual {v3, v4, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "downloadType"

    move-object/from16 v0, p7

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "downloadedfileSize"

    move-wide/from16 v0, p8

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {v2}, Lcom/lenovo/lps/sus/a/i;->j(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;JJLjava/lang/String;Z)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p2

    if-nez p7, :cond_0

    iget v6, p0, Lcom/lenovo/lps/sus/a/e;->m:I

    int-to-long v6, v6

    mul-long v6, v6, p4

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    iget-wide v6, p0, Lcom/lenovo/lps/sus/a/e;->l:J

    const-wide/16 v8, 0x190

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    :cond_0
    div-long v2, v2, p4

    long-to-int v3, v2

    const/16 v2, 0x64

    if-le v3, v2, :cond_3

    const/16 v2, 0x64

    :goto_0
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    if-eqz v6, :cond_1

    sget-object v7, Lcom/lenovo/lps/sus/b/b;->o:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v7}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v7

    iput v7, v6, Landroid/os/Message;->what:I

    invoke-virtual {v6}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "UpdateAffairId"

    iget-wide v10, p0, Lcom/lenovo/lps/sus/a/e;->d:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v6}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "progress"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v6}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "filesize"

    move-wide/from16 v0, p4

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v6}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "filename"

    invoke-virtual {v2, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "downloadsize"

    invoke-virtual {v2, v7, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v6}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "downloadType"

    move-object/from16 v0, p6

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/lenovo/lps/sus/a/i;->j(Landroid/os/Message;)V

    :cond_1
    iput v3, p0, Lcom/lenovo/lps/sus/a/e;->m:I

    iput-wide v4, p0, Lcom/lenovo/lps/sus/a/e;->l:J

    :cond_2
    return-void

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private a(ZJ)V
    .locals 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    if-eqz v0, :cond_0

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->e:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v1}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UpdateAffairId"

    iget-wide v4, p0, Lcom/lenovo/lps/sus/a/e;->d:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DownloadByteSize"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/lenovo/lps/sus/a/i;->j(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/e;->r:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/e;->r:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lps/sus/a/e;->r:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/e;->s:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/e;->s:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lps/sus/a/e;->s:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/e;->o:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/e;->o:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/e;->o:Lorg/apache/http/client/methods/HttpGet;

    :cond_2
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/e;->p:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/e;->p:Lorg/apache/http/client/HttpClient;

    :cond_3
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/e;->q:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/e;->q:Lorg/apache/http/HttpResponse;

    :cond_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "exit DLThread"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/a/e;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "finish DLThread"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/a/e;->e:Z

    return-void
.end method

.method public run()V
    .locals 31

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v16, 0x1eb

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v20, 0x0

    const-string v10, "CONTINUEDL"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/a/e;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/a/e;->g:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/a/e;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/a/e;->f:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/a/e;->i:Ljava/lang/String;

    if-nez v2, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/lps/sus/a/e;->c()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/lps/sus/a/e;->e:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v15}, Lcom/lenovo/lps/sus/a/e;->a(ZJ)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/a/e;->f:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/a/e;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/lps/sus/a/e;->j:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/lps/sus/a/e;->n:Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/lps/sus/a/e;->k:I

    mul-int/lit16 v2, v2, 0x3e8

    add-int/lit16 v2, v2, 0x1770

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/a/e;->n:Lorg/apache/http/params/HttpParams;

    invoke-static {v3, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/lps/sus/a/e;->n:Lorg/apache/http/params/HttpParams;

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v3, 0x800

    :try_start_0
    new-array v0, v3, [B

    move-object/from16 v28, v0

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/a/e;->j:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/lps/sus/a/e;->h:J

    cmp-long v4, v11, v4

    if-nez v4, :cond_4

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/lps/sus/a/e;->h:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/lps/sus/a/e;->c()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/a/e;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/lps/sus/a/e;->k:I

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/lenovo/lps/sus/a/e;->a(Ljava/lang/String;IJJLjava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/lps/sus/a/e;->c()V

    goto/16 :goto_0

    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/lps/sus/a/e;->h:J

    cmp-long v4, v11, v4

    if-lez v4, :cond_9

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/lps/sus/a/e;->h:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lenovo/lps/sus/a/e;->k:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v11, v2

    move-wide/from16 v12, v20

    :goto_1
    if-nez v11, :cond_1c

    :try_start_3
    const-string v8, "FIRSTDL"
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/lps/sus/a/e;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1b

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/lps/sus/a/e;->h:J
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long v2, v2, v12

    if-ltz v2, :cond_1b

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_a

    move-wide v4, v12

    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/a/e;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/lps/sus/a/e;->h:J

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lenovo/lps/sus/a/e;->a(Ljava/lang/String;JJLjava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_11
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-wide v2, v4

    :goto_4
    if-eqz v11, :cond_5

    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/a/e;->o:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v4, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/lps/sus/a/e;->c()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/a/e;->o:Lorg/apache/http/client/methods/HttpGet;

    if-nez v4, :cond_6

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/a/e;->g:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/lps/sus/a/e;->o:Lorg/apache/http/client/methods/HttpGet;

    :cond_6
    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/a/e;->o:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/a/e;->o:Lorg/apache/http/client/methods/HttpGet;

    const-string v5, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bytes="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/lps/sus/a/e;->p:Lorg/apache/http/client/HttpClient;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/lps/sus/a/e;->q:Lorg/apache/http/HttpResponse;

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/a/e;->p:Lorg/apache/http/client/HttpClient;

    if-nez v4, :cond_8

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/a/e;->n:Lorg/apache/http/params/HttpParams;

    invoke-direct {v4, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/lps/sus/a/e;->p:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/a/e;->p:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/a/e;->o:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/lps/sus/a/e;->q:Lorg/apache/http/HttpResponse;

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/a/e;->q:Lorg/apache/http/HttpResponse;
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1a
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v4, :cond_b

    move-wide v4, v14

    move-wide v6, v2

    move/from16 v9, v16

    move-wide v2, v12

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/lps/sus/a/e;->c()V

    move-wide/from16 v11, v18

    move-object v10, v8

    move/from16 v16, v9

    move-wide v8, v6

    :goto_6
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/lps/sus/a/e;->h:J

    cmp-long v6, v2, v6

    if-nez v6, :cond_16

    const/16 v6, 0xc8

    move/from16 v0, v16

    if-ne v6, v0, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/a/e;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/lps/sus/a/e;->k:I

    sub-long v6, v2, v26

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/lenovo/lps/sus/a/e;->a(Ljava/lang/String;IJJLjava/lang/String;J)V

    goto/16 :goto_0

    :cond_9
    const-wide/16 v4, 0x0

    cmp-long v3, v4, v11

    if-gez v3, :cond_1d

    const/4 v2, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/lps/sus/a/e;->k:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lenovo/lps/sus/a/e;->k:I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-wide/from16 v18, v11

    move-wide/from16 v29, v11

    move-wide/from16 v12, v29

    move v11, v2

    goto/16 :goto_1

    :cond_a
    const-wide/16 v4, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v4

    move-wide v4, v14

    move-wide v6, v2

    move/from16 v9, v16

    move-wide v2, v12

    goto :goto_5

    :catch_1
    move-exception v4

    move-wide v4, v14

    move-wide v6, v2

    move/from16 v9, v16

    move-wide v2, v12

    goto :goto_5

    :catch_2
    move-exception v4

    move-wide v4, v14

    move-wide v6, v2

    move/from16 v9, v16

    move-wide v2, v12

    goto :goto_5

    :catch_3
    move-exception v4

    move-wide v4, v14

    move-wide v6, v2

    move/from16 v9, v16

    move-wide v2, v12

    goto :goto_5

    :cond_b
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/a/e;->q:Lorg/apache/http/HttpResponse;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0x1f7

    if-ne v4, v5, :cond_c

    move-wide v4, v14

    move-wide v6, v2

    move/from16 v9, v16

    move-wide v2, v12

    goto :goto_5

    :cond_c
    if-nez v11, :cond_d

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_e

    :cond_d
    if-eqz v11, :cond_f

    const/16 v5, 0xce

    if-eq v4, v5, :cond_f

    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for download "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/lps/sus/a/e;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    move-wide v4, v14

    move-wide v6, v2

    move/from16 v9, v16

    move-wide v2, v12

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/a/e;->q:Lorg/apache/http/HttpResponse;

    const-string v5, "Content-Length"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/lps/sus/a/e;->t:Lorg/apache/http/Header;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/a/e;->t:Lorg/apache/http/Header;

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/a/e;->t:Lorg/apache/http/Header;

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v6, v12

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/lenovo/lps/sus/a/e;->h:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "fileSize error!!! fileSize=%d"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/lps/sus/a/e;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; contentLength=%d"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/sus/c/j;->b(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/lps/sus/a/e;->c()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lenovo/lps/sus/a/e;->e:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lcom/lenovo/lps/sus/a/e;->a(ZJ)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/lps/sus/a/e;->c()V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v17, v4

    :cond_11
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/lps/sus/a/e;->q:Lorg/apache/http/HttpResponse;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/lps/sus/a/e;->r:Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1a
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-wide v6, v14

    move-wide/from16 v10, v24

    move-wide v4, v2

    move-wide v2, v12

    :goto_7
    :try_start_a
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/lenovo/lps/sus/a/e;->e:Z

    if-eqz v9, :cond_12

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "exit isKillThreadFlag by isKillThreadFlag, flag="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/lenovo/lps/sus/a/e;->e:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_13
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move/from16 v9, v16

    move-wide/from16 v29, v4

    move-wide v4, v6

    move-wide/from16 v6, v29

    goto/16 :goto_5

    :catch_4
    move-exception v4

    move-wide v4, v14

    move-wide v6, v2

    move/from16 v9, v16

    move-wide v2, v12

    goto/16 :goto_5

    :catch_5
    move-exception v4

    move-wide v4, v14

    move-wide v6, v2

    move/from16 v9, v16

    move-wide v2, v12

    goto/16 :goto_5

    :cond_12
    :try_start_b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/lps/sus/a/e;->r:Ljava/io/InputStream;

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v9

    const/4 v12, -0x1

    if-ne v9, v12, :cond_13

    :try_start_c
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "download end!,bytesRead="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; bytesSoFar="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; hCLength="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/a/e;->g:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/lenovo/lps/sus/a/e;->h:J

    cmp-long v9, v2, v10

    if-nez v9, :cond_15

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "download completed for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/a/e;->g:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_13
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/16 v9, 0xc8

    move-wide/from16 v29, v6

    move-wide v6, v4

    move-wide/from16 v4, v29

    goto/16 :goto_5

    :catch_6
    move-exception v9

    move/from16 v9, v16

    move-wide/from16 v29, v4

    move-wide v4, v6

    move-wide/from16 v6, v29

    goto/16 :goto_5

    :catch_7
    move-exception v9

    move/from16 v9, v16

    move-wide/from16 v29, v4

    move-wide v4, v6

    move-wide/from16 v6, v29

    goto/16 :goto_5

    :cond_13
    :try_start_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/lps/sus/a/e;->s:Ljava/io/FileOutputStream;

    if-nez v12, :cond_14

    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/lps/sus/a/e;->j:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lenovo/lps/sus/a/e;->s:Ljava/io/FileOutputStream;

    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/lps/sus/a/e;->s:Ljava/io/FileOutputStream;

    const/4 v13, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v12, v0, v13, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1b
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    int-to-long v4, v9

    add-long/2addr v4, v2

    int-to-long v2, v9

    add-long v14, v6, v2

    sub-long v2, v4, v10

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_1a

    const/4 v6, 0x7

    shl-long/2addr v2, v6

    :try_start_e
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/lps/sus/a/e;->h:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/a/e;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/lps/sus/a/e;->h:J

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/lenovo/lps/sus/a/e;->a(Ljava/lang/String;JJLjava/lang/String;Z)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_14
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-wide v2, v4

    move-wide v6, v14

    move-wide v10, v4

    goto/16 :goto_7

    :catch_8
    move-exception v9

    move/from16 v9, v16

    move-wide/from16 v29, v4

    move-wide v4, v6

    move-wide/from16 v6, v29

    goto/16 :goto_5

    :catch_9
    move-exception v9

    move/from16 v9, v16

    move-wide/from16 v29, v4

    move-wide v4, v6

    move-wide/from16 v6, v29

    goto/16 :goto_5

    :cond_15
    :try_start_f
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/lenovo/lps/sus/a/e;->h:J

    cmp-long v9, v2, v10

    if-lez v9, :cond_19

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "download fail!!! bytesSoFar="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; mFileSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/lenovo/lps/sus/a/e;->h:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/lps/sus/a/e;->g:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lenovo/lps/sus/c/j;->b(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_13
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move/from16 v9, v16

    move-wide/from16 v29, v4

    move-wide v4, v6

    move-wide/from16 v6, v29

    goto/16 :goto_5

    :catch_a
    move-exception v2

    move-wide/from16 v11, v18

    move-wide/from16 v2, v20

    move-wide v4, v14

    move-wide/from16 v8, v22

    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/lps/sus/a/e;->c()V

    goto/16 :goto_6

    :catch_b
    move-exception v2

    move-wide/from16 v11, v18

    move-wide/from16 v2, v20

    move-wide v4, v14

    move-wide/from16 v8, v22

    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/lps/sus/a/e;->c()V

    goto/16 :goto_6

    :catchall_0
    move-exception v2

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/lps/sus/a/e;->c()V

    throw v2

    :cond_16
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/lps/sus/a/e;->h:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_18

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/a/e;->j:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dl fail! delete the file! file="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/lps/sus/a/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->b(Ljava/lang/String;)V

    :cond_18
    const-wide/16 v2, 0x7d0

    :try_start_10
    invoke-static {v2, v3}, Lcom/lenovo/lps/sus/a/e;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_c

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/lps/sus/a/e;->e:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/lenovo/lps/sus/a/e;->a(ZJ)V

    goto/16 :goto_0

    :catch_c
    move-exception v2

    goto :goto_a

    :catch_d
    move-exception v2

    move-wide/from16 v2, v20

    move-wide v4, v14

    move-wide/from16 v8, v22

    goto :goto_9

    :catch_e
    move-exception v2

    move-wide v2, v11

    move-wide v4, v14

    move-wide/from16 v8, v22

    goto :goto_9

    :catch_f
    move-exception v2

    move-wide v2, v12

    move-wide v4, v14

    move-wide/from16 v8, v22

    move-wide/from16 v11, v18

    goto :goto_9

    :catch_10
    move-exception v2

    move-object v10, v8

    move-wide v2, v12

    move-wide v4, v14

    move-wide/from16 v11, v18

    move-wide/from16 v8, v22

    goto :goto_9

    :catch_11
    move-exception v2

    move-object v10, v8

    move-wide v2, v12

    move-wide/from16 v11, v18

    move-wide v8, v4

    move-wide v4, v14

    goto :goto_9

    :catch_12
    move-exception v4

    move-object v10, v8

    move-wide v4, v14

    move-wide v8, v2

    move-wide v2, v12

    move-wide/from16 v11, v18

    goto :goto_9

    :catch_13
    move-exception v9

    move-wide/from16 v11, v18

    move-object v10, v8

    move-wide v8, v4

    move-wide v4, v6

    goto/16 :goto_9

    :catch_14
    move-exception v2

    move-wide/from16 v11, v18

    move-object v10, v8

    move-wide v2, v4

    move-wide v8, v4

    move-wide v4, v14

    goto/16 :goto_9

    :catch_15
    move-exception v2

    move-wide/from16 v2, v20

    move-wide v4, v14

    move-wide/from16 v8, v22

    goto/16 :goto_8

    :catch_16
    move-exception v2

    move-wide v2, v11

    move-wide v4, v14

    move-wide/from16 v8, v22

    goto/16 :goto_8

    :catch_17
    move-exception v2

    move-wide v2, v12

    move-wide v4, v14

    move-wide/from16 v8, v22

    move-wide/from16 v11, v18

    goto/16 :goto_8

    :catch_18
    move-exception v2

    move-object v10, v8

    move-wide v2, v12

    move-wide v4, v14

    move-wide/from16 v11, v18

    move-wide/from16 v8, v22

    goto/16 :goto_8

    :catch_19
    move-exception v2

    move-object v10, v8

    move-wide v2, v12

    move-wide/from16 v11, v18

    move-wide v8, v4

    move-wide v4, v14

    goto/16 :goto_8

    :catch_1a
    move-exception v4

    move-object v10, v8

    move-wide v4, v14

    move-wide v8, v2

    move-wide v2, v12

    move-wide/from16 v11, v18

    goto/16 :goto_8

    :catch_1b
    move-exception v9

    move-wide/from16 v11, v18

    move-object v10, v8

    move-wide v8, v4

    move-wide v4, v6

    goto/16 :goto_8

    :catch_1c
    move-exception v2

    move-wide/from16 v11, v18

    move-object v10, v8

    move-wide v2, v4

    move-wide v8, v4

    move-wide v4, v14

    goto/16 :goto_8

    :cond_19
    move/from16 v9, v16

    move-wide/from16 v29, v4

    move-wide v4, v6

    move-wide/from16 v6, v29

    goto/16 :goto_5

    :cond_1a
    move-wide v2, v4

    move-wide v6, v14

    goto/16 :goto_7

    :cond_1b
    move-wide/from16 v2, v22

    goto/16 :goto_4

    :cond_1c
    move-object v8, v10

    goto/16 :goto_2

    :cond_1d
    move v11, v2

    move-wide/from16 v12, v20

    goto/16 :goto_1
.end method
