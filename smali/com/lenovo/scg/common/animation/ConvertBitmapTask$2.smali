.class Lcom/lenovo/scg/common/animation/ConvertBitmapTask$2;
.super Ljava/lang/Object;
.source "ConvertBitmapTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->getBitmap([BIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/animation/ConvertBitmapTask;

.field final synthetic val$height:I

.field final synthetic val$orientation:I

.field final synthetic val$width:I

.field final synthetic val$yuvData:[B


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/animation/ConvertBitmapTask;[BIII)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$2;->this$0:Lcom/lenovo/scg/common/animation/ConvertBitmapTask;

    iput-object p2, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$2;->val$yuvData:[B

    iput p3, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$2;->val$width:I

    iput p4, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$2;->val$height:I

    iput p5, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$2;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 66
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$2;->this$0:Lcom/lenovo/scg/common/animation/ConvertBitmapTask;

    iget-object v2, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$2;->val$yuvData:[B

    iget v3, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$2;->val$width:I

    iget v4, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$2;->val$height:I

    iget v5, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$2;->val$orientation:I

    # invokes: Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->converBitmap([BIII)Landroid/graphics/Bitmap;
    invoke-static {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->access$100(Lcom/lenovo/scg/common/animation/ConvertBitmapTask;[BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$2;->this$0:Lcom/lenovo/scg/common/animation/ConvertBitmapTask;

    # getter for: Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->access$200(Lcom/lenovo/scg/common/animation/ConvertBitmapTask;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 68
    return-void
.end method
