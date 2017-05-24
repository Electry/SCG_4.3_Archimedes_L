.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;
.super Landroid/app/Activity;
.source "DownloadActivity.java"


# instance fields
.field public final MSG_GET_DATA_NET:I

.field public final MSG_GET_TYPE_LIST:I

.field private adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

.field private imageFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

.field private mBottomLin:Landroid/view/View;

.field private mBtnBack:Landroid/widget/ImageView;

.field private mBtnDel:Landroid/widget/ImageButton;

.field private mBtnEdit:Landroid/widget/Button;

.field private mGetDataThread:Ljava/lang/Thread;

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mMainLin:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private mTypeName:Ljava/lang/String;

.field private materialImagePerference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;

.field private rloading:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->imageFileList:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mId:I

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mTypeName:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->MSG_GET_DATA_NET:I

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->MSG_GET_TYPE_LIST:I

    .line 78
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private GetData()V
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mGetDataThread:Ljava/lang/Thread;

    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mGetDataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 260
    return-void
.end method

.method private Init()V
    .locals 3

    .prologue
    .line 142
    iput-object p0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    .line 143
    const v0, 0x7f1000c5

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mMainLin:Landroid/view/View;

    .line 144
    const v0, 0x7f1000ca

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mBottomLin:Landroid/view/View;

    .line 145
    const v0, 0x7f1000c9

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mGridView:Landroid/widget/GridView;

    .line 146
    const v0, 0x7f1000c8

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mBtnEdit:Landroid/widget/Button;

    .line 147
    const v0, 0x7f1000c6

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mBtnBack:Landroid/widget/ImageView;

    .line 148
    const v0, 0x7f1000cb

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mBtnDel:Landroid/widget/ImageButton;

    .line 149
    const v0, 0x7f1000c7

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mTitle:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f1000c4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->rloading:Landroid/view/View;

    .line 151
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mId:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->materialImagePerference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;

    .line 152
    return-void
.end method

.method private InitView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mBtnEdit:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mBottomLin:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->rloading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mMainLin:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->imageFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mMainLin:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->rloading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->materialImagePerference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialImagePerference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    .prologue
    .line 36
    iget v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mId:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mTypeName:Ljava/lang/String;

    return-object v0
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mBtnBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v1, 0x7f040017

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->setContentView(I)V

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "mId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mId:I

    .line 129
    const-string v1, "mTypeName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mTypeName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->Init()V

    .line 135
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->setListener()V

    .line 136
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->InitView()V

    .line 137
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->GetData()V

    .line 138
    return-void

    .line 130
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 275
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mGetDataThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 276
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mGetDataThread:Ljava/lang/Thread;

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->getImageLoader()Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    move-result-object v0

    .line 280
    .local v0, "imageLoader":Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;
    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;->clearCache()V

    .line 284
    .end local v0    # "imageLoader":Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 265
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->setResult(ILandroid/content/Intent;)V

    .line 267
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->finish()V

    .line 269
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
