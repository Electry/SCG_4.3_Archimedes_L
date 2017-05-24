.class public Lcom/lenovo/scg/camera/water/WaterFactory;
.super Ljava/lang/Object;
.source "WaterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/water/WaterFactory$WATER;
    }
.end annotation


# static fields
.field private static mMapWater2Class:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/water/WaterFactory$WATER;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lenovo/scg/camera/water/WaterPanel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/lenovo/scg/camera/water/WaterFactory$1;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/water/WaterFactory$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/water/WaterFactory;->mMapWater2Class:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static createWaterPanel(Lcom/lenovo/scg/camera/water/WaterFactory$WATER;Ljava/lang/Object;)Lcom/lenovo/scg/camera/water/WaterPanel;
    .locals 6
    .param p0, "water"    # Lcom/lenovo/scg/camera/water/WaterFactory$WATER;
    .param p1, "para"    # Ljava/lang/Object;

    .prologue
    .line 39
    const/4 v3, 0x0

    .line 40
    .local v3, "waterpanel":Lcom/lenovo/scg/camera/water/WaterPanel;
    sget-object v4, Lcom/lenovo/scg/camera/water/WaterFactory;->mMapWater2Class:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 41
    .local v1, "KClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/scg/camera/water/WaterPanel;>;"
    if-nez v1, :cond_0

    .line 42
    const/4 v4, 0x0

    .line 50
    :goto_0
    return-object v4

    .line 45
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/lenovo/scg/camera/water/WaterPanel;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v4, v3

    .line 50
    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "WaterPanel.createWater :"

    invoke-static {v4, v2}, Lcom/lenovo/scg/loger/SCGError;->E(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 48
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfFalse(ZLjava/lang/String;)V

    goto :goto_1
.end method
