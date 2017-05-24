.class public Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;
.super Ljava/lang/Object;
.source "LCPAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;
    }
.end annotation


# static fields
.field public static final CODE_ERROR_CANCEL:I = 0x2

.field public static final CODE_ERROR_CONNECT:I = 0x1

.field public static final CODE_ERROR_NONE:I = 0x4

.field public static final CODE_ERROR_SERVER:I = 0x3

.field public static final CODE_SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "LCPAccount"


# instance fields
.field activity:Landroid/app/Activity;

.field realmId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "contact.cloud.lps.lenovo.com"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->realmId:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->activity:Landroid/app/Activity;

    .line 48
    return-void
.end method


# virtual methods
.method public accountGUI()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->activity:Landroid/app/Activity;

    const-string v1, "contact.cloud.lps.lenovo.com"

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->showAccountPage(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method authConfirm(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 4
    .param p1, "callback"    # Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    .prologue
    .line 162
    const-string v0, "LCPAccount"

    const-string v1, "loginRequired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->realmId:Ljava/lang/String;

    .line 165
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$3;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$3;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    .line 171
    const/4 v3, 0x0

    .line 164
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;Z)V

    .line 172
    return-void
.end method

.method public checkLoginAndAuthThenDo(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->realmId:Ljava/lang/String;

    .line 67
    .local v0, "rid":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$1;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$1;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    .line 71
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$1;->start()V

    .line 72
    return-void
.end method

.method public checkLoginThenDo(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    .prologue
    .line 84
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$2;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$2;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    .line 88
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$2;->start()V

    .line 89
    return-void
.end method

.method checkThenDo(Ljava/lang/Runnable;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 7
    .param p1, "offlineHandler"    # Ljava/lang/Runnable;
    .param p2, "callback"    # Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 211
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStatus(Landroid/content/Context;)I

    move-result v1

    .line 213
    .local v1, "status":I
    if-ne v5, v1, :cond_0

    .line 215
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 233
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->realmId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "lpsust":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_4

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->realmId:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_3

    .line 225
    :cond_2
    const-string v2, "The lenovo ID is online but can\'t get st. Try later or sign out login again."

    invoke-virtual {p0, v5, v2, p2}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->onOffline(ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {p0, v0, p2}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->onOnline(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    goto :goto_0

    .line 230
    :cond_4
    invoke-virtual {p0, v0, p2}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->onOnline(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    goto :goto_0
.end method

.method public isOnline()Z
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStatus(Landroid/content/Context;)I

    move-result v0

    .line 98
    .local v0, "status":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lpust()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->realmId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lpust(Z)Ljava/lang/String;
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->realmId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method onAuthConfirm(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    .prologue
    .line 272
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$8;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$8;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->runOnUI(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method onLsfGetSTFinished(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;ZLjava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;
    .param p2, "success"    # Z
    .param p3, "lpsust"    # Ljava/lang/String;

    .prologue
    .line 177
    const-string v1, "cancel"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const/4 v1, 0x2

    const-string v2, ""

    invoke-virtual {p0, v1, v2, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->onOffline(ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    if-eqz p2, :cond_1

    .line 180
    invoke-virtual {p0, p3, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->onOnline(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getLastErrorString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "errMsg":Ljava/lang/String;
    const/4 v1, 0x3

    if-nez v0, :cond_2

    const-string v0, ""

    .end local v0    # "errMsg":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v1, v0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->onOffline(ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    goto :goto_0
.end method

.method onOffline(ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    .prologue
    .line 263
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$7;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$7;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->runOnUI(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method onOnline(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 1
    .param p1, "lpsust"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    .prologue
    .line 253
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$6;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->runOnUI(Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method

.method runOnUI(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "something"    # Ljava/lang/Runnable;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 284
    :cond_0
    return-void
.end method

.method statusCheckAndConfimThenDo(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    .prologue
    .line 190
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$4;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$4;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->checkThenDo(Ljava/lang/Runnable;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    .line 196
    return-void
.end method

.method statusCheckThenDo(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    .prologue
    .line 199
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$5;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$5;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->checkThenDo(Ljava/lang/Runnable;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    .line 206
    return-void
.end method

.method public userId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
