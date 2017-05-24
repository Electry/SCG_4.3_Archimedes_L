.class public final Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;
.super Ljava/lang/Object;
.source "LcpConfigHub.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;


# instance fields
.field private context:Landroid/content/Context;

.field private inited:Z

.field private lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->$assertionsDisabled:Z

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->inited:Z

    .line 15
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/LenovoId$LenovoIdImpl;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/LenovoId$LenovoIdImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    .line 16
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->context:Landroid/content/Context;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->inited:Z

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v0, "Integration"

    const-string v1, "MUST invoke init(application) before this LcpConfigHub.getInstance!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    iget-boolean v0, v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->inited:Z

    if-nez v0, :cond_4

    .line 43
    :cond_1
    const-class v1, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    iget-boolean v0, v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->inited:Z

    if-nez v0, :cond_3

    .line 45
    :cond_2
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    .line 43
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_4
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->instance:Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    return-object v0
.end method
