.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;
.super Ljava/lang/Object;
.source "UpdateStatus.java"


# static fields
.field public static final STATUS_CHECKING_UPDATE:I = 0x2

.field public static final STATUS_DOWNLOADING:I = 0x3

.field public static final STATUS_IDLE:I = 0x1

.field static sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->sInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->mStatus:I

    .line 12
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;
    .locals 3
    .param p0, "package_name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    .line 18
    .local v0, "status":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;
    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    .end local v0    # "status":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;
    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;-><init>()V

    .line 20
    .restart local v0    # "status":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;
    sget-object v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    monitor-exit v2

    return-object v0

    .line 17
    .end local v0    # "status":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public canCheckingUpdate()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 32
    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->mStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canDownloadUpdate()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 36
    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->mStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->mStatus:I

    return v0
.end method

.method public markCheckingUpdate()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->mStatus:I

    .line 41
    return-void
.end method

.method public markCheckingUpdateFinished()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->mStatus:I

    .line 45
    return-void
.end method

.method public markDownloadingUpdate()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->mStatus:I

    .line 49
    return-void
.end method

.method public markDownloadingUpdateFinished()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->mStatus:I

    .line 53
    return-void
.end method
