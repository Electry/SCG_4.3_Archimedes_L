.class final Lcom/lenovo/scg/camera/water/WaterFactory$1;
.super Ljava/util/HashMap;
.source "WaterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/water/WaterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 29
    sget-object v0, Lcom/lenovo/scg/camera/water/WaterFactory$WATER;->AGENDER:Lcom/lenovo/scg/camera/water/WaterFactory$WATER;

    const-class v1, Lcom/lenovo/scg/camera/water/WaterPanelAgender;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/water/WaterFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/lenovo/scg/camera/water/WaterFactory$WATER;->SMILE:Lcom/lenovo/scg/camera/water/WaterFactory$WATER;

    const-class v1, Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/water/WaterFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/lenovo/scg/camera/water/WaterFactory$WATER;->DOUBLE_FACE:Lcom/lenovo/scg/camera/water/WaterFactory$WATER;

    const-class v1, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/water/WaterFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/lenovo/scg/camera/water/WaterFactory$WATER;->TIME_LOCATION1:Lcom/lenovo/scg/camera/water/WaterFactory$WATER;

    const-class v1, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/water/WaterFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/lenovo/scg/camera/water/WaterFactory$WATER;->TIME_LOCATION2:Lcom/lenovo/scg/camera/water/WaterFactory$WATER;

    const-class v1, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/water/WaterFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method
