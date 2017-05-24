.class Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$3;
.super Ljava/lang/Object;
.source "LCPAccount.java"

# interfaces
.implements Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->authConfirm(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
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
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$3;->this$0:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$3;->val$callback:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ZLjava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "lpsust"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string v0, "LCPAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStData onFinished, getStData ok = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$3;->this$0:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$3;->val$callback:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    invoke-virtual {v0, v1, p1, p2}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->onLsfGetSTFinished(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;ZLjava/lang/String;)V

    .line 170
    return-void
.end method
