.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$2;
.super Landroid/os/Handler;
.source "WhiteListAllAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 221
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    .line 224
    .local v0, "imageview":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 228
    .end local v0    # "imageview":Landroid/widget/ImageView;
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
