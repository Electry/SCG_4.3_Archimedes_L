.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SingleLineListItemView;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;
.source "SingleLineListItemView.java"


# instance fields
.field tvColon:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const v2, 0x7f100060

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SingleLineListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SingleLineListItemView;->tvColon:Landroid/widget/TextView;

    .line 20
    sget-object v2, Lcom/lenovo/scg/R$styleable;->ABListItemView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 21
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 22
    .local v0, "isShowSummary":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SingleLineListItemView;->tvColon:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    return-void

    .line 24
    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected createContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 34
    const v0, 0x7f040004

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getListItemViewHeight()I
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SingleLineListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public setArrowRes(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SingleLineListItemView;->ivArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SingleLineListItemView;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    :cond_0
    return-void
.end method

.method public setSummaryVisibility(I)V
    .locals 1
    .param p1, "visiblity"    # I

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSummaryVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SingleLineListItemView;->tvColon:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    return-void
.end method
