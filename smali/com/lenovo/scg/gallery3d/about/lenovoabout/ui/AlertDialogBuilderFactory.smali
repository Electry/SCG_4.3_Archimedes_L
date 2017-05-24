.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;
.super Ljava/lang/Object;
.source "AlertDialogBuilderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBuilder(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aboutConfig"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 15
    const/4 v0, 0x3

    .line 17
    .local v0, "theme":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    .line 19
    :cond_0
    const/4 v0, 0x3

    .line 20
    const-string v1, "dark"

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getTheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    const/4 v0, 0x2

    .line 29
    :cond_1
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v1

    .line 24
    :cond_2
    const/4 v0, 0x5

    .line 25
    const-string v1, "dark"

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getTheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    const/4 v0, 0x4

    goto :goto_0
.end method
