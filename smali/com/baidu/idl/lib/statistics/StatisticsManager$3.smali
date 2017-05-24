.class Lcom/baidu/idl/lib/statistics/StatisticsManager$3;
.super Ljava/lang/Object;
.source "StatisticsManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/idl/lib/statistics/StatisticsManager;->deleteOutFile(Ljava/io/File;)V
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
    iput-object p1, p0, Lcom/baidu/idl/lib/statistics/StatisticsManager$3;->this$0:Lcom/baidu/idl/lib/statistics/StatisticsManager;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p0, p2}, Lcom/baidu/idl/lib/statistics/StatisticsManager$3;->isEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/baidu/idl/lib/statistics/StatisticsManager$3;->isOutDayFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 199
    const-string v0, ".log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOutDayFile(Ljava/lang/String;)Z
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 204
    :try_start_0
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 205
    .local v1, "dateStr":Ljava/lang/String;
    sget-object v4, Lcom/baidu/idl/lib/statistics/LogFile;->SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 207
    .local v0, "createFileDate":Ljava/util/Date;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 208
    const v6, 0x5265c00

    invoke-static {}, Lcom/baidu/idl/lib/statistics/Config;->getStatiticsDay()I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    mul-int/2addr v6, v7

    int-to-long v6, v6

    .line 207
    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 212
    .end local v0    # "createFileDate":Ljava/util/Date;
    .end local v1    # "dateStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 209
    :catch_0
    move-exception v2

    .line 210
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method
