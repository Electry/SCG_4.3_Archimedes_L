.class public Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;
.super Landroid/app/Activity;
.source "RepostWeiboActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;
    }
.end annotation


# static fields
.field public static final KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "panhui4_RepostWeiboActivity"

.field private static final TYPE_COMMENT:I = 0x2

.field private static final TYPE_REPOST:I = 0x1


# instance fields
.field private mAccessTokenStr:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mIfComment:Z

.field private mName:Ljava/lang/String;

.field private mUid:J

.field private mWbSend_btn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p7}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mIfComment:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mWbSend_btn:Landroid/widget/Button;

    return-object v0
.end method

.method private configueOpenUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extraKey1"    # Ljava/lang/String;
    .param p3, "extraKey2"    # Ljava/lang/String;
    .param p4, "extraValue1"    # J
    .param p6, "extraValue2"    # Ljava/lang/String;
    .param p7, "questMode"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v4, 0x0

    .line 165
    .local v4, "result":Ljava/lang/String;
    new-instance v3, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v3}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 166
    .local v3, "params":Lcom/weibo/sdk/android/WeiboParameters;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mAccessTokenStr:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 167
    const-string v5, "access_token"

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mAccessTokenStr:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 171
    invoke-virtual {v3, p2, p4, p5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 174
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 175
    invoke-virtual {v3, p3, p6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_2
    :try_start_0
    invoke-static {p0, p1, p7, v3}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 195
    :goto_0
    return-object v4

    .line 181
    :catch_0
    move-exception v2

    .line 182
    .local v2, "ewb":Lcom/weibo/sdk/android/WeiboException;
    invoke-virtual {v2}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    .line 183
    const-string/jumbo v5, "panhui4_RepostWeiboActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configueOpenUrl, WeiboException="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    .end local v2    # "ewb":Lcom/weibo/sdk/android/WeiboException;
    :catch_1
    move-exception v1

    .line 186
    .local v1, "eun":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 187
    const-string/jumbo v5, "panhui4_RepostWeiboActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configueOpenUrl, UnknownHostException="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    .end local v1    # "eun":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v0

    .line 190
    .local v0, "eio":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 191
    const-string/jumbo v5, "panhui4_RepostWeiboActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configueOpenUrl, IOException="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getIntentExtras()V
    .locals 6

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 124
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "id"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mUid:J

    .line 125
    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mContent:Ljava/lang/String;

    .line 126
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mName:Ljava/lang/String;

    .line 128
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v0

    .line 129
    .local v0, "accessToken":Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mAccessTokenStr:Ljava/lang/String;

    .line 130
    return-void
.end method

.method private initViews()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 133
    const v5, 0x7f100a2b

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 134
    .local v4, "wb_return":Landroid/widget/Button;
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v5, 0x7f100a2c

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mWbSend_btn:Landroid/widget/Button;

    .line 137
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mWbSend_btn:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v5, 0x7f100a2e

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 140
    .local v1, "check":Landroid/widget/CheckBox;
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    const v5, 0x7f100a2d

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mEditText:Landroid/widget/EditText;

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    move v3, v6

    .line 145
    .local v3, "hasName":Z
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mContent:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    move v2, v6

    .line 146
    .local v2, "hasContent":Z
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_2

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    const-string v5, "//"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_1

    .line 149
    const/16 v5, 0x40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    :cond_1
    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mContent:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_2
    if-eqz v0, :cond_3

    .line 157
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_3
    return-void

    .end local v2    # "hasContent":Z
    .end local v3    # "hasName":Z
    :cond_4
    move v3, v7

    .line 144
    goto :goto_0

    .restart local v3    # "hasName":Z
    :cond_5
    move v2, v7

    .line 145
    goto :goto_1

    .line 154
    .restart local v2    # "hasContent":Z
    :cond_6
    const-string v5, ""

    goto :goto_2
.end method

.method private repost()V
    .locals 8

    .prologue
    const/16 v3, 0x8c

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 94
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 95
    .local v6, "text":Landroid/text/Editable;
    const/4 v5, 0x0

    .line 96
    .local v5, "content":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 97
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 100
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 102
    const v1, 0x7f0f073a

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 120
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mWbSend_btn:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    const v1, 0x7f0f0739

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 113
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mUid:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;JILjava/lang/String;)V

    .line 114
    .local v0, "task":Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;
    new-array v1, v7, [Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity$CommentOrRepostAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 88
    const-string/jumbo v0, "panhui4_RepostWeiboActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckedChanged, isChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->mIfComment:Z

    .line 91
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 75
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->finish()V

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->repost()V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x7f100a2b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->requestWindowFeature(I)Z

    .line 63
    const v0, 0x7f0401aa

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->getIntentExtras()V

    .line 67
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;->initViews()V

    .line 69
    return-void
.end method
