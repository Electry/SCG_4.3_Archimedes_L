.class Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$8;
.super Ljava/lang/Object;
.source "LCPAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->onAuthConfirm(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
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
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$8;->this$0:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$8;->val$callback:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$8;->this$0:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$8;->val$callback:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->authConfirm(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    .line 276
    return-void
.end method
