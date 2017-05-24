.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;
.source "AboutDebugDialog.java"


# instance fields
.field mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string v0, "About \u8c03\u8bd5\u4fe1\u606f"

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 34
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private addFuctions(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;>;"
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;

    const-string/jumbo v1, "\u529f\u80fd"

    const-string/jumbo v2, "\u529f\u80fd\u5217\u8868"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v0, "function":Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;

    const-string v2, "about\u5f53\u524d\u7248\u672c\u53f7"

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;->getAboutVersion()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->NORMAL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    invoke-direct {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugChildItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V

    .line 85
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/EmailDebugInfoChildItem;

    const-string v2, "fanxu2@lenovo.com"

    invoke-direct {v1, p1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/EmailDebugInfoChildItem;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V

    .line 86
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/CopyDebugInfoChildItem;

    invoke-direct {v1, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/CopyDebugInfoChildItem;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V

    .line 87
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/SaveDebugInfoChildItem;

    const-string v2, "/sdcard/about.txt"

    invoke-direct {v1, p1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/SaveDebugInfoChildItem;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V

    .line 89
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog$1;

    const-string v2, "About\u7248\u672c\u4fe1\u606f"

    const-string/jumbo v3, "\u70b9\u51fb\u663e\u793a\u5f53\u524dAbout\u7248\u672c\u4fe1\u606f"

    sget-object v4, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;->NORMAL:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem$LEVEL;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->add(Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;)V

    .line 113
    return-void
.end method

.method private getAboutVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    const-string v0, ""

    .line 118
    .local v0, "ab_version":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f080000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e1":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 121
    const-string/jumbo v0, "\u65e0\u6cd5\u627e\u5230\u6587\u4ef6"

    .line 125
    goto :goto_0

    .line 122
    .end local v1    # "e1":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 123
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const-string/jumbo v0, "\u53d1\u751f\u9519\u8bef"

    goto :goto_0
.end method


# virtual methods
.method protected createItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;>;"
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/SystemPropertiesGroupItem;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/SystemPropertiesGroupItem;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/SystemInfoGroupItem;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/SystemInfoGroupItem;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;

    invoke-direct {v1, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getSecondCheckUpdateAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getSecondCheckUpdateAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/PreferenceGroupItem;

    const-string v2, "about_config"

    invoke-direct {v1, p1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/PreferenceGroupItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;->addFuctions(Ljava/util/ArrayList;)V

    .line 53
    return-object v0
.end method

.method streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 131
    .local v1, "available":I
    new-array v0, v1, [B

    .line 132
    .local v0, "all":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 133
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method
