.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$ChangeConfigurationListener;
.super Ljava/lang/Object;
.source "LanguagesGroupItem.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$OnLanguageItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeConfigurationListener"
.end annotation


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field mContext:Landroid/content/Context;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$ChangeConfigurationListener;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$ChangeConfigurationListener;->mResources:Landroid/content/res/Resources;

    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$ChangeConfigurationListener;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$ChangeConfigurationListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$ChangeConfigurationListener;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$ChangeConfigurationListener;->mConfiguration:Landroid/content/res/Configuration;

    .line 35
    return-void
.end method


# virtual methods
.method public onClick(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$ChangeConfigurationListener;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$ChangeConfigurationListener;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$ChangeConfigurationListener;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/LanguagesGroupItem$ChangeConfigurationListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 41
    return-void
.end method
