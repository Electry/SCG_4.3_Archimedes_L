.class Lcom/lenovo/scg/camera/mode/StrobeMode$3;
.super Ljava/lang/Object;
.source "StrobeMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/StrobeMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/StrobeMode;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 703
    const-string v3, "StrobeMode"

    const-string/jumbo v4, "onSaveClick"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$200(Lcom/lenovo/scg/camera/mode/StrobeMode;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 705
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->tips:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1600(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/common/ui/RotateTips;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 706
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->tips:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1600(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/common/ui/RotateTips;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/common/ui/RotateTips;->hideTips()V

    .line 707
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    const/4 v4, 0x0

    # setter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->tips:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1602(Lcom/lenovo/scg/camera/mode/StrobeMode;Lcom/lenovo/scg/common/ui/RotateTips;)Lcom/lenovo/scg/common/ui/RotateTips;

    .line 709
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mLongLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$900(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->startAnim(Z)V

    .line 711
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mProcessImageListNumber:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$400(Lcom/lenovo/scg/camera/mode/StrobeMode;)I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 712
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mProcessImageList:[I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$500(Lcom/lenovo/scg/camera/mode/StrobeMode;)[I

    move-result-object v3

    aget v3, v3, v1

    if-eq v3, v7, :cond_1

    .line 713
    const-string v3, "StrobeMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "invlaild image"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 717
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x6

    iput v3, v2, Landroid/os/Message;->what:I

    .line 718
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 719
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoBufferThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1700(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->getBufferDataByIndex(I)[B

    move-result-object v0

    .line 720
    .local v0, "data":[B
    if-nez v0, :cond_2

    .line 721
    iput v6, v2, Landroid/os/Message;->arg2:I

    .line 722
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$800(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getCacheData(I)[B

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 727
    :goto_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$200(Lcom/lenovo/scg/camera/mode/StrobeMode;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 724
    :cond_2
    iput v7, v2, Landroid/os/Message;->arg2:I

    .line 725
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2

    .line 730
    .end local v0    # "data":[B
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 731
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 732
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$200(Lcom/lenovo/scg/camera/mode/StrobeMode;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 733
    return-void
.end method
