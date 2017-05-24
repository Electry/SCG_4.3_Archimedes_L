.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/TwoLineListItemView;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;
.source "TwoLineListItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected createContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 23
    const v0, 0x7f040005

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getListItemViewHeight()I
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/TwoLineListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public setArrowRes(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/TwoLineListItemView;->ivArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/TwoLineListItemView;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    :cond_0
    return-void
.end method
