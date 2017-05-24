.class Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;
.super Landroid/os/Handler;
.source "ImageViewGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPicHandler"
.end annotation


# static fields
.field public static final MSG_GET_PIC_FROM_FILE:I = 0x0

.field public static final MSG_GET_PIC_FROM_NET:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$1;

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 807
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 809
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mParentAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/widget/BaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 810
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 811
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->canNofity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 815
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mParentAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 817
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    .line 818
    .local v1, "imgView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 819
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 820
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 825
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "imgView":Landroid/widget/ImageView;
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mParentAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/widget/BaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 826
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 827
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->canNofity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 831
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$GetPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mParentAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 833
    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    .line 834
    .restart local v1    # "imgView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 835
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 836
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 807
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
