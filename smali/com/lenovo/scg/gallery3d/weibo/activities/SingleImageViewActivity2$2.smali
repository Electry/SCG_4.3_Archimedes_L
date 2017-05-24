.class Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$2;
.super Landroid/os/Handler;
.source "SingleImageViewActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 514
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 537
    :goto_0
    return-void

    .line 522
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    .line 523
    .local v1, "mGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 524
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 525
    .local v3, "mView":Landroid/widget/ImageView;
    const v4, 0x7f020615

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 529
    .end local v3    # "mView":Landroid/widget/ImageView;
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->select_id:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 530
    .local v2, "mImageView":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 514
    :pswitch_data_0
    .packed-switch 0x20001
        :pswitch_0
    .end packed-switch
.end method
