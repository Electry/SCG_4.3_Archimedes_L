.class public final Lcom/lenovo/lps/sus/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lps/sus/a/c;->a:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    const-string v0, "Update pengding!"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    const-string v0, "SUS_MSG_WARNING_PENDING"

    invoke-static {v0}, Lcom/lenovo/lps/sus/a/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(J)V
    .locals 2

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->b()V

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/lenovo/lps/sus/c/b;->a(ZJ)V

    :cond_0
    return-void
.end method

.method public static a(JILjava/lang/String;ILjava/lang/String;Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/lenovo/lps/sus/a/c;->a:Landroid/content/Context;

    const-class v2, Lcom/lenovo/lps/sus/control/SUSPromptActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "actiontype"

    const-string v2, "UPDATEPROMPT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "versioninfo"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "showUserSettingsEnable"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "UpdateAffairId"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "usersettings"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "newversioncode"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "UPDATE_DESC"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/lenovo/lps/sus/a/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(JLcom/lenovo/lps/sus/SUSListener;ZZ)V
    .locals 6

    const/4 v5, 0x0

    const-string v4, "Update pengding!"

    invoke-static {v4}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->b()V

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/lenovo/lps/sus/c/b;->a(ZJ)V

    :cond_0
    if-eqz p3, :cond_1

    sget-object v0, Lcom/lenovo/lps/sus/EventType;->SUS_WARNING_PENDING:Lcom/lenovo/lps/sus/EventType;

    invoke-static {p0, p1, v0, v4, v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_WARNING_PENDING:Lcom/lenovo/lps/sus/EventType;

    move-wide v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/lenovo/lps/sus/a/c;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcom/lenovo/lps/sus/b/f;IZ)V
    .locals 7

    sget-object v0, Lcom/lenovo/lps/sus/a/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/lenovo/lps/sus/b/f;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/f;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/lenovo/lps/sus/b/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lenovo/lps/sus/a/c;->a:Landroid/content/Context;

    const-string v3, "SUS_UPDATEVERPROMPT_VERNAME"

    invoke-static {v2, v3}, Lcom/lenovo/lps/sus/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lenovo/lps/sus/a/c;->a:Landroid/content/Context;

    const-string v2, "SUS_UPDATEVERPROMPT_VERSIZE"

    invoke-static {v1, v2}, Lcom/lenovo/lps/sus/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/f;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/lenovo/lps/sus/c/b;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lenovo/lps/sus/a/c;->a:Landroid/content/Context;

    const-string v2, "SUS_UPDATESIZEPROMPT_WLAN"

    invoke-static {v1, v2}, Lcom/lenovo/lps/sus/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_2

    const-string v0, "No"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/lenovo/lps/sus/a/c;->a:Landroid/content/Context;

    const-string v1, "SUS_UPDATEDESC"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/f;->a:J

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/f;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v2, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/lenovo/lps/sus/a/c;->a(JILjava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->j()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->k()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {v0, p0}, Lcom/lenovo/lps/sus/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static b(JLcom/lenovo/lps/sus/SUSListener;ZZ)V
    .locals 6

    const/4 v5, 0x0

    const-string v4, "Network unavailable!"

    invoke-static {v4}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string v0, "SUS_MSG_FAIL_NETWORKUNAVAILABLE"

    invoke-static {v0}, Lcom/lenovo/lps/sus/a/c;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    sget-object v0, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_NETWORKUNAVAILABLE:Lcom/lenovo/lps/sus/EventType;

    invoke-static {p0, p1, v0, v4, v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_NETWORKUNAVAILABLE:Lcom/lenovo/lps/sus/EventType;

    move-wide v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static c(JLcom/lenovo/lps/sus/SUSListener;ZZ)V
    .locals 6

    const/4 v5, 0x0

    const-string v4, "Please open the WLAN!"

    invoke-static {v4}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string v0, "SUS_MSG_FAIL_NOWLANCONNECTED"

    invoke-static {v0}, Lcom/lenovo/lps/sus/a/c;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    sget-object v0, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_NOWLANCONNECTED:Lcom/lenovo/lps/sus/EventType;

    invoke-static {p0, p1, v0, v4, v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_NOWLANCONNECTED:Lcom/lenovo/lps/sus/EventType;

    move-wide v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
