.class final Lcom/lenovo/scg/camera/way/CaptureWayManager$2;
.super Ljava/util/HashMap;
.source "CaptureWayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/CaptureWayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 123
    const-string v0, "0"

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->EMPTY:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "1"

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TOUCH:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v0, "2"

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TIMER:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "3"

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v0, "4"

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->SMILE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "5"

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->WAVE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "error"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method
