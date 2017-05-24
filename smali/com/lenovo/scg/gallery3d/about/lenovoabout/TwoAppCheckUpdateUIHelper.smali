.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;
.super Ljava/lang/Object;
.source "TwoAppCheckUpdateUIHelper.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/CheckUpdateUIHelper;


# instance fields
.field llCheckUpdates:Landroid/widget/LinearLayout;

.field mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

.field mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

.field mCheckUpdateUIHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;",
            ">;"
        }
    .end annotation
.end field

.field mPackageHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/PackageHelper;

.field mSubApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tivCheckUpdate:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mCheckUpdateUIHelpers:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    .line 33
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getSubApps()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mSubApps:Ljava/util/List;

    .line 36
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/PackageHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/PackageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mPackageHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/PackageHelper;

    .line 37
    return-void
.end method


# virtual methods
.method addCheckUpdate(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 61
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mPackageHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/PackageHelper;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/PackageHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/TwoLineListItemView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/TwoLineListItemView;-><init>(Landroid/content/Context;)V

    .line 65
    .local v2, "view":Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;
    invoke-virtual {v2, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSummaryVisibility(I)V

    .line 66
    invoke-virtual {v2, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setArrowVisibility(I)V

    .line 68
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->llCheckUpdates:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-direct {v0, v3, v2, p1, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;Ljava/lang/String;Z)V

    .line 73
    .local v0, "helper":Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mCheckUpdateUIHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 41
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    const v3, 0x7f10004c

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->tivCheckUpdate:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 43
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    const v3, 0x7f100053

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->llCheckUpdates:Landroid/widget/LinearLayout;

    .line 45
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->tivCheckUpdate:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setArrowVisibility(I)V

    .line 46
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->tivCheckUpdate:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    new-instance v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper$1;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->addCheckUpdate(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mSubApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->addCheckUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->performCheckUpdatesOnCreate()V

    .line 58
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->performCheckUpdatesRefreshLocalAppInfo()V

    .line 94
    return-void
.end method

.method performCheckUpdatesOnCreate()V
    .locals 3

    .prologue
    .line 77
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mCheckUpdateUIHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;

    .line 78
    .local v0, "helper":Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->onCreate()V

    goto :goto_0

    .line 80
    .end local v0    # "helper":Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;
    :cond_0
    return-void
.end method

.method performCheckUpdatesRefreshLocalAppInfo()V
    .locals 3

    .prologue
    .line 82
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mCheckUpdateUIHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;

    .line 83
    .local v0, "helper":Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->refreshLocalAppInfo()V

    goto :goto_0

    .line 85
    .end local v0    # "helper":Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;
    :cond_0
    return-void
.end method

.method performCheckUpdatesRefreshUpdateViews()V
    .locals 3

    .prologue
    .line 87
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->mCheckUpdateUIHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;

    .line 88
    .local v0, "helper":Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->refreshUpdateViews()V

    goto :goto_0

    .line 90
    .end local v0    # "helper":Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;
    :cond_0
    return-void
.end method

.method public refreshUpdateViews()V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;->performCheckUpdatesRefreshUpdateViews()V

    .line 104
    return-void
.end method
