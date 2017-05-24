.class Lcom/lenovo/scg/common/ui/ScrollLayout$11;
.super Ljava/lang/Object;
.source "ScrollLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/ui/ScrollLayout;->initViews(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/ui/ScrollLayout;I)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    iput p2, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 392
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mHiItemImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$1400(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 393
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mHiItemImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$1400(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$1500(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020475

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 396
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mHiItemText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$1600(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 397
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mHiItemText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$1600(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$1500(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020477

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 398
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mHiItemText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$1600(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$1500(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 400
    :cond_1
    const v2, 0x7f1003dd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 402
    .local v0, "image":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 403
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$1500(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020476

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 405
    :cond_2
    const v2, 0x7f1003de

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 406
    .local v1, "text":Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 407
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$1500(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020478

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 408
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$1500(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # setter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mHiItemImage:Landroid/widget/ImageView;
    invoke-static {v2, v0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$1402(Lcom/lenovo/scg/common/ui/ScrollLayout;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 411
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # setter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mHiItemText:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$1602(Lcom/lenovo/scg/common/ui/ScrollLayout;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 412
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mOnViewClickListener:Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;
    invoke-static {v2}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$1700(Lcom/lenovo/scg/common/ui/ScrollLayout;)Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 413
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mOnViewClickListener:Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;
    invoke-static {v2}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$1700(Lcom/lenovo/scg/common/ui/ScrollLayout;)Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$11;->val$index:I

    invoke-interface {v2, v3}, Lcom/lenovo/scg/common/ui/ScrollLayout$OnViewClickListener;->onViewClick(I)V

    .line 415
    :cond_4
    return-void
.end method
