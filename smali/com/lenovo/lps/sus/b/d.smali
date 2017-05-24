.class public Lcom/lenovo/lps/sus/b/d;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/lps/sus/b/d;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lps/sus/b/d;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/sus/b/d;->c:I

    return-void
.end method

.method public static a(JLjava/lang/String;IZ)J
    .locals 10

    const-wide/16 v4, -0x1

    const/4 v8, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "installPackageByInstallType reqInstallType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; affairId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->f()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    move-wide p0, v4

    :goto_0
    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "installfile ="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "; IType"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "; isOnlySilentInstall"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    if-eq v2, p3, :cond_1

    const/4 v0, 0x2

    if-eq v0, p3, :cond_1

    const/4 v0, 0x3

    if-eq v0, p3, :cond_1

    if-ne v8, p3, :cond_8

    :cond_1
    const-string v0, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "permissionflag ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    :goto_2
    if-ne v2, p3, :cond_3

    if-nez v0, :cond_7

    move-wide p0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    if-ne v8, p3, :cond_7

    if-nez v0, :cond_5

    move v5, v3

    :goto_3
    if-eqz v5, :cond_4

    if-le v5, v8, :cond_6

    :cond_4
    invoke-static {v1, p2}, Lcom/lenovo/lps/sus/c/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v5, v2

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/lenovo/lps/sus/a/g;

    move-wide v2, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/lps/sus/a/g;-><init>(Landroid/content/Context;JLjava/lang/String;I)V

    invoke-virtual {v0}, Lcom/lenovo/lps/sus/a/g;->start()V

    goto :goto_0

    :cond_7
    move v5, p3

    goto :goto_3

    :cond_8
    move v0, v3

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "install finish affairId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/d;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()J
    .locals 6

    const-wide/16 v0, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install start affairId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/lenovo/lps/sus/b/d;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/sus/b/d;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/d;->a:J

    invoke-static {v2, v3}, Lcom/lenovo/lps/sus/a/i;->a(J)V

    :goto_0
    return-wide v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "install,file="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 777,filename="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    const-string v3, "777"

    invoke-static {v3, v2}, Lcom/lenovo/lps/sus/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v0, p0, Lcom/lenovo/lps/sus/b/d;->a:J

    iget v3, p0, Lcom/lenovo/lps/sus/b/d;->c:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/sus/b/d;->a(JLjava/lang/String;IZ)J

    move-result-wide v0

    :cond_2
    iget-wide v2, p0, Lcom/lenovo/lps/sus/b/d;->a:J

    invoke-static {v2, v3}, Lcom/lenovo/lps/sus/a/i;->a(J)V

    goto :goto_0
.end method

.method public c()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
