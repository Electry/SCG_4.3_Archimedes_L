.class Lcn/jingling/lib/statistics/StatisticsManager$SyncStatisticsTask;
.super Landroid/os/AsyncTask;
.source "StatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/statistics/StatisticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncStatisticsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/statistics/StatisticsManager;


# direct methods
.method constructor <init>(Lcn/jingling/lib/statistics/StatisticsManager;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcn/jingling/lib/statistics/StatisticsManager$SyncStatisticsTask;->this$0:Lcn/jingling/lib/statistics/StatisticsManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcn/jingling/lib/statistics/StatisticsManager$SyncStatisticsTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method
