.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$16;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 2257
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$16;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWbGroupGetFinished(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/16 v4, 0x8

    .line 2272
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$16;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mTabCur:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1200(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move-object v1, p1

    .line 2273
    check-cast v1, Landroid/view/ViewGroup;

    .line 2274
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2277
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$16;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1100(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    const v3, 0x7f100a36

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2278
    .local v0, "rlRightMenuWb":Landroid/widget/RelativeLayout;
    const v2, 0x7f100a37

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2279
    const v2, 0x7f100a38

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2280
    return-void
.end method

.method public onWbGroupPicListGetEnd()V
    .locals 3

    .prologue
    .line 2293
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$16;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1100(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f100a36

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2294
    .local v0, "rlRightMenuWb":Landroid/widget/RelativeLayout;
    const v1, 0x7f100a37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2295
    const v1, 0x7f100a38

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2296
    return-void
.end method

.method public onWbGroupPicListGetStart()V
    .locals 3

    .prologue
    .line 2285
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$16;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1100(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f100a36

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2286
    .local v0, "rlRightMenuWb":Landroid/widget/RelativeLayout;
    const v1, 0x7f100a37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2287
    const v1, 0x7f100a38

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2288
    return-void
.end method

.method public onWbGroupSelectChanged()V
    .locals 5

    .prologue
    .line 2262
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$16;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->getGroupSelectCur()Ljava/lang/String;

    move-result-object v1

    .line 2263
    .local v1, "sName":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$16;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1100(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f100a36

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2264
    .local v0, "rlRightMenuWb":Landroid/widget/RelativeLayout;
    const v3, 0x7f100a37

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2265
    .local v2, "tvName":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2266
    return-void
.end method
