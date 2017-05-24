.class public Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;
.super Ljava/lang/Object;
.source "ShareCenterUtil.java"


# static fields
.field private static mInstance:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;


# instance fields
.field private mIsHdShare:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->mInstance:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->mIsHdShare:Z

    .line 6
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;
    .locals 2

    .prologue
    .line 9
    const-class v1, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->mInstance:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->mInstance:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;

    .line 12
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->mInstance:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getIsHdShare()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->mIsHdShare:Z

    return v0
.end method

.method public setHdShare(Z)V
    .locals 0
    .param p1, "isHdShare"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->mIsHdShare:Z

    .line 17
    return-void
.end method
