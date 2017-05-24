.class Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;
.super Landroid/os/Handler;
.source "SmartEngineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/smartengine/SmartEngineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 916
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 921
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 924
    :pswitch_0
    const/4 v15, 0x0

    .line 925
    .local v15, "bmDst":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    .line 927
    .local v2, "bmpPreview":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v21, v3, v4

    .line 928
    .local v21, "size":I
    const-string/jumbo v3, "panhui1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage, HANDLE_MESSAGE_QRCODE, bmpPreview size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const v3, 0x89800

    move/from16 v0, v21

    if-le v0, v3, :cond_2

    .line 941
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 942
    .local v7, "m":Landroid/graphics/Matrix;
    move/from16 v0, v21

    int-to-float v3, v0

    const v4, 0x49098000    # 563200.0f

    div-float v20, v3, v4

    .line 943
    .local v20, "rate":F
    const-string v3, "[smart_app]SmartEngineView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage, HANDLE_MESSAGE_QRCODE, compress rate11 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/high16 v3, 0x3e800000    # 0.25f

    cmpg-float v3, v20, v3

    if-gtz v3, :cond_1

    .line 945
    const/high16 v20, 0x3e800000    # 0.25f

    .line 947
    :cond_1
    const-string v3, "[smart_app]SmartEngineView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage, HANDLE_MESSAGE_QRCODE, compress rate22 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    move/from16 v0, v20

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 950
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 951
    const-string/jumbo v3, "panhui1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage, HANDLE_MESSAGE_QRCODE, bmDst size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    .end local v7    # "m":Landroid/graphics/Matrix;
    .end local v20    # "rate":F
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 961
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 964
    :cond_3
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 965
    .local v17, "intent":Landroid/content/Intent;
    const-string v3, "com.lenovo.scg.minicamera.qrcode.start"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 966
    const-string v3, "bm"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 969
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$100(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 970
    :catch_0
    move-exception v16

    .line 971
    .local v16, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "panhui1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 977
    .end local v2    # "bmpPreview":Landroid/graphics/Bitmap;
    .end local v15    # "bmDst":Landroid/graphics/Bitmap;
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v21    # "size":I
    :pswitch_1
    const/4 v15, 0x0

    .line 978
    .restart local v15    # "bmDst":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Bitmap;

    .line 979
    .local v8, "bmpPreviewWithClip":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v19, v3, v4

    .line 980
    .local v19, "previewWithClipSize":I
    const-string/jumbo v3, "panhui1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage, HANDLE_MESSAGE_QRCODE_WITH_CLIP, bmpPreview size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const v3, 0x89800

    move/from16 v0, v19

    if-le v0, v3, :cond_5

    .line 984
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 986
    .restart local v7    # "m":Landroid/graphics/Matrix;
    const v3, 0x49098000    # 563200.0f

    move/from16 v0, v19

    int-to-float v4, v0

    div-float v20, v3, v4

    .line 987
    .restart local v20    # "rate":F
    const-string/jumbo v3, "panhui1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage, HANDLE_MESSAGE_QRCODE_WITH_CLIP, compress rate11 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/high16 v3, 0x3e800000    # 0.25f

    cmpg-float v3, v20, v3

    if-gtz v3, :cond_4

    .line 989
    const/high16 v20, 0x3e800000    # 0.25f

    .line 991
    :cond_4
    const-string/jumbo v3, "panhui1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage, HANDLE_MESSAGE_QRCODE_WITH_CLIP, compress rate22 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    move/from16 v0, v20

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 993
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x1

    move-object v13, v7

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 994
    const-string/jumbo v3, "panhui1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage, HANDLE_MESSAGE_QRCODE_WITH_CLIP, bmDst size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    .end local v7    # "m":Landroid/graphics/Matrix;
    .end local v20    # "rate":F
    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1004
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 1007
    :cond_6
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 1008
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v3, "com.lenovo.scg.minicamera.qrcode.start"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    const-string v3, "bm"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1011
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$100(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1012
    :catch_1
    move-exception v16

    .line 1013
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "panhui1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1019
    .end local v8    # "bmpPreviewWithClip":Landroid/graphics/Bitmap;
    .end local v15    # "bmDst":Landroid/graphics/Bitmap;
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v19    # "previewWithClipSize":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    # invokes: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->updateProSmartInfo()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$200(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)V

    goto/16 :goto_0

    .line 1022
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    const/4 v4, 0x1

    # invokes: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->showQrcView(Z)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$300(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;Z)V

    goto/16 :goto_0

    .line 1025
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    const/4 v4, 0x0

    # invokes: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->showQrcView(Z)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$300(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;Z)V

    goto/16 :goto_0

    .line 1028
    :pswitch_5
    invoke-static {}, Lcom/lenovo/scg/common/animation/SmartAnimation;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    # --operator for: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mjitteringChangeTimeoutTimes:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$406(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)I

    move-result v3

    if-lez v3, :cond_7

    .line 1029
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$000(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1030
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$000(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 1031
    .local v18, "msgNext":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$000(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x64

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1036
    .end local v18    # "msgNext":Landroid/os/Message;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->onUIPreviewJitteringChange(I)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$500(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;I)V

    goto/16 :goto_0

    .line 1040
    :pswitch_6
    invoke-static {}, Lcom/lenovo/scg/common/animation/SmartAnimation;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    # --operator for: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSceneChangeTimeoutTimes:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$606(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)I

    move-result v3

    if-lez v3, :cond_8

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$000(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$000(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 1043
    .restart local v18    # "msgNext":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1044
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$000(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x64

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1049
    .end local v18    # "msgNext":Landroid/os/Message;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->onUIPreviewSceneChange(I)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$700(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;I)V

    goto/16 :goto_0

    .line 921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
