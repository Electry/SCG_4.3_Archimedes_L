.class Lcom/lenovo/scg/common/animation/ConvertBitmapTask$1;
.super Landroid/os/Handler;
.source "ConvertBitmapTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/animation/ConvertBitmapTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/animation/ConvertBitmapTask;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/animation/ConvertBitmapTask;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$1;->this$0:Lcom/lenovo/scg/common/animation/ConvertBitmapTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 47
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$1;->this$0:Lcom/lenovo/scg/common/animation/ConvertBitmapTask;

    # invokes: Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->returnBitmap(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->access$000(Lcom/lenovo/scg/common/animation/ConvertBitmapTask;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
