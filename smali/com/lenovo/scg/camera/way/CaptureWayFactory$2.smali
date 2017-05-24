.class final Lcom/lenovo/scg/camera/way/CaptureWayFactory$2;
.super Ljava/util/HashMap;
.source "CaptureWayFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/CaptureWayFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 42
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->EMPTY:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->SMILE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string/jumbo v1, "\u7b11\u8138"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TIMER:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string/jumbo v1, "\u5b9a\u65f6"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TOUCH:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string/jumbo v1, "\u89e6\u6478"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string/jumbo v1, "\u8bed\u97f3"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VSIGN:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string v1, "V\u5b57\u624b"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->WAVE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string/jumbo v1, "\u6325\u624b"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->BLINK:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string/jumbo v1, "\u7728\u773c"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->SMILE_AS:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string/jumbo v1, "\u7b11\u8138AS"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method
