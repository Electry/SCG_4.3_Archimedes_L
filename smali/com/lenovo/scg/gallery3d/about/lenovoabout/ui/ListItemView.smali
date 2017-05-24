.class public abstract Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;
.super Landroid/widget/LinearLayout;
.source "ListItemView.java"


# instance fields
.field protected ivArrow:Landroid/widget/ImageView;

.field protected mCheckedColor:I

.field protected mNormalColor:Landroid/content/res/ColorStateList;

.field protected tvSummary:Landroid/widget/TextView;

.field protected tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v1, 0x1

    .line 34
    .local v1, "isShowArrow":Z
    const/4 v2, 0x1

    .line 35
    .local v2, "isShowSummary":Z
    const-string v5, ""

    .line 36
    .local v5, "titleValue":Ljava/lang/String;
    const-string v3, ""

    .line 38
    .local v3, "summaryValue":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 39
    sget-object v7, Lcom/lenovo/scg/R$styleable;->ABListItemView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 41
    .local v4, "ta":Landroid/content/res/TypedArray;
    const/4 v7, 0x2

    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 42
    const/4 v7, 0x3

    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 43
    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    .end local v4    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->createContentView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "contentView":Landroid/view/View;
    const v7, 0x7f10005a

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->tvTitle:Landroid/widget/TextView;

    .line 54
    const v7, 0x7f100061

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->tvSummary:Landroid/widget/TextView;

    .line 55
    const v7, 0x7f10005f

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->ivArrow:Landroid/widget/ImageView;

    .line 57
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->ivArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->tvSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    move v9, v8

    :cond_1
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setTitle(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSummary(Ljava/lang/String;)V

    .line 64
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->getListItemViewHeight()I

    move-result v10

    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {p0, v11}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setClickable(Z)V

    .line 68
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 69
    .local v6, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v9, 0x7f0100c4

    invoke-virtual {v7, v9, v6, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 70
    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setBackgroundResource(I)V

    .line 72
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v9, 0x7f010019

    invoke-virtual {v7, v9, v6, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 73
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v9, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->mNormalColor:Landroid/content/res/ColorStateList;

    .line 74
    const-string v7, "#2cadf1"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->mCheckedColor:I

    .line 76
    invoke-virtual {p0, v11}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setFocusable(Z)V

    .line 77
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setFocusableInTouchMode(Z)V

    .line 79
    new-instance v7, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView$1;

    invoke-direct {v7, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;)V

    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 85
    return-void

    .end local v6    # "tv":Landroid/util/TypedValue;
    :cond_2
    move v7, v9

    .line 57
    goto :goto_0
.end method


# virtual methods
.method public copy(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;)V
    .locals 1
    .param p1, "from"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setTitle(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->getSummary()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSummary(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setTitleVisibility(I)V

    .line 132
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->getSummary()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSummaryVisibility(I)V

    .line 133
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->getArrow()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setArrowVisibility(I)V

    .line 134
    return-void
.end method

.method protected abstract createContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public getArrow()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->ivArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public abstract getListItemViewHeight()I
.end method

.method public getSummary()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->tvSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public setArrowVisibility(I)V
    .locals 1
    .param p1, "visiblity"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->tvTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->mCheckedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->tvSummary:Landroid/widget/TextView;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->mCheckedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->mNormalColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->tvSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->mNormalColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->tvSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->tvSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public setSummaryVisibility(I)V
    .locals 1
    .param p1, "visiblity"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->tvSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "textResId"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 127
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 1
    .param p1, "visiblity"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    return-void
.end method
