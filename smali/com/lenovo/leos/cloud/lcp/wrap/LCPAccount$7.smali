.class Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$7;
.super Ljava/lang/Object;
.source "LCPAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->onOffline(ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

.field private final synthetic val$callback:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

.field private final synthetic val$error:I

.field private final synthetic val$errorMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$7;->this$0:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$7;->val$callback:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    iput p3, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$7;->val$error:I

    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$7;->val$errorMsg:Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$7;->val$callback:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$7;->val$error:I

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$7;->val$errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;->onFail(ILjava/lang/String;)V

    .line 267
    return-void
.end method
