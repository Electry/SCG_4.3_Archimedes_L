.class public final Lcom/lenovo/lps/sus/a/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/os/Handler;

.field private static c:Ljava/util/Map;

.field private static d:Lcom/lenovo/lps/sus/b/c;

.field private static synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/lenovo/lps/sus/a/i;->a:Landroid/content/Context;

    sput-object v1, Lcom/lenovo/lps/sus/a/i;->b:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    sput-object v1, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/lenovo/lps/sus/b/e;)J
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    if-eqz p0, :cond_3

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->l:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_WARNING_PENDING:Lcom/lenovo/lps/sus/EventType;

    const-string/jumbo v4, "updateAffair pengding!"

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v0, v6

    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/lps/sus/b/e;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lenovo/lps/sus/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_WARNING_PENDING:Lcom/lenovo/lps/sus/EventType;

    const-string v4, "SingleInstanceAffair pengding!"

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v0, v6

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->i()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/e;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_WARNING_PENDING:Lcom/lenovo/lps/sus/EventType;

    const-string v4, "MutilInstanceAffair pengding!"

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v0, v6

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/e;->d:J

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/b;->c(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/b/e;->e()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    move-wide v0, v6

    goto :goto_0
.end method

.method public static a(Landroid/os/Message;)Lcom/lenovo/lps/sus/b/k;
    .locals 2

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UpdateAffairId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->b(J)Lcom/lenovo/lps/sus/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/lenovo/lps/sus/b/e;->j:Lcom/lenovo/lps/sus/b/k;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(II)V
    .locals 3

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/lenovo/lps/sus/b/c;

    invoke-direct {v0}, Lcom/lenovo/lps/sus/b/c;-><init>()V

    sput-object v0, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    :cond_1
    sget-object v0, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/sus/b/c;->b(I)V

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/sus/b/c;->a(I)V

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->a:Landroid/content/Context;

    const-string v1, "SUS_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SUS_UPDATEACTIONTYPE"

    sget-object v2, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v2}, Lcom/lenovo/lps/sus/b/c;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "SUS_NEWVERSIONCODE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static a(IJLjava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/lenovo/lps/sus/a/i;->b(J)Lcom/lenovo/lps/sus/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/lenovo/lps/sus/b/e;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(J)V
    .locals 2

    invoke-static {p0, p1}, Lcom/lenovo/lps/sus/c/b;->c(J)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/sus/b/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/e;->a()V

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(JLcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    invoke-static {p0, p1}, Lcom/lenovo/lps/sus/a/i;->b(J)Lcom/lenovo/lps/sus/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lenovo/lps/sus/b/e;->a:Lcom/lenovo/lps/sus/SUSListener;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/lenovo/lps/sus/b/e;->a:Lcom/lenovo/lps/sus/SUSListener;

    move-wide v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->h()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SUS Listener updateAffairID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; EventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; paramStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; paramObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/lps/sus/SUSListener;->onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/lenovo/lps/sus/b/b;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-object v1, Lcom/lenovo/lps/sus/a/i;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/lps/sus/b/b;->a(Lcom/lenovo/lps/sus/b/b;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/lenovo/lps/sus/a/i;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 3

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/sus/b/e;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/lenovo/lps/sus/b/e;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object p0, Lcom/lenovo/lps/sus/a/i;->a:Landroid/content/Context;

    :try_start_0
    new-instance v1, Lcom/lenovo/lps/sus/a/d;

    invoke-direct {v1}, Lcom/lenovo/lps/sus/a/d;-><init>()V

    sput-object v1, Lcom/lenovo/lps/sus/a/i;->b:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v1, Lcom/lenovo/lps/sus/a/i;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    sput-object v2, Lcom/lenovo/lps/sus/a/i;->b:Landroid/os/Handler;

    goto :goto_0

    :catch_1
    move-exception v1

    sput-object v2, Lcom/lenovo/lps/sus/a/i;->b:Landroid/os/Handler;

    goto :goto_0
.end method

.method public static a(Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/lenovo/lps/sus/a/i;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    :cond_0
    if-nez v1, :cond_2

    sget-object v2, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->i()I

    move-result v3

    if-lt v2, v3, :cond_2

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/lenovo/lps/sus/a/c;->a()V

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static b(J)Lcom/lenovo/lps/sus/b/e;
    .locals 2

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/lenovo/lps/sus/c/b;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/sus/b/e;

    return-object v0
.end method

.method public static b()V
    .locals 5

    const-string v0, "SUSMSGHandler finishAllSingleInstanceAffair entry"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/lps/sus/b/e;

    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/lenovo/lps/sus/b/e;->b:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/e;->a()V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    goto :goto_1
.end method

.method public static b(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UpdateAffairId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->b(J)Lcom/lenovo/lps/sus/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/sus/b/e;->a(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public static c()V
    .locals 3

    const-string v0, "SUSMSGHandler finishAllAffair entry"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :goto_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/sus/b/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/e;->a()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    goto :goto_1
.end method

.method public static c(J)V
    .locals 4

    invoke-static {p0, p1}, Lcom/lenovo/lps/sus/a/i;->b(J)Lcom/lenovo/lps/sus/b/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/lenovo/lps/sus/b/e;->i:Lcom/lenovo/lps/sus/b/f;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/lenovo/lps/sus/a/i;->f()I

    sget-object v1, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->k()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/lps/sus/b/e;->u:Z

    :cond_0
    iget-object v1, v0, Lcom/lenovo/lps/sus/b/e;->i:Lcom/lenovo/lps/sus/b/f;

    sget-object v2, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v2}, Lcom/lenovo/lps/sus/b/c;->b()I

    move-result v2

    iget-boolean v0, v0, Lcom/lenovo/lps/sus/b/e;->u:Z

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/sus/a/c;->a(Lcom/lenovo/lps/sus/b/f;IZ)V

    :cond_1
    return-void
.end method

.method public static c(Landroid/os/Message;)V
    .locals 1

    invoke-static {p0}, Lcom/lenovo/lps/sus/a/i;->a(Landroid/os/Message;)Lcom/lenovo/lps/sus/b/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/sus/b/k;->a(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public static d()I
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/c;->a()I

    move-result v0

    goto :goto_0
.end method

.method public static d(J)V
    .locals 4

    invoke-static {p0, p1}, Lcom/lenovo/lps/sus/a/i;->b(J)Lcom/lenovo/lps/sus/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v2, -0x1

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/e;->b()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/lenovo/lps/sus/a/i;->a(J)V

    :cond_0
    return-void
.end method

.method public static d(Landroid/os/Message;)V
    .locals 1

    invoke-static {p0}, Lcom/lenovo/lps/sus/a/i;->a(Landroid/os/Message;)Lcom/lenovo/lps/sus/b/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/sus/b/k;->c(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public static e()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static e(Landroid/os/Message;)V
    .locals 1

    invoke-static {p0}, Lcom/lenovo/lps/sus/a/i;->a(Landroid/os/Message;)Lcom/lenovo/lps/sus/b/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/sus/b/k;->b(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public static f()I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/lps/sus/b/c;

    invoke-direct {v1}, Lcom/lenovo/lps/sus/b/c;-><init>()V

    sput-object v1, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    :cond_0
    sget-object v1, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/lenovo/lps/sus/a/i;->a:Landroid/content/Context;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/lenovo/lps/sus/a/i;->a:Landroid/content/Context;

    const-string v2, "SUS_SETTINGS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "SUS_UPDATEACTIONTYPE"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "SUS_NEWVERSIONCODE"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/sus/b/c;->b(I)V

    sget-object v1, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/sus/b/c;->a(I)V

    :cond_2
    sget-object v0, Lcom/lenovo/lps/sus/a/i;->d:Lcom/lenovo/lps/sus/b/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/c;->b()I

    move-result v0

    goto :goto_0
.end method

.method public static f(Landroid/os/Message;)V
    .locals 3

    invoke-static {p0}, Lcom/lenovo/lps/sus/a/i;->a(Landroid/os/Message;)Lcom/lenovo/lps/sus/b/k;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lcom/lenovo/lps/sus/b/k;->a(Landroid/os/Message;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static g()I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdateAffairsNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/lenovo/lps/sus/a/i;->c:Ljava/util/Map;

    goto :goto_0
.end method

.method public static g(Landroid/os/Message;)V
    .locals 6

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "testSUSServerId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v4, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    sget-object v2, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_TESTSERVER_RESP:Lcom/lenovo/lps/sus/EventType;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static h(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UpdateAffairId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->b(J)Lcom/lenovo/lps/sus/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/e;->c()V

    :cond_0
    return-void
.end method

.method static synthetic h()[I
    .locals 3

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->e:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/sus/b/b;->b()[Lcom/lenovo/lps/sus/b/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->j:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_13

    :goto_1
    :try_start_1
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->p:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_12

    :goto_2
    :try_start_2
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->r:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_11

    :goto_3
    :try_start_3
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->q:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_10

    :goto_4
    :try_start_4
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->o:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_f

    :goto_5
    :try_start_5
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->n:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_e

    :goto_6
    :try_start_6
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->l:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_d

    :goto_7
    :try_start_7
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->e:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_c

    :goto_8
    :try_start_8
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->k:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_b

    :goto_9
    :try_start_9
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->b:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_a

    :goto_a
    :try_start_a
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->i:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_9

    :goto_b
    :try_start_b
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->m:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_8

    :goto_c
    :try_start_c
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->c:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_7

    :goto_d
    :try_start_d
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->h:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_6

    :goto_e
    :try_start_e
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->s:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_5

    :goto_f
    :try_start_f
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->t:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_4

    :goto_10
    :try_start_10
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->a:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_3

    :goto_11
    :try_start_11
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->g:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_2

    :goto_12
    :try_start_12
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->f:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_1

    :goto_13
    :try_start_13
    sget-object v1, Lcom/lenovo/lps/sus/b/b;->d:Lcom/lenovo/lps/sus/b/b;

    invoke-virtual {v1}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_0

    :goto_14
    sput-object v0, Lcom/lenovo/lps/sus/a/i;->e:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_14

    :catch_1
    move-exception v1

    goto :goto_13

    :catch_2
    move-exception v1

    goto :goto_12

    :catch_3
    move-exception v1

    goto :goto_11

    :catch_4
    move-exception v1

    goto :goto_10

    :catch_5
    move-exception v1

    goto :goto_f

    :catch_6
    move-exception v1

    goto :goto_e

    :catch_7
    move-exception v1

    goto :goto_d

    :catch_8
    move-exception v1

    goto :goto_c

    :catch_9
    move-exception v1

    goto :goto_b

    :catch_a
    move-exception v1

    goto :goto_a

    :catch_b
    move-exception v1

    goto/16 :goto_9

    :catch_c
    move-exception v1

    goto/16 :goto_8

    :catch_d
    move-exception v1

    goto/16 :goto_7

    :catch_e
    move-exception v1

    goto/16 :goto_6

    :catch_f
    move-exception v1

    goto/16 :goto_5

    :catch_10
    move-exception v1

    goto/16 :goto_4

    :catch_11
    move-exception v1

    goto/16 :goto_3

    :catch_12
    move-exception v1

    goto/16 :goto_2

    :catch_13
    move-exception v1

    goto/16 :goto_1
.end method

.method public static i(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/lenovo/lps/sus/b/b;->a(I)Lcom/lenovo/lps/sus/b/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SUS Message Event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; obj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/a/i;->h()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/b/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->c(J)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v0}, Lcom/lenovo/lps/sus/a/i;->a(II)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ActionType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "updateAffairId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/lenovo/lps/sus/a/i;->a(IJLjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "USERACTION_CONFIRM"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/lenovo/lps/sus/EventType;->SUS_UPDATEPROMPT_USER_CONFIRM:Lcom/lenovo/lps/sus/EventType;

    const-string/jumbo v3, "user click the confirm button!"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/lenovo/lps/sus/b/b;->n:Lcom/lenovo/lps/sus/b/b;

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->a(Lcom/lenovo/lps/sus/b/b;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "USERACTION_CANCEL"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/lenovo/lps/sus/EventType;->SUS_UPDATEPROMPT_USER_CANCEL:Lcom/lenovo/lps/sus/EventType;

    const-string/jumbo v3, "user click the cancel button!"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->a(J)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/a/i;->d(J)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {p0}, Lcom/lenovo/lps/sus/a/i;->c(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-static {p0}, Lcom/lenovo/lps/sus/a/i;->b(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-static {p0}, Lcom/lenovo/lps/sus/a/i;->h(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/lenovo/lps/sus/a/i;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/lenovo/lps/sus/c/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-static {p0}, Lcom/lenovo/lps/sus/a/i;->d(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-static {p0}, Lcom/lenovo/lps/sus/a/i;->e(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_d
    invoke-static {p0}, Lcom/lenovo/lps/sus/a/i;->f(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_e
    invoke-static {p0}, Lcom/lenovo/lps/sus/a/i;->g(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bSilenceInstallSuccessFlag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_SILENCEINSTALL_FINISH:Lcom/lenovo/lps/sus/EventType;

    const-string v4, "SUCCESS"

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-static {v2, v3, v1, v4, v0}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_SILENCEINSTALL_FAIL:Lcom/lenovo/lps/sus/EventType;

    const-string v4, "FAIL"

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-static {v2, v3, v1, v4, v0}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public static j(Landroid/os/Message;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/a/i;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
