.class Lcn/jingling/lib/statistics/LogStoreUtils$2;
.super Ljava/lang/Object;
.source "LogStoreUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jingling/lib/statistics/LogStoreUtils;->dataCommit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    :try_start_0
    invoke-static {}, Lcn/jingling/lib/statistics/StatisticsManager;->getInstance()Lcn/jingling/lib/statistics/StatisticsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jingling/lib/statistics/StatisticsManager;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
