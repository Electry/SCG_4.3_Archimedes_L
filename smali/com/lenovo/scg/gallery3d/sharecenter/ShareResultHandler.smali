.class public Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;
.super Landroid/os/Handler;
.source "ShareResultHandler.java"


# static fields
.field public static final MSG_SHOW_SEND_PROGRESS:I = 0x0

.field public static final MSG_SHOW_SEND_RESULTS:I = 0x2


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mRetryListener:Lcom/lenovo/scg/gallery3d/sharecenter/RetryListener;

.field private mShareResultMap:Ljava/util/HashMap;

.field private sendProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mRetryListener:Lcom/lenovo/scg/gallery3d/sharecenter/RetryListener;

    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mContext:Landroid/app/Activity;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->retry()V

    return-void
.end method

.method private retry()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mRetryListener:Lcom/lenovo/scg/gallery3d/sharecenter/RetryListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mRetryListener:Lcom/lenovo/scg/gallery3d/sharecenter/RetryListener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/RetryListener;->retry()V

    .line 166
    :cond_0
    return-void
.end method

.method private showResults()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x0

    const/4 v12, -0x2

    const/high16 v11, 0x41b00000    # 22.0f

    .line 88
    const-string v9, "ShareCenter"

    const-string/jumbo v10, "showResults"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x1

    .line 91
    .local v1, "isSinaSuccess":Z
    const/4 v2, 0x1

    .line 92
    .local v2, "isTencentSuccess":Z
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mContext:Landroid/app/Activity;

    invoke-direct {v4, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    .local v4, "resultDialog":Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0f0886

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 95
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, "contentView":Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 98
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v9, 0xc

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 100
    new-instance v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mContext:Landroid/app/Activity;

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 101
    .local v5, "sinaResultTextView":Landroid/widget/TextView;
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    new-instance v7, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mContext:Landroid/app/Activity;

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 103
    .local v7, "tencentResultTextView":Landroid/widget/TextView;
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 104
    invoke-virtual {v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-virtual {v0, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mShareResultMap:Ljava/util/HashMap;

    sget-object v10, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 109
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mShareResultMap:Ljava/util/HashMap;

    sget-object v10, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;

    .line 110
    .local v6, "sinaShareResultObject":Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;
    iget-boolean v1, v6, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->isSuccess:Z

    .line 111
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mContext:Landroid/app/Activity;

    const v11, 0x7f0f07d3

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->resultMsg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    .end local v6    # "sinaShareResultObject":Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;
    :cond_0
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mShareResultMap:Ljava/util/HashMap;

    sget-object v10, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 115
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mShareResultMap:Ljava/util/HashMap;

    sget-object v10, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;

    .line 116
    .local v8, "tencentShareResultObject":Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;
    iget-boolean v2, v8, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->isSuccess:Z

    .line 117
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mContext:Landroid/app/Activity;

    const v11, 0x7f0f07d4

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->resultMsg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    .end local v8    # "tencentShareResultObject":Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;
    :cond_1
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 124
    const v9, 0x7f0f0887

    new-instance v10, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler$1;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler$1;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 147
    :goto_0
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mContext:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_2

    .line 155
    :cond_2
    return-void

    .line 135
    :cond_3
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 136
    const v9, 0x7f0f0888

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    const v9, 0x7f0f0889

    new-instance v10, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler$2;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler$2;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showSendProgress()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->sendProgress:Landroid/app/ProgressDialog;

    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->sendProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->sendProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mContext:Landroid/app/Activity;

    const v2, 0x7f0f07e3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->sendProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->sendProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->sendProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->sendProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 74
    return-void
.end method

.method private stopSendProgress()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->sendProgress:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    :pswitch_0
    return-void

    .line 57
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->showSendProgress()V

    goto :goto_0

    .line 60
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->stopSendProgress()V

    .line 61
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->showResults()V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "inContext"    # Landroid/content/Context;

    .prologue
    .line 49
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "inContext":Landroid/content/Context;
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mContext:Landroid/app/Activity;

    .line 50
    return-void
.end method

.method public setRetryListener(Lcom/lenovo/scg/gallery3d/sharecenter/RetryListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/sharecenter/RetryListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mRetryListener:Lcom/lenovo/scg/gallery3d/sharecenter/RetryListener;

    .line 46
    return-void
.end method

.method public setShareResultMap(Ljava/util/HashMap;)V
    .locals 0
    .param p1, "shareResultMap"    # Ljava/util/HashMap;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->mShareResultMap:Ljava/util/HashMap;

    .line 85
    return-void
.end method
