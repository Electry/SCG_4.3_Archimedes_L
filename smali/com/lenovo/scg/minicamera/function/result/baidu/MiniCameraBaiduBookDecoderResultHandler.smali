.class public Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;
.super Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;
.source "MiniCameraBaiduBookDecoderResultHandler.java"


# static fields
.field private static final PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MiniCameraBaiduDecoderResultHandler"


# instance fields
.field private mCancelBtnListener:Landroid/view/View$OnClickListener;

.field private mDetailBtnListener:Landroid/view/View$OnClickListener;

.field private mHtml:Ljava/lang/String;

.field private mIDLBookResponse:Lcom/baidu/idl/lib/network/entity/IDLBookResponse;

.field private mResultDialog2:Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;-><init>(Landroid/app/Activity;)V

    .line 86
    new-instance v0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$1;-><init>(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mCancelBtnListener:Landroid/view/View$OnClickListener;

    .line 95
    new-instance v0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$2;-><init>(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mDetailBtnListener:Landroid/view/View$OnClickListener;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->cancelResultDialog2()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mHtml:Ljava/lang/String;

    return-object v0
.end method

.method private cancelResultDialog2()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mResultDialog2:Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mResultDialog2:Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->dismiss()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mResultDialog2:Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;

    .line 74
    :cond_0
    return-void
.end method

.method private showResultDialog2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->cancelResultDialog2()V

    .line 78
    new-instance v0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mResultDialog2:Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mResultDialog2:Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;

    invoke-virtual {v0, p3}, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->setImageUrl(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mResultDialog2:Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->setContentTitle(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mResultDialog2:Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;

    const v1, 0x7f0f0a03

    invoke-virtual {v0, v1, p2}, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->setContentName(ILjava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mResultDialog2:Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mDetailBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->setDetailListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mResultDialog2:Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mCancelBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->setCancelListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method


# virtual methods
.method public handleDecodeSuccess(Ljava/lang/Object;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->handleDecodeSuccess(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->getDecodeResponse()Lcom/baidu/idl/lib/DecodeResponse;

    move-result-object v6

    check-cast v6, Lcom/baidu/idl/lib/network/entity/IDLBookResponse;

    iput-object v6, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mIDLBookResponse:Lcom/baidu/idl/lib/network/entity/IDLBookResponse;

    .line 48
    iget-object v6, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mIDLBookResponse:Lcom/baidu/idl/lib/network/entity/IDLBookResponse;

    iget-object v2, v6, Lcom/baidu/idl/lib/network/entity/IDLBookResponse;->mDataList:Ljava/util/List;

    .line 49
    .local v2, "datalist":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/idl/lib/entity/BookEntity;>;"
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/idl/lib/entity/BookEntity;

    .line 51
    .local v1, "data":Lcom/baidu/idl/lib/entity/BookEntity;
    iget-object v0, v1, Lcom/baidu/idl/lib/entity/BookEntity;->author:Ljava/lang/String;

    .line 52
    .local v0, "author":Ljava/lang/String;
    iget-object v3, v1, Lcom/baidu/idl/lib/entity/BookEntity;->image:Ljava/lang/String;

    .line 53
    .local v3, "image":Ljava/lang/String;
    iget-object v6, v1, Lcom/baidu/idl/lib/entity/BookEntity;->html:Ljava/lang/String;

    iput-object v6, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mHtml:Ljava/lang/String;

    .line 54
    iget-object v5, v1, Lcom/baidu/idl/lib/entity/BookEntity;->title:Ljava/lang/String;

    .line 56
    .local v5, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mHtml:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 57
    .local v4, "isText":Z
    const-string v6, "MiniCameraBaiduDecoderResultHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "author = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", image = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isText = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0, v5, v0, v3}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->showResultDialog2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
