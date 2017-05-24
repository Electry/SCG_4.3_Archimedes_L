.class public Lcn/jingling/lib/camera/WonderCam;
.super Ljava/lang/Object;
.source "WonderCam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/camera/WonderCam$WonderCameraHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WonderCam"

.field public static final TYPE_DELAY:I = 0x3

.field public static final TYPE_EYEBLINK:I = 0x1

.field public static final TYPE_FILLLIGHT:I = 0x0

.field public static final TYPE_TOUCHCAP:I = 0x2

.field private static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcn/jingling/lib/camera/WonderCam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mWonderCamMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcn/jingling/lib/camera/WonderCamCap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcn/jingling/lib/camera/WonderCam;->sMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcn/jingling/lib/camera/WonderCam$WonderCameraHandler;

    invoke-direct {v0, p0}, Lcn/jingling/lib/camera/WonderCam$WonderCameraHandler;-><init>(Lcn/jingling/lib/camera/WonderCam;)V

    iput-object v0, p0, Lcn/jingling/lib/camera/WonderCam;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcn/jingling/lib/camera/WonderCam;->mWonderCamMap:Landroid/util/SparseArray;

    .line 41
    sget-object v1, Lcn/jingling/lib/camera/WonderCam;->sMap:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcn/jingling/lib/camera/WonderCam;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    monitor-exit v1

    .line 44
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static destroy(Landroid/content/Context;)V
    .locals 3
    .param p0, "cx"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v1, Lcn/jingling/lib/camera/WonderCam;->sMap:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcn/jingling/lib/camera/WonderCam;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-exit v1

    .line 63
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static get(Landroid/content/Context;)Lcn/jingling/lib/camera/WonderCam;
    .locals 5
    .param p0, "cx"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, "obj":Lcn/jingling/lib/camera/WonderCam;
    sget-object v3, Lcn/jingling/lib/camera/WonderCam;->sMap:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 49
    :try_start_0
    sget-object v2, Lcn/jingling/lib/camera/WonderCam;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcn/jingling/lib/camera/WonderCam;

    move-object v1, v0

    .line 48
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcn/jingling/lib/camera/WonderCam;

    .end local v1    # "obj":Lcn/jingling/lib/camera/WonderCam;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/jingling/lib/camera/WonderCam;-><init>(Landroid/content/Context;)V

    .line 56
    .restart local v1    # "obj":Lcn/jingling/lib/camera/WonderCam;
    :cond_0
    return-object v1

    .line 48
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getInstanceByType(I)Lcn/jingling/lib/camera/WonderCamCap;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, "instance":Lcn/jingling/lib/camera/WonderCamCap;
    packed-switch p1, :pswitch_data_0

    .line 96
    :goto_0
    :pswitch_0
    return-object v0

    .line 86
    :pswitch_1
    new-instance v0, Lcn/jingling/lib/camera/FillLightCap;

    .end local v0    # "instance":Lcn/jingling/lib/camera/WonderCamCap;
    iget-object v1, p0, Lcn/jingling/lib/camera/WonderCam;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcn/jingling/lib/camera/FillLightCap;-><init>(Landroid/os/Handler;)V

    .line 87
    .restart local v0    # "instance":Lcn/jingling/lib/camera/WonderCamCap;
    goto :goto_0

    .line 89
    :pswitch_2
    new-instance v0, Lcn/jingling/lib/camera/TouchCap;

    .end local v0    # "instance":Lcn/jingling/lib/camera/WonderCamCap;
    iget-object v1, p0, Lcn/jingling/lib/camera/WonderCam;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcn/jingling/lib/camera/TouchCap;-><init>(Landroid/os/Handler;)V

    .line 90
    .restart local v0    # "instance":Lcn/jingling/lib/camera/WonderCamCap;
    goto :goto_0

    .line 92
    :pswitch_3
    new-instance v0, Lcn/jingling/lib/camera/DelayCap;

    .end local v0    # "instance":Lcn/jingling/lib/camera/WonderCamCap;
    iget-object v1, p0, Lcn/jingling/lib/camera/WonderCam;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcn/jingling/lib/camera/DelayCap;-><init>(Landroid/os/Handler;)V

    .restart local v0    # "instance":Lcn/jingling/lib/camera/WonderCamCap;
    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getWonderCameraCap(I)Lcn/jingling/lib/camera/WonderCamCap;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 66
    iget-object v2, p0, Lcn/jingling/lib/camera/WonderCam;->mWonderCamMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 68
    instance-of v2, v1, Lcn/jingling/lib/camera/WonderCamCap;

    if-eqz v2, :cond_0

    .line 69
    check-cast v1, Lcn/jingling/lib/camera/WonderCamCap;

    .line 78
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 71
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcn/jingling/lib/camera/WonderCam;->mWonderCamMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 75
    :cond_1
    invoke-direct {p0, p1}, Lcn/jingling/lib/camera/WonderCam;->getInstanceByType(I)Lcn/jingling/lib/camera/WonderCamCap;

    move-result-object v0

    .line 76
    .local v0, "instance":Lcn/jingling/lib/camera/WonderCamCap;
    iget-object v2, p0, Lcn/jingling/lib/camera/WonderCam;->mWonderCamMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 78
    goto :goto_0
.end method
