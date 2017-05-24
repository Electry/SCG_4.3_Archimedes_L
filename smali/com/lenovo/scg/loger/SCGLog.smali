.class public Lcom/lenovo/scg/loger/SCGLog;
.super Ljava/lang/Object;
.source "SCGLog.java"


# static fields
.field public static final ASSERT_FATAL_EXCEPTION:Ljava/lang/String; = "ASSERT FATAL EXCEPTION"

.field public static final DEBUGING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/loger/SCGLog;->DEBUGING:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogI(ZLjava/lang/String;)V
    .locals 1
    .param p0, "isDebug"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 16
    if-eqz p0, :cond_0

    .line 17
    const-string/jumbo v0, "{wangdy} "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    return-void
.end method

.method public static PrintStackTraces(ZLjava/lang/String;)V
    .locals 8
    .param p0, "isDebug"    # Z
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string/jumbo v6, "stack start ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v5

    .line 35
    .local v5, "ts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    .line 36
    .local v4, "ste":[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 37
    .local v3, "s":Ljava/lang/StackTraceElement;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39
    .end local v3    # "s":Ljava/lang/StackTraceElement;
    :cond_1
    const-string/jumbo v6, "stack end------------------------------------------------------------------"

    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
