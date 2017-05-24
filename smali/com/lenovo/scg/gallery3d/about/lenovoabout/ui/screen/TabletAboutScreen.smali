.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;
.super Ljava/lang/Object;
.source "TabletAboutScreen.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/AboutScreen;


# instance fields
.field llListTop:Landroid/widget/LinearLayout;

.field mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

.field tivCheckUpdate:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    .line 20
    return-void
.end method


# virtual methods
.method public displayList(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    .line 37
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->tivCheckUpdate:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->setListTopItemChecked(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;Z)V

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->setListIndex(I)V

    .line 44
    return-void

    .line 39
    :cond_1
    if-ne p1, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->setListTopItemChecked(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;Z)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 24
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-direct {v0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, "localAppInfo":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    const v3, 0x7f100056

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 26
    .local v1, "tvEmpty":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    const v3, 0x7f100048

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->llListTop:Landroid/widget/LinearLayout;

    .line 28
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    const v3, 0x7f10004a

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 29
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    const v3, 0x7f10004c

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->tivCheckUpdate:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 31
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method

.method setListTopItemChecked(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;Z)V
    .locals 4
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;
    .param p2, "checked"    # Z

    .prologue
    .line 53
    invoke-virtual {p1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setChecked(Z)V

    .line 55
    if-eqz p2, :cond_1

    .line 56
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->llListTop:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 57
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 58
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;->llListTop:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    if-eqz v3, :cond_0

    if-eq v0, p1, :cond_0

    .line 60
    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .end local v0    # "child":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setChecked(Z)V

    .line 57
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "count":I
    .end local v2    # "index":I
    :cond_1
    return-void
.end method
