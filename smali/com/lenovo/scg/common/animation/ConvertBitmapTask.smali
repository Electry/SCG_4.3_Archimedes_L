.class public Lcom/lenovo/scg/common/animation/ConvertBitmapTask;
.super Ljava/lang/Object;
.source "ConvertBitmapTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/animation/ConvertBitmapTask$Callback;
    }
.end annotation


# static fields
.field private static final BITMAP_OBJ:Ljava/lang/String; = "BITMAP_OBJ"

.field private static final RETURN_BITMAP:I = 0x1


# instance fields
.field private mCallback:Lcom/lenovo/scg/common/animation/ConvertBitmapTask$Callback;

.field private mContext:Landroid/content/Context;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 40
    new-instance v0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$1;-><init>(Lcom/lenovo/scg/common/animation/ConvertBitmapTask;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/common/animation/ConvertBitmapTask;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ConvertBitmapTask;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->returnBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/common/animation/ConvertBitmapTask;[BIII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ConvertBitmapTask;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->converBitmap([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/common/animation/ConvertBitmapTask;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/ConvertBitmapTask;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private converBitmap([BIII)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "yuvData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 88
    :try_start_0
    new-instance v2, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-direct {v2}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;-><init>()V

    .line 95
    .local v2, "pColorConvert":Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090322

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v16, v0

    .line 96
    .local v16, "scaleWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090323

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v15, v3

    .line 97
    .local v15, "scaleHeight":I
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_0

    .line 98
    move v12, v15

    .line 99
    .local v12, "newWidth":I
    move/from16 v15, v16

    .line 100
    move/from16 v16, v12

    .line 102
    .end local v12    # "newWidth":I
    :cond_0
    const/high16 v14, 0x3f800000    # 1.0f

    .line 103
    .local v14, "scale":F
    move/from16 v0, v16

    int-to-float v3, v0

    move/from16 v0, p2

    int-to-float v4, v0

    div-float v17, v3, v4

    .line 104
    .local v17, "widthScale":F
    int-to-float v3, v15

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v11, v3, v4

    .line 105
    .local v11, "heightScale":F
    cmpl-float v3, v17, v11

    if-lez v3, :cond_2

    .line 106
    move/from16 v14, v17

    .line 110
    :goto_0
    const-string v3, "jiaxiaowei"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "width*scale:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    int-to-float v5, v0

    mul-float/2addr v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",height*scale:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    int-to-float v5, v0

    mul-float/2addr v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v7, 0x0

    .line 113
    .local v7, "bmp":Landroid/graphics/Bitmap;
    move/from16 v0, p2

    int-to-float v3, v0

    mul-float/2addr v3, v14

    float-to-int v3, v3

    move/from16 v0, p3

    int-to-float v4, v0

    mul-float/2addr v4, v14

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 114
    invoke-virtual {v2}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Init()Z

    .line 115
    sget-object v6, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ImageConvertToScaleBitmap([BIILcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;Landroid/graphics/Bitmap;)V

    .line 117
    invoke-virtual {v2}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Finish()V

    .line 118
    const/4 v2, 0x0

    .line 120
    move/from16 v0, p4

    rem-int/lit16 v3, v0, 0xb4

    if-nez v3, :cond_3

    .line 121
    add-int/lit8 v3, p4, 0x5a

    const/4 v4, 0x1

    invoke-static {v7, v3, v4}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 126
    :goto_1
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 127
    .local v8, "bmp565":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 128
    .local v13, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 129
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    .line 130
    .local v9, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v9, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9, v7, v3, v4, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    const/4 v7, 0x0

    .line 140
    .end local v2    # "pColorConvert":Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "bmp565":Landroid/graphics/Bitmap;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v11    # "heightScale":F
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "scale":F
    .end local v15    # "scaleHeight":I
    .end local v16    # "scaleWidth":I
    .end local v17    # "widthScale":F
    :cond_1
    :goto_2
    return-object v8

    .line 108
    .restart local v2    # "pColorConvert":Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;
    .restart local v11    # "heightScale":F
    .restart local v14    # "scale":F
    .restart local v15    # "scaleHeight":I
    .restart local v16    # "scaleWidth":I
    .restart local v17    # "widthScale":F
    :cond_2
    move v14, v11

    goto/16 :goto_0

    .line 123
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    move/from16 v0, p4

    add-int/lit16 v3, v0, 0xb4

    const/4 v4, 0x1

    invoke-static {v7, v3, v4}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    .line 137
    .end local v2    # "pColorConvert":Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v11    # "heightScale":F
    .end local v14    # "scale":F
    .end local v15    # "scaleHeight":I
    .end local v16    # "scaleWidth":I
    .end local v17    # "widthScale":F
    :catch_0
    move-exception v10

    .line 138
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private returnBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->mCallback:Lcom/lenovo/scg/common/animation/ConvertBitmapTask$Callback;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->mCallback:Lcom/lenovo/scg/common/animation/ConvertBitmapTask$Callback;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$Callback;->onPostExecute(Landroid/graphics/Bitmap;)V

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public getBitmap([BIII)V
    .locals 7
    .param p1, "yuvData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 62
    iget-object v6, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/common/animation/ConvertBitmapTask$2;-><init>(Lcom/lenovo/scg/common/animation/ConvertBitmapTask;[BIII)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public setCallback(Lcom/lenovo/scg/common/animation/ConvertBitmapTask$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/lenovo/scg/common/animation/ConvertBitmapTask$Callback;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->mCallback:Lcom/lenovo/scg/common/animation/ConvertBitmapTask$Callback;

    .line 151
    return-void
.end method

.method public shutdownExecutorService()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 155
    return-void
.end method
