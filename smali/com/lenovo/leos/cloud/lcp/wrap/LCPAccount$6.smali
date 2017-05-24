.class Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$6;
.super Ljava/lang/Object;
.source "LCPAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->onOnline(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

.field private final synthetic val$callback:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

.field private final synthetic val$lpsust:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$6;->this$0:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$6;->val$callback:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$6;->val$lpsust:Ljava/lang/String;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$6;->val$callback:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$6;->val$lpsust:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;->onSuccess(Ljava/lang/String;)V

    .line 257
    return-void
.end method
