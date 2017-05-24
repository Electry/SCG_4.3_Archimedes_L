.class Lcom/lenovo/scg/camera/mode/StrobeMode$1;
.super Landroid/os/Handler;
.source "StrobeMode.java"


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
    .line 137
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0x13

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 141
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 143
    :sswitch_0
    const-string v3, "StrobeMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AREA_NUMBER_RETURN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArraylength:I

    .line 145
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    # setter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I
    invoke-static {v4, v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$002(Lcom/lenovo/scg/camera/mode/StrobeMode;[I)[I

    .line 146
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    iget v4, p1, Landroid/os/Message;->arg1:I

    new-array v4, v4, [Landroid/graphics/Bitmap;

    # setter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaBitmapArray:[Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$102(Lcom/lenovo/scg/camera/mode/StrobeMode;[Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    .line 147
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    iget v3, v3, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArraylength:I

    if-gt v3, v8, :cond_0

    .line 148
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 149
    .local v1, "m1":Landroid/os/Message;
    iput v10, v1, Landroid/os/Message;->what:I

    .line 150
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$200(Lcom/lenovo/scg/camera/mode/StrobeMode;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    sget-object v4, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    # invokes: Lcom/lenovo/scg/camera/mode/StrobeMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$300(Lcom/lenovo/scg/camera/mode/StrobeMode;Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V

    goto :goto_0

    .line 155
    .end local v1    # "m1":Landroid/os/Message;
    :sswitch_1
    const-string v3, "StrobeMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMAGE_INDEX_RETURN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mProcessImageListNumber:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$402(Lcom/lenovo/scg/camera/mode/StrobeMode;I)I

    .line 157
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    # setter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mProcessImageList:[I
    invoke-static {v4, v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$502(Lcom/lenovo/scg/camera/mode/StrobeMode;[I)[I

    .line 158
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # invokes: Lcom/lenovo/scg/camera/mode/StrobeMode;->requestCache()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$600(Lcom/lenovo/scg/camera/mode/StrobeMode;)V

    goto/16 :goto_0

    .line 161
    :sswitch_2
    const-string v3, "StrobeMode"

    const-string v4, "PREIVEW_BP_RETURN"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$700(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$700(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 165
    :sswitch_3
    const-string v3, "StrobeMode"

    const-string v4, "FINAL_IMAGE_RETURN"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$800(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;->reset()V

    .line 167
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mLongLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$900(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->stopAnim()V

    .line 168
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    sget-object v4, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    # invokes: Lcom/lenovo/scg/camera/mode/StrobeMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$300(Lcom/lenovo/scg/camera/mode/StrobeMode;Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V

    .line 169
    new-instance v2, Lcom/lenovo/scg/camera/MediaSavePara;

    invoke-direct {v2}, Lcom/lenovo/scg/camera/MediaSavePara;-><init>()V

    .line 170
    .local v2, "para":Lcom/lenovo/scg/camera/MediaSavePara;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iput-object v3, v2, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    .line 171
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    .line 172
    iget v3, p1, Landroid/os/Message;->arg2:I

    iput v3, v2, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    .line 173
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->getSavePicType()Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/scg/camera/MediaSavePara;->type:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    .line 174
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsLandScapeShooting:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1000(Lcom/lenovo/scg/camera/mode/StrobeMode;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    iput v6, v2, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    .line 178
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1100(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->modeMediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V

    goto/16 :goto_0

    .line 177
    :cond_1
    const/16 v3, 0x5a

    iput v3, v2, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    goto :goto_1

    .line 181
    .end local v2    # "para":Lcom/lenovo/scg/camera/MediaSavePara;
    :sswitch_4
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$800(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$800(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;->startMulitiFrameAnim()V

    goto/16 :goto_0

    .line 187
    :sswitch_5
    const-string v4, "StrobeMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "image "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " rect: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v3, v3, v7

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v3, v3, v8

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v3, v3, v9

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, "m":Landroid/os/Message;
    const/16 v3, 0x12

    iput v3, v0, Landroid/os/Message;->what:I

    .line 192
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 193
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v4, v3, v8

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v3, v3, v6

    sub-int v3, v4, v3

    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 194
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v4, v3, v9

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v3, v3, v7

    sub-int v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 195
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$200(Lcom/lenovo/scg/camera/mode/StrobeMode;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 198
    .end local v0    # "m":Landroid/os/Message;
    :sswitch_6
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaBitmapArray:[Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$100(Lcom/lenovo/scg/camera/mode/StrobeMode;)[Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    aput-object v3, v4, v5

    .line 199
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # operator++ for: Lcom/lenovo/scg/camera/mode/StrobeMode;->gotBitmap:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1208(Lcom/lenovo/scg/camera/mode/StrobeMode;)I

    .line 200
    const-string v3, "StrobeMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TARGET_BITMAP_RETURN index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gotBitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->gotBitmap:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1200(Lcom/lenovo/scg/camera/mode/StrobeMode;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->gotBitmap:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1200(Lcom/lenovo/scg/camera/mode/StrobeMode;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    iget v4, v4, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArraylength:I

    if-ne v3, v4, :cond_0

    .line 202
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 203
    .restart local v1    # "m1":Landroid/os/Message;
    iput v10, v1, Landroid/os/Message;->what:I

    .line 204
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$200(Lcom/lenovo/scg/camera/mode/StrobeMode;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    sget-object v4, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    # invokes: Lcom/lenovo/scg/camera/mode/StrobeMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$300(Lcom/lenovo/scg/camera/mode/StrobeMode;Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V

    goto/16 :goto_0

    .line 209
    .end local v1    # "m1":Landroid/os/Message;
    :sswitch_7
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mWaitRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1300(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/common/ui/RotateTips;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    iget-object v3, v3, Lcom/lenovo/scg/camera/mode/StrobeMode;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1100(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mWaitRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1300(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/common/ui/RotateTips;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    iget-object v4, v4, Lcom/lenovo/scg/camera/mode/StrobeMode;->mContext:Landroid/content/Context;

    const v5, 0x7f0f04d0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;
    invoke-static {v5}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1100(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    move-result-object v5

    invoke-interface {v5}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getOrientation()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v7}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;IIZ)V

    goto/16 :goto_0

    .line 213
    :sswitch_8
    const-string v3, "StrobeMode"

    const-string v4, "UPDATE_INFINITY_FOCUS_MODE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1100(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoModule;->cancelAutoFocus()V

    .line 215
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1100(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v3

    const-string/jumbo v4, "off"

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlash(Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1100(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->commitParameters()Landroid/hardware/Camera$Parameters;

    goto/16 :goto_0

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xd -> :sswitch_1
        0xf -> :sswitch_5
        0x10 -> :sswitch_6
        0x3e8 -> :sswitch_7
        0x3e9 -> :sswitch_8
    .end sparse-switch
.end method
