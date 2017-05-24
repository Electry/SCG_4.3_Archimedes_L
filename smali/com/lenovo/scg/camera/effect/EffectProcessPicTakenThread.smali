.class public Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;
.super Landroid/os/HandlerThread;
.source "EffectProcessPicTakenThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final COLOR_CONVERT_SCALE:I = 0x4

.field public static final DECODE_JPEGTOYUV:I = 0x5

.field public static final EFFECTMODE_ENTER:I = 0x1

.field public static final EFFECTMODE_EXIT:I = 0x3

.field public static final PROCESS_PICTAKEN_DATA:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mPictureHeight:I

.field private mPictureWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "EffectProcessPicTakenThread"

    sput-object v0, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v0, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "new  EffectProcessPicTakenThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    sget-object v2, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v6, 0x0

    .line 45
    .local v6, "scaleWidth":I
    const/4 v7, 0x0

    .line 46
    .local v7, "scaleHeight":I
    const/4 v10, 0x0

    .line 47
    .local v10, "effectHandler":Landroid/os/Handler;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 50
    :pswitch_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;->mPictureWidth:I

    .line 51
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;->mPictureHeight:I

    goto :goto_0

    .line 55
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 61
    :pswitch_3
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 62
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    .line 63
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    .local v13, "handlerObj":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    .line 65
    .local v14, "jpegBundle":Landroid/os/Bundle;
    const-string v2, "EFFECT_JPEG_DATA"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 66
    .local v15, "jpegData":[B
    sget v2, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    invoke-static {v15, v6, v7, v2}, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->JPEG2YUVNoRotate([BIII)[B

    move-result-object v9

    .line 67
    .local v9, "decodeYuv":[B
    const/4 v15, 0x0

    .line 68
    const-string v2, "EFFECT_EXIF_ORIENTATION"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 69
    .local v17, "orientation":I
    const/16 v2, 0x5a

    move/from16 v0, v17

    if-ne v0, v2, :cond_0

    .line 71
    sget-object v2, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "orientation == 90"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    sget-object v2, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DECODE_JPEGTOYUV finished decodeYuv "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  decodeYuv length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v13

    .line 74
    check-cast v10, Landroid/os/Handler;

    .line 75
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 76
    .local v11, "effectMessage":Landroid/os/Message;
    iput-object v9, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    const/16 v2, 0x65

    iput v2, v11, Landroid/os/Message;->what:I

    .line 78
    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 83
    .end local v9    # "decodeYuv":[B
    .end local v11    # "effectMessage":Landroid/os/Message;
    .end local v13    # "handlerObj":Ljava/lang/Object;
    .end local v14    # "jpegBundle":Landroid/os/Bundle;
    .end local v15    # "jpegData":[B
    .end local v17    # "orientation":I
    :pswitch_4
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 84
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    .line 85
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 86
    .local v16, "obj":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 87
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v2, "EFFECT_YUV_DATA"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 88
    .local v1, "yuvData":[B
    sget-object v2, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;->mPictureWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;->mPictureHeight:I

    sget-object v5, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    invoke-static/range {v1 .. v7}, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->ColorConvertScale([BLcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;IILcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;II)[B

    move-result-object v18

    .line 90
    .local v18, "scaleYuvData":[B
    sget-object v2, Lcom/lenovo/scg/camera/effect/EffectProcessPicTakenThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_CONVERT_SCALE finished scaleYuvData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  scaleYuvData length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, v16

    .line 92
    check-cast v10, Landroid/os/Handler;

    .line 93
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 94
    .local v12, "effectMsg":Landroid/os/Message;
    move-object/from16 v0, v18

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 95
    const/16 v2, 0x65

    iput v2, v12, Landroid/os/Message;->what:I

    .line 96
    invoke-virtual {v10, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
