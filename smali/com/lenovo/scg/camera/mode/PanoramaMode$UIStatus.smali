.class final enum Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;
.super Ljava/lang/Enum;
.source "PanoramaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/PanoramaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UIStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

.field public static final enum FULLCAMERA:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

.field public static final enum PICTUREFILM:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    const-string v1, "FULLCAMERA"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->FULLCAMERA:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    new-instance v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    const-string v1, "PICTUREFILM"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->PICTUREFILM:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->FULLCAMERA:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->PICTUREFILM:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->$VALUES:[Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->$VALUES:[Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    return-object v0
.end method
