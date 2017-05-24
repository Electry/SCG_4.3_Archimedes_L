.class public Lcom/lenovo/scg/gallery3d/weibo/ui/ListViewGroup;
.super Landroid/widget/ListView;
.source "ListViewGroup.java"


# instance fields
.field private mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ListViewGroup;->mMaxHeight:I

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ListViewGroup;->mMaxHeight:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ListViewGroup;->mMaxHeight:I

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ListViewGroup;->mMaxHeight:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ListViewGroup;->mMaxHeight:I

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ListViewGroup;->mMaxHeight:I

    .line 26
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 36
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ListViewGroup;->mMaxHeight:I

    if-lez v0, :cond_0

    .line 38
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ListViewGroup;->mMaxHeight:I

    if-le p2, v0, :cond_0

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 44
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "nMaxHeight"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ListViewGroup;->mMaxHeight:I

    .line 30
    return-void
.end method
