.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
.super Landroid/app/Activity;
.source "MaterialMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Request;,
        Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;,
        Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;,
        Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;,
        Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Init_LocalRunnable;
    }
.end annotation


# instance fields
.field public final MSG_GET_DATA_LOCAL:I

.field public final MSG_GET_DATA_NET:I

.field public final MSG_GET_TYPE_LOCAL:I

.field public final MSG_GET_TYPE_NET:I

.field public final MSG_LOCALUI_FAIL:I

.field public final MSG_LOCALUI_SUCCESS:I

.field private NetConnectReceiver:Landroid/content/BroadcastReceiver;

.field private final REQUEST_ITEM:I

.field private final color_blue:I

.field private final color_ltgray:I

.field private final id__local_btn:I

.field private final id__main_back:I

.field private final id__online_btn:I

.field private isFirst:Z

.field private isOnline:Z

.field private mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

.field private mAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

.field private mAdapter_local:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

.field private mArrMaterialType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mArrMaterialType_local:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitLocalThread:Ljava/lang/Thread;

.field private mLoading:Landroid/view/View;

.field private mLocalThread:Ljava/lang/Thread;

.field private mNetThread:Ljava/lang/Thread;

.field private main_listView:Landroid/widget/ListView;

.field private main_listView_local:Landroid/widget/ListView;

.field private main_local_btn:Landroid/widget/Button;

.field private main_online_btn:Landroid/widget/Button;

.field private main_title:Landroid/widget/TextView;

.field private materialPreference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;

.field private material_main_back:Landroid/widget/ImageView;

.field private netAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

.field private service:Lcom/lenovo/scg/gallery3d/materialCenter/material/service/GetLocalImgsService;

.field private txt_local:Ljava/lang/CharSequence;

.field private txt_online:Ljava/lang/CharSequence;

.field private final view_gone:I

.field private final view_visible:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->isOnline:Z

    .line 59
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->isFirst:Z

    .line 65
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    .line 67
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter_local:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    .line 77
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/service/impl/GetLocalImgServiceImpl;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/service/impl/GetLocalImgServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->service:Lcom/lenovo/scg/gallery3d/materialCenter/material/service/GetLocalImgsService;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType_local:Ljava/util/ArrayList;

    .line 85
    const v0, 0x7f1000cc

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->id__main_back:I

    .line 87
    const v0, 0x7f1000d1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->id__local_btn:I

    .line 89
    const v0, 0x7f1000d2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->id__online_btn:I

    .line 91
    const v0, -0xffff01

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->color_blue:I

    .line 93
    const v0, -0x333334

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->color_ltgray:I

    .line 95
    const/16 v0, 0x8

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->view_gone:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->view_visible:I

    .line 111
    iput v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->REQUEST_ITEM:I

    .line 117
    iput v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->MSG_GET_DATA_NET:I

    .line 119
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->MSG_GET_TYPE_NET:I

    .line 121
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->MSG_GET_DATA_LOCAL:I

    .line 123
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->MSG_GET_TYPE_LOCAL:I

    .line 125
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->MSG_LOCALUI_SUCCESS:I

    .line 127
    const/4 v0, 0x6

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->MSG_LOCALUI_FAIL:I

    .line 129
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mHandler:Landroid/os/Handler;

    .line 654
    return-void
.end method

.method private Init()V
    .locals 2

    .prologue
    .line 204
    iput-object p0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    .line 205
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f094c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->txt_online:Ljava/lang/CharSequence;

    .line 206
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f094b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->txt_local:Ljava/lang/CharSequence;

    .line 208
    const v0, 0x7f1000ce

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLoading:Landroid/view/View;

    .line 209
    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;

    .line 210
    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView_local:Landroid/widget/ListView;

    .line 211
    const v0, 0x7f1000d1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_local_btn:Landroid/widget/Button;

    .line 212
    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_online_btn:Landroid/widget/Button;

    .line 213
    const v0, 0x7f1000cd

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_title:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f1000cc

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->material_main_back:Landroid/widget/ImageView;

    .line 215
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->materialPreference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;

    .line 216
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->NetConnectReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    return-void
.end method

.method private InitLocal(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 453
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 454
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Init_LocalRunnable;

    invoke-direct {v2, p0, v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Init_LocalRunnable;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;Landroid/content/Intent;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mInitLocalThread:Ljava/lang/Thread;

    .line 455
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mInitLocalThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 456
    return-void
.end method

.method private InitView()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_online_btn:Landroid/widget/Button;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_local_btn:Landroid/widget/Button;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_title:Landroid/widget/TextView;

    const v1, 0x7f0f094c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 260
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLoading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->getNetData()V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->materialPreference:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/service/GetLocalImgsService;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->service:Lcom/lenovo/scg/gallery3d/materialCenter/material/service/GetLocalImgsService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->isOnline:Z

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->netAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->netAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView_local:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter_local:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter_local:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType_local:Ljava/util/ArrayList;

    return-object v0
.end method

.method private clean()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 497
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 498
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 502
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 503
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mNetThread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    .line 504
    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mNetThread:Ljava/lang/Thread;

    .line 506
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLocalThread:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 507
    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLocalThread:Ljava/lang/Thread;

    .line 509
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mInitLocalThread:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    .line 510
    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mInitLocalThread:Ljava/lang/Thread;

    .line 512
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 513
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 514
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 515
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;

    .line 516
    .local v2, "ti":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;
    iget-object v3, v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;->bmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 517
    iget-object v3, v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 514
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    .end local v2    # "ti":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 522
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->NetConnectReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_6

    .line 523
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->NetConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 525
    :cond_6
    return-void
.end method

.method private getNetData()V
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mNetThread:Ljava/lang/Thread;

    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mNetThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 342
    return-void
.end method

.method private setListener()V
    .locals 3

    .prologue
    .line 245
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView_local:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 247
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->material_main_back:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_local_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_online_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 251
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->NetConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    return-void
.end method


# virtual methods
.method protected getLocalData()V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLocalThread:Ljava/lang/Thread;

    .line 373
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLocalThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 374
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 530
    packed-switch p2, :pswitch_data_0

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 532
    :pswitch_0
    if-ne p1, v2, :cond_0

    .line 533
    const-string v1, "isOnline"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 534
    .local v0, "online":Z
    if-eqz v0, :cond_1

    .line 535
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_online_btn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->callOnClick()Z

    goto :goto_0

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_local_btn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->callOnClick()Z

    goto :goto_0

    .line 530
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, -0x333334

    const v4, -0xffff01

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 432
    :goto_0
    return-void

    .line 381
    :sswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->setResult(ILandroid/content/Intent;)V

    .line 382
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->finish()V

    goto :goto_0

    .line 386
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_local_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 387
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_online_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 388
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView_local:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_local_btn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 392
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_online_btn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 393
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->isOnline:Z

    .line 394
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->txt_local:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter_local:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView_local:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView_local:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter_local:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 399
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter_local:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType_local:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;->setmArry(Ljava/util/ArrayList;)V

    .line 400
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter_local:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;->notifyDataSetChanged()V

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->getLocalData()V

    goto :goto_0

    .line 407
    :sswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_local_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 408
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_online_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 409
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView_local:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_online_btn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 413
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_local_btn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 414
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->isOnline:Z

    .line 415
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->txt_online:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->netAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->netAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 420
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->netAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 425
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 427
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->getNetData()V

    goto/16 :goto_0

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000cc -> :sswitch_0
        0x7f1000d1 -> :sswitch_1
        0x7f1000d2 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 196
    const v0, 0x7f040018

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->setContentView(I)V

    .line 197
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->Init()V

    .line 198
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->setListener()V

    .line 199
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->InitView()V

    .line 200
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 492
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 493
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->clean()V

    .line 494
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "which"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v2, 0x8

    .line 437
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 438
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView_local:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 439
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLoading:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->isOnline:Z

    if-eqz v1, :cond_0

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "mId"

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 443
    const-string v2, "mTypeName"

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;->sCaption:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string v1, "isOnline"

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->isOnline:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 449
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-direct {p0, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->InitLocal(I)V

    goto :goto_0
.end method
