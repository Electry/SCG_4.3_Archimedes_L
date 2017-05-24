.class Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;
.super Ljava/lang/Object;
.source "TimeDataItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 706
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    .line 707
    .local v1, "imgHead":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;

    .line 708
    .local v0, "ci":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    const v3, 0x7f100004

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 709
    .local v2, "nPos":I
    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->nPos:I

    .line 710
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Landroid/widget/BaseAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 711
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 713
    :cond_0
    return-void
.end method
