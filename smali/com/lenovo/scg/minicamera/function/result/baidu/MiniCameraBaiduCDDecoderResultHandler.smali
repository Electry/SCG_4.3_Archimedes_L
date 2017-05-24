.class public Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;
.super Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;
.source "MiniCameraBaiduCDDecoderResultHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCameraBaiduCDDecoderResultHandler"


# instance fields
.field private mCancelBtnListener:Landroid/view/View$OnClickListener;

.field private mDetailBtnListener:Landroid/view/View$OnClickListener;

.field private mIDLCDResponse:Lcom/baidu/idl/lib/network/entity/IDLCDResponse;

.field private mMusic_url:Ljava/lang/String;

.field private mResultDialog3:Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;-><init>(Landroid/app/Activity;)V

    .line 93
    new-instance v0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler$1;-><init>(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mCancelBtnListener:Landroid/view/View$OnClickListener;

    .line 102
    new-instance v0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler$2;-><init>(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mDetailBtnListener:Landroid/view/View$OnClickListener;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->cancelResultDialog3()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mMusic_url:Ljava/lang/String;

    return-object v0
.end method

.method private cancelResultDialog3()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mResultDialog3:Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mResultDialog3:Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;->dismiss()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mResultDialog3:Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;

    .line 79
    :cond_0
    return-void
.end method

.method private showResultDialog3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->cancelResultDialog3()V

    .line 83
    new-instance v0, Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mResultDialog3:Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mResultDialog3:Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;

    invoke-virtual {v0, p4}, Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;->setImageUrl(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mResultDialog3:Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;->setContentTitle(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mResultDialog3:Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;

    const v1, 0x7f0f0a06

    invoke-virtual {v0, v1, p2}, Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;->setContentName(ILjava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mResultDialog3:Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;

    invoke-virtual {v0, p3}, Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;->setContentTime(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mResultDialog3:Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mDetailBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;->setDetailListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mResultDialog3:Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mCancelBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraCDResultDialog;->setCancelListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method


# virtual methods
.method public handleDecodeSuccess(Ljava/lang/Object;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->handleDecodeSuccess(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->getDecodeResponse()Lcom/baidu/idl/lib/DecodeResponse;

    move-result-object v8

    check-cast v8, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;

    iput-object v8, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mIDLCDResponse:Lcom/baidu/idl/lib/network/entity/IDLCDResponse;

    .line 46
    iget-object v8, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mIDLCDResponse:Lcom/baidu/idl/lib/network/entity/IDLCDResponse;

    iget-object v2, v8, Lcom/baidu/idl/lib/network/entity/IDLCDResponse;->mDataList:Ljava/util/List;

    .line 48
    .local v2, "datalist":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/idl/lib/entity/CDEntity;>;"
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/idl/lib/entity/CDEntity;

    .line 50
    .local v1, "data":Lcom/baidu/idl/lib/entity/CDEntity;
    iget-object v7, v1, Lcom/baidu/idl/lib/entity/CDEntity;->title:Ljava/lang/String;

    .line 51
    .local v7, "title":Ljava/lang/String;
    iget-object v0, v1, Lcom/baidu/idl/lib/entity/CDEntity;->author:Ljava/lang/String;

    .line 52
    .local v0, "author":Ljava/lang/String;
    iget-object v8, v1, Lcom/baidu/idl/lib/entity/CDEntity;->music_url:Ljava/lang/String;

    iput-object v8, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mMusic_url:Ljava/lang/String;

    .line 53
    iget-object v5, v1, Lcom/baidu/idl/lib/entity/CDEntity;->pic_small:Ljava/lang/String;

    .line 54
    .local v5, "pic_small":Ljava/lang/String;
    iget-object v4, v1, Lcom/baidu/idl/lib/entity/CDEntity;->pic_big:Ljava/lang/String;

    .line 55
    .local v4, "pic_big":Ljava/lang/String;
    iget-object v6, v1, Lcom/baidu/idl/lib/entity/CDEntity;->publishtime:Ljava/lang/String;

    .line 57
    .local v6, "time":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mMusic_url:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 58
    .local v3, "isText":Z
    const-string v8, "MiniCameraBaiduCDDecoderResultHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "title = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", author = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isText = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0, v7, v0, v6, v5}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->showResultDialog3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method
