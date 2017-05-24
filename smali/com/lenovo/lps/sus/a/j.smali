.class public final Lcom/lenovo/lps/sus/a/j;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "true"

.field static final b:Ljava/lang/String; = "false"

.field private static c:Landroid/content/Context;

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:I

.field private static i:Z

.field private static j:Landroid/content/Context;

.field private static k:I

.field private static l:Z

.field private static m:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-object v2, Lcom/lenovo/lps/sus/a/j;->c:Landroid/content/Context;

    sput-boolean v1, Lcom/lenovo/lps/sus/a/j;->d:Z

    sput-boolean v1, Lcom/lenovo/lps/sus/a/j;->e:Z

    sput-boolean v1, Lcom/lenovo/lps/sus/a/j;->f:Z

    sput-boolean v1, Lcom/lenovo/lps/sus/a/j;->g:Z

    const/4 v0, 0x1

    sput v0, Lcom/lenovo/lps/sus/a/j;->h:I

    sput-boolean v1, Lcom/lenovo/lps/sus/a/j;->i:Z

    sput-object v2, Lcom/lenovo/lps/sus/a/j;->j:Landroid/content/Context;

    sput v1, Lcom/lenovo/lps/sus/a/j;->k:I

    sput-boolean v1, Lcom/lenovo/lps/sus/a/j;->l:Z

    sput-object v2, Lcom/lenovo/lps/sus/a/j;->m:Landroid/app/NotificationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/app/NotificationManager;
    .locals 2

    sget-object v0, Lcom/lenovo/lps/sus/a/j;->m:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/a/j;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/a/j;->c:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/lenovo/lps/sus/a/j;->m:Landroid/app/NotificationManager;

    :cond_0
    sget-object v0, Lcom/lenovo/lps/sus/a/j;->m:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)Lcom/lenovo/lps/sus/b/e;
    .locals 9

    const-wide/16 v0, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid params="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    :goto_0
    return-object v5

    :cond_1
    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->j()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->k()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDKReadyFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "abort! bSDKDisableByUserFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-boolean v2, p2, Lcom/lenovo/lps/sus/b/m;->a:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/lenovo/lps/sus/a/i;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "SingleInstanceAffairNum=1"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/lenovo/lps/sus/a/i;->g()I

    move-result v2

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->i()I

    move-result v3

    if-lt v2, v3, :cond_6

    const-string v0, "AffairsNum>=MaxNum"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-wide/16 v2, 0x0

    iget-wide v6, p2, Lcom/lenovo/lps/sus/b/m;->c:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_7

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->l()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/lenovo/lps/sus/b/m;->c:J

    :cond_7
    iget-wide v2, p2, Lcom/lenovo/lps/sus/b/m;->c:J

    iget-boolean v4, p2, Lcom/lenovo/lps/sus/b/m;->e:Z

    if-eqz v4, :cond_8

    invoke-static {p0}, Lcom/lenovo/lps/sus/b/i;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-boolean v4, p2, Lcom/lenovo/lps/sus/b/m;->d:Z

    invoke-static {v2, v3, p1, v8, v4}, Lcom/lenovo/lps/sus/a/c;->b(JLcom/lenovo/lps/sus/SUSListener;ZZ)V

    sget-object v2, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_NETWORKUNAVAILABLE:Lcom/lenovo/lps/sus/EventType;

    const-string v4, "Network unavailable!"

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    iget-boolean v4, p2, Lcom/lenovo/lps/sus/b/m;->f:Z

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->i()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p0}, Lcom/lenovo/lps/sus/b/i;->f(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-boolean v4, p2, Lcom/lenovo/lps/sus/b/m;->d:Z

    invoke-static {v2, v3, p1, v8, v4}, Lcom/lenovo/lps/sus/a/c;->c(JLcom/lenovo/lps/sus/SUSListener;ZZ)V

    sget-object v2, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_FAIL_NOWLANCONNECTED:Lcom/lenovo/lps/sus/EventType;

    const-string v4, "Please open the WLAN!"

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    iget-boolean v4, p2, Lcom/lenovo/lps/sus/b/m;->g:Z

    if-eqz v4, :cond_a

    invoke-static {v8}, Lcom/lenovo/lps/sus/a/i;->a(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, p2, Lcom/lenovo/lps/sus/b/m;->d:Z

    invoke-static {v2, v3, p1, v8, v4}, Lcom/lenovo/lps/sus/a/c;->a(JLcom/lenovo/lps/sus/SUSListener;ZZ)V

    sget-object v2, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sget-object v3, Lcom/lenovo/lps/sus/EventType;->SUS_WARNING_PENDING:Lcom/lenovo/lps/sus/EventType;

    const-string v4, "Update pengding!"

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lps/sus/a/i;->a(JLcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    new-instance v5, Lcom/lenovo/lps/sus/b/e;

    invoke-direct {v5, p1, p2}, Lcom/lenovo/lps/sus/b/e;-><init>(Lcom/lenovo/lps/sus/SUSListener;Lcom/lenovo/lps/sus/b/m;)V

    goto/16 :goto_0
.end method

.method public static a(I)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/b;->a(I)V

    return-void
.end method

.method public static a(IZ)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    sput p0, Lcom/lenovo/lps/sus/a/j;->k:I

    sput-boolean p1, Lcom/lenovo/lps/sus/a/j;->l:Z

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CheckNetworkMode mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    sput v1, Lcom/lenovo/lps/sus/a/j;->k:I

    sput-boolean v1, Lcom/lenovo/lps/sus/a/j;->l:Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "SUS SDK version=2.1.0"

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/lenovo/lps/sus/a/j;->j:Landroid/content/Context;

    sput-object v2, Lcom/lenovo/lps/sus/a/j;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "context="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    :goto_0
    sget-object v2, Lcom/lenovo/lps/sus/a/j;->c:Landroid/content/Context;

    if-eqz v2, :cond_5

    sput-boolean v0, Lcom/lenovo/lps/sus/a/j;->f:Z

    :try_start_0
    sget-object v2, Lcom/lenovo/lps/sus/a/j;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/h;->a(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lps/sus/a/j;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/lps/sus/b/h;->a(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lps/sus/a/j;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/lps/sus/a/c;->a(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lps/sus/a/j;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/lps/sus/b/i;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    sget-object v2, Lcom/lenovo/lps/sus/a/j;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/lps/sus/a/i;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    sput-boolean v0, Lcom/lenovo/lps/sus/a/j;->f:Z

    :goto_3
    sget-boolean v0, Lcom/lenovo/lps/sus/a/j;->f:Z

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/lenovo/lps/sus/a/j;->g:Z

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sussdk2.0_configfile.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lenovo/lps/sus/a/j;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "sussdk2.0_configfile.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lenovo/lps/sus/a/j;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_4
    sput-boolean v1, Lcom/lenovo/lps/sus/a/j;->e:Z

    return-void

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/lenovo/lps/sus/a/j;->c:Landroid/content/Context;

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppContext="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lenovo/lps/sus/a/j;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_2

    :cond_5
    sput-boolean v1, Lcom/lenovo/lps/sus/a/j;->f:Z

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p0, p1}, Lcom/lenovo/lps/sus/c/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string/jumbo v0, "testModeEnableFlag"

    invoke-virtual {v3, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "debugModeEnableFlag"

    invoke-virtual {v3, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "patchUpdateEnableFlag"

    invoke-virtual {v3, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "SUSSDKDisableFlag"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "executeSUSConfigFileSetting entry, fileName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v7}, Lcom/lenovo/lps/sus/c/b;->c(Z)V

    :cond_0
    :goto_0
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7}, Lcom/lenovo/lps/sus/SUSSetting;->setDebugModeFlag(Z)V

    :cond_1
    :goto_1
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v7}, Lcom/lenovo/lps/sus/SUSSetting;->setPatchUpdateEnableFlag(Z)V

    :cond_2
    :goto_2
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v7}, Lcom/lenovo/lps/sus/SUSSetting;->setSDKDisableFlag(Z)V

    :cond_3
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "executeSUSConfigFileSetting exit, fileName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    const-string v4, "false"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v6}, Lcom/lenovo/lps/sus/c/b;->c(Z)V

    goto :goto_0

    :cond_6
    const-string v0, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v6}, Lcom/lenovo/lps/sus/SUSSetting;->setDebugModeFlag(Z)V

    goto :goto_1

    :cond_7
    const-string v0, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v6}, Lcom/lenovo/lps/sus/SUSSetting;->setPatchUpdateEnableFlag(Z)V

    goto :goto_2

    :cond_8
    const-string v0, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v6}, Lcom/lenovo/lps/sus/SUSSetting;->setSDKDisableFlag(Z)V

    goto :goto_3
.end method

.method public static a(Z)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/j;->a(Z)V

    return-void
.end method

.method public static a(ZLandroid/content/Context;)V
    .locals 2

    sput-boolean p0, Lcom/lenovo/lps/sus/a/j;->i:Z

    sget-boolean v0, Lcom/lenovo/lps/sus/a/j;->i:Z

    if-eqz v0, :cond_0

    sput-object p1, Lcom/lenovo/lps/sus/a/j;->j:Landroid/content/Context;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isCustDefActivityContextEnableFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/lenovo/lps/sus/a/j;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lenovo/lps/sus/a/j;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lps/sus/a/j;->j:Landroid/content/Context;

    goto :goto_0
.end method

.method public static b()V
    .locals 0

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->b()V

    invoke-static {}, Lcom/lenovo/lps/sus/a/i;->c()V

    invoke-static {}, Lcom/lenovo/lps/sus/c/h;->a()V

    return-void
.end method

.method public static b(I)V
    .locals 2

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    sput p0, Lcom/lenovo/lps/sus/a/j;->h:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateAffairConMaxNum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/lenovo/lps/sus/a/j;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    sput v1, Lcom/lenovo/lps/sus/a/j;->h:I

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 2

    sput-boolean p0, Lcom/lenovo/lps/sus/a/j;->d:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isSDKDisableByUserFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static c()V
    .locals 1

    const-string v0, "SUSController finishAllSingleInstanceAffair entry"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/c/b;->b()V

    invoke-static {}, Lcom/lenovo/lps/sus/a/i;->b()V

    invoke-static {}, Lcom/lenovo/lps/sus/c/h;->a()V

    return-void
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/a/j;->l:Z

    return v0
.end method

.method public static e()I
    .locals 1

    sget v0, Lcom/lenovo/lps/sus/a/j;->k:I

    return v0
.end method

.method public static f()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/a/j;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static g()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/a/j;->i:Z

    return v0
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/a/j;->d:Z

    return v0
.end method

.method public static i()I
    .locals 1

    sget v0, Lcom/lenovo/lps/sus/a/j;->h:I

    return v0
.end method

.method public static j()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/a/j;->e:Z

    return v0
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/a/j;->e:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/lenovo/lps/sus/a/j;->f:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/lenovo/lps/sus/a/j;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
