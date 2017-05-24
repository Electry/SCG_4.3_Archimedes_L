.class public Lcom/lenovo/lps/sus/a/g;
.super Ljava/lang/Thread;


# instance fields
.field private a:J

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/lps/sus/a/g;->a:J

    iput-object v3, p0, Lcom/lenovo/lps/sus/a/g;->b:Landroid/content/Context;

    iput-object v3, p0, Lcom/lenovo/lps/sus/a/g;->c:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/lenovo/lps/sus/a/g;->d:Z

    iput-boolean v2, p0, Lcom/lenovo/lps/sus/a/g;->e:Z

    iput v2, p0, Lcom/lenovo/lps/sus/a/g;->f:I

    iput-object p1, p0, Lcom/lenovo/lps/sus/a/g;->b:Landroid/content/Context;

    iput-wide p2, p0, Lcom/lenovo/lps/sus/a/g;->a:J

    iput-object p4, p0, Lcom/lenovo/lps/sus/a/g;->c:Ljava/lang/String;

    iput p5, p0, Lcom/lenovo/lps/sus/a/g;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstallThread constructor,InstallType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/lenovo/lps/sus/a/g;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/sus/a/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; affairId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lenovo/lps/sus/a/g;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pm install -r "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pm install -r "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [B

    :cond_0
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v3, v4, :cond_2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_1
    :goto_1
    return v0

    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v4}, Ljava/lang/String;-><init>([BII)V

    const-string v4, "Success"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OK! cmd=pm install -r "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_2
    throw v0

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/lenovo/lps/sus/c/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/lenovo/lps/sus/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "run InstallThread affairId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/lenovo/lps/sus/a/g;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iget v2, p0, Lcom/lenovo/lps/sus/a/g;->f:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/lps/sus/a/g;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->s:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v1}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-wide v2, p0, Lcom/lenovo/lps/sus/a/g;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "bSilenceInstallSuccessFlag"

    iget-boolean v3, p0, Lcom/lenovo/lps/sus/a/g;->e:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/lenovo/lps/sus/a/i;->j(Landroid/os/Message;)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/lps/sus/a/g;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/lps/sus/a/g;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iput-boolean v0, p0, Lcom/lenovo/lps/sus/a/g;->d:Z

    iget-object v2, p0, Lcom/lenovo/lps/sus/a/g;->b:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/g;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/sus/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/a/g;->e:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_2
    iput-boolean v0, p0, Lcom/lenovo/lps/sus/a/g;->d:Z

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/g;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/sus/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/a/g;->e:Z

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/a/g;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/g;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/lps/sus/a/g;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iput-boolean v0, p0, Lcom/lenovo/lps/sus/a/g;->d:Z

    iget-object v2, p0, Lcom/lenovo/lps/sus/a/g;->b:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/g;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/sus/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/a/g;->e:Z

    :cond_3
    iget-boolean v0, p0, Lcom/lenovo/lps/sus/a/g;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/g;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/lps/sus/a/g;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
