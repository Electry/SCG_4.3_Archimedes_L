.class public Lcom/lenovo/lps/sus/b/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/lenovo/lps/sus/b/c;->c:I

    iput v0, p0, Lcom/lenovo/lps/sus/b/c;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/sus/b/c;->c:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/lps/sus/b/c;->c:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/sus/b/c;->d:I

    return v0
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/lenovo/lps/sus/b/c;->d:I

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/lenovo/lps/sus/b/c;->d:I

    goto :goto_0
.end method
