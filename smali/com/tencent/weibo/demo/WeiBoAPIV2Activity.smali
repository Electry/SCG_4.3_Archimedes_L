.class public Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;
.super Landroid/app/Activity;
.source "WeiBoAPIV2Activity.java"


# instance fields
.field private btnGetUsrInfo:Landroid/widget/Button;

.field private btnSendMsg:Landroid/widget/Button;

.field private btnSendMsgWithPic:Landroid/widget/Button;

.field private oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

.field private textResponse:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;)Lcom/tencent/weibo/oauthv2/OAuthV2;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->textResponse:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->finish()V

    .line 147
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const v2, 0x7f05000b

    invoke-virtual {p0, v2}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->btnGetUsrInfo:Landroid/widget/Button;

    .line 44
    const v2, 0x7f05000c

    invoke-virtual {p0, v2}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->btnSendMsg:Landroid/widget/Button;

    .line 45
    const v2, 0x7f05000d

    invoke-virtual {p0, v2}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->btnSendMsgWithPic:Landroid/widget/Button;

    .line 47
    const v2, 0x7f05000e

    invoke-virtual {p0, v2}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->textResponse:Landroid/widget/TextView;

    .line 49
    new-instance v1, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;

    invoke-direct {v1, p0}, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity$1;-><init>(Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;)V

    .line 137
    .local v1, "listener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->btnGetUsrInfo:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->btnSendMsg:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->btnSendMsgWithPic:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "oauth"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/tencent/weibo/oauthv2/OAuthV2;

    iput-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV2Activity;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    .line 143
    return-void
.end method
