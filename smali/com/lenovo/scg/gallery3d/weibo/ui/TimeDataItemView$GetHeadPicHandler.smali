.class Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;
.super Landroid/os/Handler;
.source "TimeDataItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetHeadPicHandler"
.end annotation


# static fields
.field public static final MSG_GET_COMMENT_DONE:I = 0x2

.field public static final MSG_GET_PIC_FROM_FILE:I = 0x0

.field public static final MSG_GET_PIC_FROM_NET:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)V
    .locals 0

    .prologue
    .line 924
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 933
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 935
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 936
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 937
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->canNofity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 941
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 943
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    .line 944
    .local v1, "imgView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 945
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 946
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 951
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "imgView":Landroid/widget/ImageView;
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 952
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 953
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->canNofity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 959
    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    .line 960
    .restart local v1    # "imgView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 961
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 962
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 967
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "imgView":Landroid/widget/ImageView;
    :pswitch_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 968
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 969
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->canNofity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 973
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 933
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
