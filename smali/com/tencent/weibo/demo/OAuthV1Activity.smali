.class public Lcom/tencent/weibo/demo/OAuthV1Activity;
.super Landroid/app/Activity;
.source "OAuthV1Activity.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private btnAPItest:Landroid/widget/Button;

.field private btnAccess:Landroid/widget/Button;

.field private btnAuthorize:Landroid/widget/Button;

.field private btnRequest:Landroid/widget/Button;

.field private listener:Landroid/view/View$OnClickListener;

.field private oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;

.field private oauthCallback:Ljava/lang/String;

.field private oauthConsumeKey:Ljava/lang/String;

.field private oauthConsumerSecret:Ljava/lang/String;

.field private textAccess:Landroid/widget/TextView;

.field private textRequest:Landroid/widget/TextView;

.field private textVerifier:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "OAuthV1Activity.class"

    sput-object v0, Lcom/tencent/weibo/demo/OAuthV1Activity;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->oauthCallback:Ljava/lang/String;

    .line 33
    const-string v0, "801115505"

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->oauthConsumeKey:Ljava/lang/String;

    .line 35
    const-string v0, "be1dd1410434a9f7d5a2586bab7a6829"

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->oauthConsumerSecret:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/tencent/weibo/demo/OAuthV1Activity$1;

    invoke-direct {v0, p0}, Lcom/tencent/weibo/demo/OAuthV1Activity$1;-><init>(Lcom/tencent/weibo/demo/OAuthV1Activity;)V

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->listener:Landroid/view/View$OnClickListener;

    .line 21
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/tencent/weibo/demo/OAuthV1Activity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/weibo/demo/OAuthV1Activity;)Lcom/tencent/weibo/oauthv1/OAuthV1;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/weibo/demo/OAuthV1Activity;Lcom/tencent/weibo/oauthv1/OAuthV1;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;

    return-void
.end method

.method static synthetic access$3(Lcom/tencent/weibo/demo/OAuthV1Activity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->textRequest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tencent/weibo/demo/OAuthV1Activity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->textAccess:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 134
    if-ne p1, v0, :cond_0

    .line 135
    if-ne p2, v0, :cond_0

    .line 137
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "oauth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tencent/weibo/oauthv1/OAuthV1;

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;

    .line 138
    iget-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->textVerifier:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nverifier:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;

    invoke-virtual {v2}, Lcom/tencent/weibo/oauthv1/OAuthV1;->getOauthVerifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->getQHttpClient()Lcom/tencent/weibo/utils/QHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/weibo/utils/QHttpClient;->shutdownConnection()V

    .line 127
    invoke-virtual {p0}, Lcom/tencent/weibo/demo/OAuthV1Activity;->finish()V

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/tencent/weibo/demo/OAuthV1Activity;->setContentView(I)V

    .line 51
    new-instance v0, Lcom/tencent/weibo/oauthv1/OAuthV1;

    iget-object v1, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->oauthCallback:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/weibo/oauthv1/OAuthV1;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;

    .line 52
    iget-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;

    iget-object v1, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->oauthConsumeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/oauthv1/OAuthV1;->setOauthConsumerKey(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->oAuth:Lcom/tencent/weibo/oauthv1/OAuthV1;

    iget-object v1, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->oauthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/oauthv1/OAuthV1;->setOauthConsumerSecret(Ljava/lang/String;)V

    .line 56
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/tencent/weibo/demo/OAuthV1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->btnRequest:Landroid/widget/Button;

    .line 57
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/tencent/weibo/demo/OAuthV1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->textRequest:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/tencent/weibo/demo/OAuthV1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->btnAuthorize:Landroid/widget/Button;

    .line 59
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/tencent/weibo/demo/OAuthV1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->textVerifier:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/tencent/weibo/demo/OAuthV1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->btnAccess:Landroid/widget/Button;

    .line 61
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/tencent/weibo/demo/OAuthV1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->textAccess:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/tencent/weibo/demo/OAuthV1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->btnAPItest:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->btnRequest:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->btnAuthorize:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->btnAccess:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->btnAPItest:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/weibo/demo/OAuthV1Activity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-static {}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->getQHttpClient()Lcom/tencent/weibo/utils/QHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/weibo/utils/QHttpClient;->shutdownConnection()V

    .line 72
    new-instance v0, Lcom/tencent/weibo/utils/QHttpClient;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QHttpClient;-><init>()V

    invoke-static {v0}, Lcom/tencent/weibo/oauthv1/OAuthV1Client;->setQHttpClient(Lcom/tencent/weibo/utils/QHttpClient;)V

    .line 73
    return-void
.end method
