.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/NormalAboutScreen;
.super Ljava/lang/Object;
.source "NormalAboutScreen.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/AboutScreen;


# instance fields
.field mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/NormalAboutScreen;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    .line 11
    return-void
.end method


# virtual methods
.method public displayList(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/NormalAboutScreen;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->setListIndex(I)V

    .line 22
    if-eqz p1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/NormalAboutScreen;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->hideCenterView()V

    .line 28
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 39
    :goto_1
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/NormalAboutScreen;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->showCenterView()V

    goto :goto_0

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/NormalAboutScreen;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    const v1, 0x7f0f0216

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->setTitle(I)V

    goto :goto_1

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/NormalAboutScreen;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    const v1, 0x7f0f099b

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->setTitle(I)V

    goto :goto_1

    .line 36
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/NormalAboutScreen;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    const v1, 0x7f0f098d

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->setTitle(I)V

    goto :goto_1

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/NormalAboutScreen;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->getListIndex()I

    move-result v0

    .line 44
    .local v0, "list_index":I
    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 46
    :cond_0
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/NormalAboutScreen;->displayList(I)V

    move v1, v2

    .line 49
    :cond_1
    return v1
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method
