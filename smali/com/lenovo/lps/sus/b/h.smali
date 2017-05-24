.class public final Lcom/lenovo/lps/sus/b/h;
.super Ljava/lang/Object;


# static fields
.field static a:Landroid/content/Context;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:I

.field static g:Ljava/lang/String;

.field static h:Ljava/lang/String;

.field static i:Ljava/lang/String;

.field static j:Ljava/lang/Boolean;

.field static k:Ljava/lang/String;

.field static l:Ljava/lang/String;

.field static m:Ljava/lang/String;

.field static n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->a:Landroid/content/Context;

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->b:Ljava/lang/String;

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->c:Ljava/lang/String;

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->d:Ljava/lang/String;

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->e:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/lenovo/lps/sus/b/h;->f:I

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->g:Ljava/lang/String;

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->h:Ljava/lang/String;

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->i:Ljava/lang/String;

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->j:Ljava/lang/Boolean;

    const-string v0, "SUS_APPKEY"

    sput-object v0, Lcom/lenovo/lps/sus/b/h;->k:Ljava/lang/String;

    const-string v0, "SUS_CHANNEL"

    sput-object v0, Lcom/lenovo/lps/sus/b/h;->l:Ljava/lang/String;

    const-string v0, "SUS_VERTYPE"

    sput-object v0, Lcom/lenovo/lps/sus/b/h;->m:Ljava/lang/String;

    const-string v0, "SUS_PATCHUPDATE"

    sput-object v0, Lcom/lenovo/lps/sus/b/h;->n:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/b/h;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Lcom/lenovo/lps/sus/b/h;->a:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/lenovo/lps/sus/b/h;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/sus/b/h;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    sget-object v1, Lcom/lenovo/lps/sus/b/h;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/lenovo/lps/sus/b/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->d:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/lps/sus/b/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    sget-object v2, Lcom/lenovo/lps/sus/b/h;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v5, Lcom/lenovo/lps/sus/b/h;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/lenovo/lps/sus/b/h;->b:Ljava/lang/String;

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v5, Lcom/lenovo/lps/sus/b/h;->f:I

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/lps/sus/b/h;->g:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    :goto_1
    :try_start_1
    sget-object v2, Lcom/lenovo/lps/sus/b/h;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x80

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_a

    sget-object v1, Lcom/lenovo/lps/sus/b/h;->k:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->c:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/lps/sus/b/h;->l:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :try_start_2
    sget-object v1, Lcom/lenovo/lps/sus/b/h;->m:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    :try_start_3
    sget-object v6, Lcom/lenovo/lps/sus/b/h;->n:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    :goto_2
    sput-object v2, Lcom/lenovo/lps/sus/b/h;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->e:Ljava/lang/String;

    :cond_2
    sget-object v1, Lcom/lenovo/lps/sus/b/h;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/lenovo/lps/sus/b/h;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    sget-object v1, Lcom/lenovo/lps/sus/b/h;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->e:Ljava/lang/String;

    :cond_3
    sget-object v1, Lcom/lenovo/lps/sus/b/h;->a:Landroid/content/Context;

    sget-object v2, Lcom/lenovo/lps/sus/b/h;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lenovo/lps/sus/c/b;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appFileMD5="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lenovo/lps/sus/b/h;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/lenovo/lps/sus/b/h;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/lenovo/lps/sus/b/h;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const-string v0, "appFileMD5 is fail!"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->b(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/lenovo/lps/sus/b/h;->a:Landroid/content/Context;

    sget-object v2, Lcom/lenovo/lps/sus/b/h;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lenovo/lps/sus/c/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "signMD5="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lenovo/lps/sus/b/h;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/lenovo/lps/sus/b/h;->h:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/lenovo/lps/sus/b/h;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const-string/jumbo v0, "myAppSignalFileMD5 is fail!"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->b(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    const-string/jumbo v1, "yes"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->j:Ljava/lang/Boolean;

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ePUXML="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lenovo/lps/sus/b/h;->j:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    :cond_8
    move v0, v4

    goto/16 :goto_0

    :cond_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/lenovo/lps/sus/b/h;->j:Ljava/lang/Boolean;

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto/16 :goto_2

    :catch_1
    move-exception v1

    move-object v1, v0

    goto/16 :goto_2

    :catch_2
    move-exception v5

    goto/16 :goto_2

    :catch_3
    move-exception v2

    goto/16 :goto_1

    :cond_a
    move-object v1, v0

    move-object v2, v0

    goto/16 :goto_2
.end method
