.class Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper$1;
.super Ljava/lang/Object;
.source "Reaper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->loadUsername()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper$1;->this$0:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper$1;->this$0:Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    # invokes: Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->doLoadUsername()V
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->access$0(Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;)V

    .line 57
    return-void
.end method
