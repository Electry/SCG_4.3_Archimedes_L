.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;
.super Ljava/lang/Object;
.source "AboutManager.java"


# static fields
.field public static final EXTRA_VERSION_INTRODUCTION:Ljava/lang/String; = "version_introduction"

.field public static final FROM:Ljava/lang/String; = "from"

.field public static final FROM_CAMERA:Ljava/lang/String; = "from camera"

.field public static final FROM_GALLERY:Ljava/lang/String; = "from gallery"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public startAboutActivity()V
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    return-void
.end method

.method public startAboutActivity(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 3
    .param p1, "version_introduction"    # Landroid/app/PendingIntent;
    .param p2, "from"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 33
    if-eqz p1, :cond_0

    .line 34
    const-string/jumbo v1, "version_introduction"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method public startAboutActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "version_introduction"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutManager;->startAboutActivity(Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 41
    return-void
.end method
