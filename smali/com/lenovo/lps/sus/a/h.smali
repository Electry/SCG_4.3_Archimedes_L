.class public Lcom/lenovo/lps/sus/a/h;
.super Ljava/lang/Thread;


# static fields
.field private static final a:I = 0xc8

.field private static final b:I = 0xce


# instance fields
.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Lorg/apache/http/params/HttpParams;

.field private h:Lorg/apache/http/client/methods/HttpGet;

.field private i:Lorg/apache/http/client/HttpClient;

.field private j:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/lps/sus/a/h;->c:J

    iput-object v2, p0, Lcom/lenovo/lps/sus/a/h;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/lps/sus/a/h;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/lps/sus/a/h;->f:J

    iput-object v2, p0, Lcom/lenovo/lps/sus/a/h;->g:Lorg/apache/http/params/HttpParams;

    iput-object v2, p0, Lcom/lenovo/lps/sus/a/h;->h:Lorg/apache/http/client/methods/HttpGet;

    iput-object v2, p0, Lcom/lenovo/lps/sus/a/h;->i:Lorg/apache/http/client/HttpClient;

    iput-object v2, p0, Lcom/lenovo/lps/sus/a/h;->j:Lorg/apache/http/HttpResponse;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreDownloadThread constructor updateAffairId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/lenovo/lps/sus/a/h;->c:J

    iput-object p3, p0, Lcom/lenovo/lps/sus/a/h;->d:Ljava/lang/String;

    return-void
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/h;->h:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/h;->h:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/h;->h:Lorg/apache/http/client/methods/HttpGet;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/h;->i:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/h;->i:Lorg/apache/http/client/HttpClient;

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/h;->j:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/lenovo/lps/sus/a/h;->j:Lorg/apache/http/HttpResponse;

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "exit GetFileInfoThread"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 6

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/h;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/h;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/h;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/sus/a/h;->g:Lorg/apache/http/params/HttpParams;

    const/16 v0, 0x1770

    iget-object v1, p0, Lcom/lenovo/lps/sus/a/h;->g:Lorg/apache/http/params/HttpParams;

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/h;->g:Lorg/apache/http/params/HttpParams;

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lcom/lenovo/lps/sus/a/h;->g:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/lenovo/lps/sus/a/h;->i:Lorg/apache/http/client/HttpClient;

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/lenovo/lps/sus/a/h;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/lps/sus/a/h;->h:Lorg/apache/http/client/methods/HttpGet;

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/h;->i:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lcom/lenovo/lps/sus/a/h;->h:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/a/h;->j:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/h;->j:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/lenovo/lps/sus/a/h;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/h;->j:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xce

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lcom/lenovo/lps/sus/a/h;->b()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/h;->j:Lorg/apache/http/HttpResponse;

    const-string v1, "Content-Disposition"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    :try_start_1
    const-string v1, "filename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/a/h;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/h;->j:Lorg/apache/http/HttpResponse;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/b;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/sus/a/h;->f:J

    :cond_5
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/h;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/lenovo/lps/sus/a/h;->f:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->k:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v1}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UpdateAffairId"

    iget-wide v4, p0, Lcom/lenovo/lps/sus/a/h;->c:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fileSize"

    iget-wide v4, p0, Lcom/lenovo/lps/sus/a/h;->f:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fileName"

    iget-object v3, p0, Lcom/lenovo/lps/sus/a/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lenovo/lps/sus/a/i;->j(Landroid/os/Message;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method
