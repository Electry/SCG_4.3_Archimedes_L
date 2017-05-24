.class public final Lcom/lenovo/lps/sus/SUSSetting;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishAllAffair()V
    .locals 0

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->b()V

    return-void
.end method

.method public static finishUpdateAffair(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/lenovo/lps/sus/a/i;->a(J)V

    return-void
.end method

.method public static getUpdateAffairsMaxNum()I
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->i()I

    move-result v0

    return v0
.end method

.method public static getUpdateAffairsNum()I
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/sus/a/i;->g()I

    move-result v0

    return v0
.end method

.method public static setCheckNetworkMode(IZ)V
    .locals 0

    invoke-static {p0, p1}, Lcom/lenovo/lps/sus/a/j;->a(IZ)V

    return-void
.end method

.method public static setCustDefActivityContextEnableFlag(ZLandroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "setCustDefActivityContextEnableFlag entry"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/lenovo/lps/sus/a/j;->a(ZLandroid/content/Context;)V

    return-void
.end method

.method public static setDebugModeFlag(Z)V
    .locals 2

    invoke-static {p0}, Lcom/lenovo/lps/sus/a/j;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set isDebugModeFla="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setDevMode(I)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/lps/sus/a/j;->a(I)V

    return-void
.end method

.method public static setPatchUpdateEnableFlag(Z)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/b;->b(Z)V

    return-void
.end method

.method public static setSDKDisableFlag(Z)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/lps/sus/a/j;->b(Z)V

    return-void
.end method

.method public static setUpdateOnlyWLAN(Z)V
    .locals 2

    sput-boolean p0, Lcom/lenovo/lps/sus/b/j;->b:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isOnlyWLANFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static supportConcurrentUpdateAffair(I)I
    .locals 1

    invoke-static {p0}, Lcom/lenovo/lps/sus/a/j;->b(I)V

    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->i()I

    move-result v0

    return v0
.end method
