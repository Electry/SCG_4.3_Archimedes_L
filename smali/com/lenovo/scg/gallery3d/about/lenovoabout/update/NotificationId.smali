.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;
.super Ljava/lang/Object;
.source "NotificationId.java"


# static fields
.field private static sInstance:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;


# instance fields
.field mNextId:I

.field mPackageNameToIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x1e78

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->mNextId:I

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->mPackageNameToIdMap:Ljava/util/HashMap;

    .line 6
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;
    .locals 2

    .prologue
    .line 11
    const-class v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->sInstance:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->sInstance:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;

    .line 14
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->sInstance:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getDownloadProgressNotificationId(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->mPackageNameToIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 32
    .local v0, "new_version_id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 33
    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->mNextId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->mPackageNameToIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->mNextId:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->mNextId:I

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public getNewVersionNotificationId(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->mPackageNameToIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 23
    .local v0, "new_version_id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 24
    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->mNextId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->mPackageNameToIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->mNextId:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->mNextId:I

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method
