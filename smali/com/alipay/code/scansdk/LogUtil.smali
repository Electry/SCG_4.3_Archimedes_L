.class public Lcom/alipay/code/scansdk/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static sLogEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/code/scansdk/LogUtil;->sLogEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-boolean v0, Lcom/alipay/code/scansdk/LogUtil;->sLogEnable:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 14
    sget-boolean v0, Lcom/alipay/code/scansdk/LogUtil;->sLogEnable:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-boolean v0, Lcom/alipay/code/scansdk/LogUtil;->sLogEnable:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method

.method public static declared-synchronized init(Z)V
    .locals 2
    .param p0, "isEnable"    # Z

    .prologue
    .line 10
    const-class v0, Lcom/alipay/code/scansdk/LogUtil;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/alipay/code/scansdk/LogUtil;->sLogEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    return-void

    .line 10
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
