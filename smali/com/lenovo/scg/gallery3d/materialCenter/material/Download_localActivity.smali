.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;
.super Landroid/app/Activity;
.source "Download_localActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "Download_localActivity"


# instance fields
.field public final MSG_GET_DATA_NET:I

.field public final MSG_GET_TYPE_LIST:I

.field private download_local_Adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

.field private holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

.field private img_local_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;",
            ">;"
        }
    .end annotation
.end field

.field private isOnline:Z

.field private mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

.field private mGetDataThread:Ljava/lang/Thread;

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mTypeName:Ljava/lang/String;

.field private materialTypeList_download:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->materialTypeList_download:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->img_local_List:Ljava/util/List;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mId:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mTypeName:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->MSG_GET_DATA_NET:I

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->MSG_GET_TYPE_LIST:I

    .line 55
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mHandler:Landroid/os/Handler;

    .line 162
    return-void
.end method

.method private GetData()V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mGetDataThread:Ljava/lang/Thread;

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mGetDataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method

.method private Init()V
    .locals 2

    .prologue
    .line 105
    iput-object p0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    .line 106
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    .line 107
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    const v0, 0x7f1000c9

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->downloadGridView:Landroid/widget/GridView;

    .line 108
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    const v0, 0x7f1000ca

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->bottom_lin:Landroid/widget/LinearLayout;

    .line 109
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    const v0, 0x7f1000c8

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->download_edit_btn:Landroid/widget/Button;

    .line 110
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    const v0, 0x7f1000c6

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->download_back_btn:Landroid/widget/ImageView;

    .line 111
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    const v0, 0x7f1000cb

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->download_btn_del:Landroid/widget/ImageButton;

    .line 112
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    const v0, 0x7f1000c7

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->download_title:Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    const v0, 0x7f1000c5

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->linearLayout_top:Landroid/widget/LinearLayout;

    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    const v0, 0x7f1000c4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->rloading:Landroid/widget/RelativeLayout;

    .line 116
    return-void
.end method

.method private InitView()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->download_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->linearLayout_top:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->rloading:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->download_local_Adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->download_local_Adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mTypeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->img_local_List:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->img_local_List:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->materialTypeList_download:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->materialTypeList_download:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static init_local(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mTypeName"    # Ljava/lang/String;
    .param p2, "holder"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;
    .param p3, "download_local_Adapter"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    .prologue
    .line 157
    iget-object v0, p2, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->download_edit_btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v0, p2, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->bottom_lin:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->notifyDataSetChanged()V

    .line 160
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->download_back_btn:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v1, 0x7f040017

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->setContentView(I)V

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, "extras":Landroid/os/Bundle;
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mId:I

    .line 92
    const-string v1, "isOnline"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->isOnline:Z

    .line 93
    const-string v1, "mTypeName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mTypeName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->Init()V

    .line 98
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->InitView()V

    .line 99
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->setListener()V

    .line 100
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->GetData()V

    .line 101
    return-void

    .line 94
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 184
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->setResult(ILandroid/content/Intent;)V

    .line 186
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->finish()V

    .line 188
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
