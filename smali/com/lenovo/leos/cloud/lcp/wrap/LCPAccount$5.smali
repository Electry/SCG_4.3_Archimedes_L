.class Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$5;
.super Ljava/lang/Object;
.source "LCPAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->statusCheckThenDo(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

.field private final synthetic val$callback:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$5;->this$0:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$5;->val$callback:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 202
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$5;->this$0:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getLastErrorString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "errMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$5;->this$0:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    const/4 v2, 0x3

    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "errMsg":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$5;->val$callback:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    invoke-virtual {v1, v2, v0, v3}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->onOffline(ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    .line 204
    return-void
.end method
