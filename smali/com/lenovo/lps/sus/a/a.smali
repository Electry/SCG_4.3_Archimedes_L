.class public Lcom/lenovo/lps/sus/a/a;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lps/sus/a/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/lenovo/lps/sus/a/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/sus/a/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Lcom/lenovo/lps/sus/c/b;->a(Ljava/lang/String;ZI)Ljava/lang/String;

    :cond_0
    return-void
.end method
