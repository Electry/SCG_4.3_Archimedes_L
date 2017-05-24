.class public Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;
.super Landroid/app/Activity;
.source "WeiBoAPIV1Activity.java"


# instance fields
.field private btnGetUsrInfo:Landroid/widget/Button;

.field private btnSendMsg:Landroid/widget/Button;

.field private btnSendMsgWithPic:Landroid/widget/Button;

.field private oAuthV1:Lcom/tencent/weibo/oauthv1/OAuthV1;

.field private textResponse:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;)Lcom/tencent/weibo/oauthv1/OAuthV1;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->oAuthV1:Lcom/tencent/weibo/oauthv1/OAuthV1;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->textResponse:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->finish()V

    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    const v2, 0x7f05000b

    invoke-virtual {p0, v2}, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->btnGetUsrInfo:Landroid/widget/Button;

    .line 41
    const v2, 0x7f05000c

    invoke-virtual {p0, v2}, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->btnSendMsg:Landroid/widget/Button;

    .line 42
    const v2, 0x7f05000d

    invoke-virtual {p0, v2}, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->btnSendMsgWithPic:Landroid/widget/Button;

    .line 44
    const v2, 0x7f05000e

    invoke-virtual {p0, v2}, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->textResponse:Landroid/widget/TextView;

    .line 46
    new-instance v1, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;

    invoke-direct {v1, p0}, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;-><init>(Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;)V

    .line 104
    .local v1, "listener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->btnGetUsrInfo:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->btnSendMsg:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->btnSendMsgWithPic:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "oauth"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/tencent/weibo/oauthv1/OAuthV1;

    iput-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->oAuthV1:Lcom/tencent/weibo/oauthv1/OAuthV1;

    .line 110
    return-void
.end method
