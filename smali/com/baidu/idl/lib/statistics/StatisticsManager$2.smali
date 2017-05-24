.class Lcom/baidu/idl/lib/statistics/StatisticsManager$2;
.super Ljava/lang/Object;
.source "StatisticsManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/idl/lib/statistics/StatisticsManager;->postZipFile(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/idl/lib/statistics/StatisticsManager;


# direct methods
.method constructor <init>(Lcom/baidu/idl/lib/statistics/StatisticsManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/idl/lib/statistics/StatisticsManager$2;->this$0:Lcom/baidu/idl/lib/statistics/StatisticsManager;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, ".zip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
