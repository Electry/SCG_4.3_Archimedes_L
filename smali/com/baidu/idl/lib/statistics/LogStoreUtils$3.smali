.class Lcom/baidu/idl/lib/statistics/LogStoreUtils$3;
.super Ljava/lang/Object;
.source "LogStoreUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/idl/lib/statistics/LogStoreUtils;->storeDataCommitOnce(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$label:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/idl/lib/statistics/LogStoreUtils$3;->val$label:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/baidu/idl/lib/statistics/LogStoreUtils$3;->val$label:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->storeData(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/baidu/idl/lib/statistics/StatisticsManager;->getInstance()Lcom/baidu/idl/lib/statistics/StatisticsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/idl/lib/statistics/StatisticsManager;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
