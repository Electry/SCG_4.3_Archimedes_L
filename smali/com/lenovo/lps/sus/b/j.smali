.class public final Lcom/lenovo/lps/sus/b/j;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/lenovo/lps/sus/SUSListener;

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Ljava/lang/String;

.field public static i:J

.field public static j:J

.field public static k:Z

.field public static l:I

.field public static m:Z

.field public static n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/lenovo/lps/sus/b/j;->a:Lcom/lenovo/lps/sus/SUSListener;

    sput-boolean v0, Lcom/lenovo/lps/sus/b/j;->b:Z

    sput-boolean v0, Lcom/lenovo/lps/sus/b/j;->c:Z

    sput-boolean v0, Lcom/lenovo/lps/sus/b/j;->d:Z

    sput-boolean v0, Lcom/lenovo/lps/sus/b/j;->e:Z

    sput-boolean v0, Lcom/lenovo/lps/sus/b/j;->f:Z

    sput-boolean v0, Lcom/lenovo/lps/sus/b/j;->g:Z

    sput-object v1, Lcom/lenovo/lps/sus/b/j;->h:Ljava/lang/String;

    sput-wide v2, Lcom/lenovo/lps/sus/b/j;->i:J

    sput-wide v2, Lcom/lenovo/lps/sus/b/j;->j:J

    sput-boolean v0, Lcom/lenovo/lps/sus/b/j;->k:Z

    sput v0, Lcom/lenovo/lps/sus/b/j;->l:I

    sput-boolean v0, Lcom/lenovo/lps/sus/b/j;->m:Z

    sput-boolean v0, Lcom/lenovo/lps/sus/b/j;->n:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/b/j;->e:Z

    return v0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/b/j;->d:Z

    return v0
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/b/j;->b:Z

    return v0
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/b/j;->c:Z

    return v0
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/b/j;->g:Z

    return v0
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/b/j;->n:Z

    return v0
.end method

.method public static g()I
    .locals 1

    sget v0, Lcom/lenovo/lps/sus/b/j;->l:I

    return v0
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/b/j;->k:Z

    return v0
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/b/j;->b:Z

    return v0
.end method

.method public static j()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/b/j;->f:Z

    return v0
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/b/j;->m:Z

    return v0
.end method

.method public static l()Z
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/sus/b/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
