.class final enum Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;
.super Ljava/lang/Enum;
.source "PanoramaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/PanoramaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ModeStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

.field public static final enum CAPTUREING:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

.field public static final enum FINISHED:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

.field public static final enum PRE_CAPTURE:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    const-string v1, "PRE_CAPTURE"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->PRE_CAPTURE:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    new-instance v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    const-string v1, "CAPTUREING"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->CAPTUREING:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    new-instance v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->FINISHED:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->PRE_CAPTURE:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->CAPTUREING:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->FINISHED:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->$VALUES:[Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->$VALUES:[Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    return-object v0
.end method
