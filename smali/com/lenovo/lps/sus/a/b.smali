.class public Lcom/lenovo/lps/sus/a/b;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lps/sus/a/b;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/lps/sus/a/b;->b:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/lps/sus/a/b;->c:I

    iput-wide p1, p0, Lcom/lenovo/lps/sus/a/b;->b:J

    iput-object p4, p0, Lcom/lenovo/lps/sus/a/b;->a:Ljava/lang/String;

    iput p3, p0, Lcom/lenovo/lps/sus/a/b;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QueryThread constructor, affairId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/lenovo/lps/sus/a/b;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 6

    const/16 v3, 0x1388

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/b;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/lenovo/lps/sus/c/b;->a(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "CHANGESERVERDN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SUS-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SUS-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "SUSRESINFO"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v2, "RES"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v4, "CHANGESERVERDN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "NewDN"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/b;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/lps/sus/a/b;->a:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/lenovo/lps/sus/c/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/lenovo/lps/sus/c/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Switch ServerDN newDN="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/b;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/sus/a/b;->a:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x1388

    invoke-static {v2, v3, v4}, Lcom/lenovo/lps/sus/c/b;->a(Ljava/lang/String;ZI)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_2
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "ActionType"

    iget v4, p0, Lcom/lenovo/lps/sus/a/b;->c:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "updateAffairId"

    iget-wide v4, p0, Lcom/lenovo/lps/sus/a/b;->b:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, Lcom/lenovo/lps/sus/b/b;->c:Lcom/lenovo/lps/sus/b/b;

    invoke-static {v1}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v1

    iput v1, v2, Landroid/os/Message;->what:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Lcom/lenovo/lps/sus/a/i;->j(Landroid/os/Message;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QueryThread respone affairId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/lenovo/lps/sus/a/b;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; responeinfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto/16 :goto_1

    :cond_3
    move-object v2, v1

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
