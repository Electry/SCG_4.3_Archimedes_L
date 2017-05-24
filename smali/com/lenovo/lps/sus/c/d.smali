.class public final Lcom/lenovo/lps/sus/c/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field private static c:Lcom/lenovo/lps/sus/c/d; = null

.field private static final d:Ljava/lang/String; = "getDefault"

.field private static final e:Ljava/lang/String; = "android.provider.MultiSIMUtils"


# instance fields
.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lps/sus/c/d;->c:Lcom/lenovo/lps/sus/c/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.provider.MultiSIMUtils"

    const-string v1, "getDefault"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/c/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/sus/c/d;->f:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/lenovo/lps/sus/c/d;
    .locals 2

    const-class v1, Lcom/lenovo/lps/sus/c/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/lps/sus/c/d;->c:Lcom/lenovo/lps/sus/c/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/lps/sus/c/d;

    invoke-direct {v0, p0}, Lcom/lenovo/lps/sus/c/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/lps/sus/c/d;->c:Lcom/lenovo/lps/sus/c/d;

    :cond_0
    sget-object v0, Lcom/lenovo/lps/sus/c/d;->c:Lcom/lenovo/lps/sus/c/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/lps/sus/c/d;->f:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/c/d;->f:Ljava/lang/Object;

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, p1, v1, v2}, Lcom/lenovo/lps/sus/c/a;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/lenovo/lps/sus/c/d;->a(Landroid/content/Context;)Lcom/lenovo/lps/sus/c/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/sus/c/d;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v1, "getDeviceIdGemini"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lps/sus/c/a;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    const-string v0, "getDeviceId"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lps/sus/c/d;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
