.class public Lcom/lenovo/lps/sus/a/f;
.super Ljava/lang/Thread;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/lps/sus/a/f;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/sus/a/f;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/sus/a/f;->a:J

    return-wide v0
.end method

.method public run()V
    .locals 6

    const-string v0, "http://susapi.lenovomm.com/adpserver/ctrl?CtrlType=testConnect"

    const/4 v1, 0x1

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/lenovo/lps/sus/c/b;->a(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SUCCESS"

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string v0, "FAIL"

    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    sget-object v2, Lcom/lenovo/lps/sus/b/b;->t:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v2}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "testSUSServerId"

    iget-wide v4, p0, Lcom/lenovo/lps/sus/a/f;->a:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {v1}, Lcom/lenovo/lps/sus/a/i;->j(Landroid/os/Message;)V

    return-void

    :cond_2
    const-string v0, "FAIL"

    goto :goto_0
.end method
