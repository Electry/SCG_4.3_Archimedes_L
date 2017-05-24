.class public Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;
.super Landroid/app/Activity;
.source "OAuthV2ImplicitGrantActivity.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientSecret:Ljava/lang/String;

.field private oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;

.field private redirectUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "tencent"

    sput-object v0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const-string v0, "http://liuzw.github.com"

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->redirectUri:Ljava/lang/String;

    .line 32
    const-string v0, "801278008"

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->clientId:Ljava/lang/String;

    .line 34
    const-string v0, "e8cd6ab05353d024ef762aa4a15e8ad2"

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->clientSecret:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;)Lcom/tencent/weibo/oauthv2/OAuthV2;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x2

    .line 86
    if-ne p1, v0, :cond_0

    .line 87
    if-ne p2, v0, :cond_0

    .line 88
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "oauth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tencent/weibo/oauthv2/OAuthV2;

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;

    .line 89
    iget-object v0, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;

    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u767b\u9646\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    sget-object v0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "oAuth = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->finish()V

    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->setContentView(I)V

    .line 43
    new-instance v3, Lcom/tencent/weibo/oauthv2/OAuthV2;

    iget-object v4, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->redirectUri:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/tencent/weibo/oauthv2/OAuthV2;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;

    .line 44
    iget-object v3, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;

    iget-object v4, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->clientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setClientId(Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;

    iget-object v4, p0, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->clientSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setClientSecret(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/tencent/weibo/oauthv2/OAuthV2Client;->getQHttpClient()Lcom/tencent/weibo/utils/QHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/weibo/utils/QHttpClient;->shutdownConnection()V

    .line 50
    new-instance v2, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity$1;

    invoke-direct {v2, p0}, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity$1;-><init>(Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;)V

    .line 71
    .local v2, "listener":Landroid/view/View$OnClickListener;
    const v3, 0x7f050009

    invoke-virtual {p0, v3}, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 72
    .local v1, "btnImplicitGrant":Landroid/widget/Button;
    const v3, 0x7f05000a

    invoke-virtual {p0, v3}, Lcom/tencent/weibo/demo/OAuthV2ImplicitGrantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 73
    .local v0, "btnAPItest3":Landroid/widget/Button;
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method
