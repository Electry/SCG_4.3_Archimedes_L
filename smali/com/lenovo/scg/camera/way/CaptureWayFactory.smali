.class public Lcom/lenovo/scg/camera/way/CaptureWayFactory;
.super Ljava/lang/Object;
.source "CaptureWayFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    }
.end annotation


# static fields
.field public static mMapWay2Class:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lenovo/scg/camera/way/CaptureWay;",
            ">;>;"
        }
    .end annotation
.end field

.field public static mMapWay2PrompName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$1;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory;->mMapWay2Class:Ljava/util/HashMap;

    .line 40
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$2;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$2;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory;->mMapWay2PrompName:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static createWay(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;Ljava/lang/Object;)Lcom/lenovo/scg/camera/way/CaptureWay;
    .locals 6
    .param p0, "way"    # Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    .param p1, "para"    # Ljava/lang/Object;

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, "currentWay":Lcom/lenovo/scg/camera/way/CaptureWay;
    sget-object v4, Lcom/lenovo/scg/camera/way/CaptureWayFactory;->mMapWay2Class:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 66
    .local v1, "KClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/scg/camera/way/CaptureWay;>;"
    if-nez v1, :cond_0

    .line 67
    const/4 v4, 0x0

    .line 76
    :goto_0
    return-object v4

    .line 70
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/lenovo/scg/camera/way/CaptureWay;

    move-object v2, v0

    .line 71
    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/way/CaptureWay;->setWayPara(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v4, v2

    .line 76
    goto :goto_0

    .line 72
    :catch_0
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "WayFactory.createWay :"

    invoke-static {v4, v3}, Lcom/lenovo/scg/loger/SCGError;->E(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 74
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfFalse(ZLjava/lang/String;)V

    goto :goto_1
.end method
