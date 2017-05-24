.class public Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;
.super Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;
.source "MiniCameraBaiduTransDecoderResultHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCameraBaiduCDDecoderResultHandler"


# instance fields
.field private mDetailBtnListener:Landroid/view/View$OnClickListener;

.field private mIDLOCRResponse:Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;-><init>(Landroid/app/Activity;)V

    .line 63
    new-instance v0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler$1;-><init>(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;->mDetailBtnListener:Landroid/view/View$OnClickListener;

    .line 29
    return-void
.end method


# virtual methods
.method public handleDecodeSuccess(Ljava/lang/Object;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->handleDecodeSuccess(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;->getDecodeResponse()Lcom/baidu/idl/lib/DecodeResponse;

    move-result-object v8

    check-cast v8, Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;

    iput-object v8, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;->mIDLOCRResponse:Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;

    .line 37
    iget-object v8, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;->mIDLOCRResponse:Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;

    iget-object v1, v8, Lcom/baidu/idl/lib/network/entity/IDLOCRResponse;->mDataList:Ljava/util/List;

    .line 39
    .local v1, "datalist":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/idl/lib/entity/OCRZone;>;"
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/idl/lib/entity/OCRZone;

    .line 43
    .local v0, "data":Lcom/baidu/idl/lib/entity/OCRZone;
    iget-object v3, v0, Lcom/baidu/idl/lib/entity/OCRZone;->ocrWordList:Ljava/util/List;

    .line 44
    .local v3, "ocrWordLists":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/idl/lib/entity/OCRWord;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/idl/lib/entity/OCRWord;

    .line 47
    .local v4, "ocrword":Lcom/baidu/idl/lib/entity/OCRWord;
    iget-object v7, v4, Lcom/baidu/idl/lib/entity/OCRWord;->word:Ljava/lang/String;

    .line 48
    .local v7, "word":Ljava/lang/String;
    iget-object v6, v4, Lcom/baidu/idl/lib/entity/OCRWord;->trans:Ljava/lang/String;

    .line 50
    .local v6, "trans":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0f0a09

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v8, "  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0f0a0a

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 58
    .end local v4    # "ocrword":Lcom/baidu/idl/lib/entity/OCRWord;
    .end local v6    # "trans":Ljava/lang/String;
    .end local v7    # "word":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0f09f6

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;->mDetailBtnListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, v8, v9, v10, v11}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->showResultDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method
